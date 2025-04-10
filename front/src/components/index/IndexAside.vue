<template>
  <el-aside class="index-aside" width="200px">
    <div class="index-aside-inner">
      <el-menu default-active="1">
        <el-menu-item @click="menuHandler('/')" index="1">
          <!-- <i class="el-icon-s-home"></i> -->
          首页
        </el-menu-item>
        <el-menu-item @click="menuHandler('/pages/map/map.html')" index="2">
          <i class="el-icon-location"></i>
          地图规划
        </el-menu-item>
        <sub-menu
          v-for="menu in menuList"
          :key="menu.menuId"
          :menu="menu"
          :dynamicMenuRoutes="dynamicMenuRoutes"
        ></sub-menu>
      </el-menu>
    </div>
  </el-aside>
</template>
<script>
import SubMenu from "@/components/index/IndexAsideSub";
export default {
  data() {
    return {
      menuList: [],
      dynamicMenuRoutes: []
    };
  },
  components: {
    SubMenu
  },
  mounted() {
    this.menuList = JSON.parse(sessionStorage.getItem("menuList") || "[]");
    this.dynamicMenuRoutes = JSON.parse(
      sessionStorage.getItem("dynamicMenuRoutes") || "[]"
    );

    // 输出 menuList 到控制台
    console.log("menuList:", this.menuList);
  },
  methods: {
    menuHandler(path) {
      this.$router.push({ path: path });
    }
  }
};
</script>
<style lang="scss" scoped>
.index-aside {
  margin-top: 80px;
  overflow: hidden;
  .index-aside-inner {
    width: 217px;
    height: 100%;
    overflow-y: scroll;
  }
}
</style>

