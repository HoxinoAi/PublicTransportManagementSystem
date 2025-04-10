<template>
  <div class="main-content">
    <!-- 列表页 -->
    <div v-if="showFlag">
      <el-table class="tables" :data="dataList" v-loading="dataListLoading">
        <el-table-column label="索引" type="index" width="50" />
        <el-table-column prop="zhanghao" label="账号" />
        <el-table-column prop="luxianbianhao" label="路线编号" />
        <el-table-column label="操作">
          <template slot-scope="scope">
            <el-button type="danger" size="mini" @click="cancelHandler(scope.row)">取消</el-button>
          </template>
        </el-table-column>
      </el-table>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      dataList: [],
      dataListLoading: false,
      showFlag: true,
    };
  },
  created() {
    this.getDataList();
  },
  methods: {
    // 获取数据列表
    getDataList() {
      this.dataListLoading = true;
      const zhanghao = this.$storage.get("adminName"); // 获取当前登录用户的账号
      if (!zhanghao) {
        this.$message.error("请先登录");
        return;
      }

      // 发送 GET 请求到 /api/maipiao
      this.$http({
        url: "/api/maipiao",
        method: "get",
        params: { zhanghao: zhanghao }
      }).then(({ data }) => {
        if (data && data.code === 0) {
          this.dataList = data.data;
        } else {
          this.dataList = [];
          this.$message.error(data.msg || "获取数据失败");
        }
        this.dataListLoading = false;
      }).catch(error => {
        this.$message.error("请求失败，请稍后重试");
        this.dataListLoading = false;
      });
    },
    // 取消购票
    cancelHandler(row) {
      this.$confirm("确定取消该购票记录吗？", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        // 发送 DELETE 请求到 /api/maipiao
        this.$http({
          url: "/api/maipiao",
          method: "delete",
          data: {
            zhanghao: row.zhanghao,
            luxianbianhao: row.luxianbianhao
          }
        }).then(({ data }) => {
          if (data && data.code === 0) {
            this.$message.success("取消成功");
            this.getDataList(); // 刷新数据
          } else {
            this.$message.error(data.msg || "取消失败");
          }
        }).catch(error => {
          this.$message.error("请求失败，请稍后重试");
        });
      });
    }
  }
};
</script>

<style lang="scss" scoped>
.main-content {
  padding: 20px;
}

.tables {
  width: 100%;
  margin-top: 20px;
}
</style> 