<template>
  <div class="map-container">
    <div class="map-tools">
      <el-button type="primary" @click="startRouteMode">开始规划路线</el-button>
      <el-button type="danger" @click="clearRoute">清除路线</el-button>
      <span class="tip-text" v-if="isRoutePlanning">
        {{ startPoint ? '请点击地图选择终点位置' : '请点击地图选择起点位置' }}
      </span>
    </div>
    <div id="container" style="height: 600px"></div>
    <!-- 添加路线规划结果面板 -->
    <div id="panel"></div>
  </div>
</template>

<script>
export default {
  name: 'AMap',
  data() {
    return {
      map: null,
      isRoutePlanning: false,
      startPoint: null,
      startMarker: null,
      endMarker: null,
      currentTransfer: null  // 添加当前的 Transfer 实例
    }
  },
  mounted() {
    this.initMap()
  },
  methods: {
    initMap() {
      console.log('开始初始化地图...')
      this.map = new AMap.Map('container', {
        resizeEnable: true,
        zoom: 11,
        center: [106.551556, 29.563009], // 重庆市中心坐标
        viewMode: '3D'
      })
      
      // 添加控件
      this.map.addControl(new AMap.ToolBar())
      this.map.addControl(new AMap.Scale())

      // 加载插件
      AMap.plugin(['AMap.Transfer'], () => {
        console.log('Transfer 插件加载完成')
      })
    },

    startRouteMode() {
      console.log('开始路线规划模式')
      this.isRoutePlanning = true
      this.clearRoute()
      this.map.on('click', this.handleMapClick)
    },

    handleMapClick(e) {
      console.log('地图点击事件触发, 坐标:', e.lnglat.toString())
      const lnglat = [e.lnglat.getLng(), e.lnglat.getLat()]
      
      if (!this.startPoint) {
        // 设置起点
        console.log('设置起点:', lnglat)
        this.startPoint = lnglat
        this.startMarker = new AMap.Marker({
          position: lnglat,
          map: this.map,
          icon: 'https://webapi.amap.com/theme/v1.3/markers/n/start.png'
        })
      } else if (this.startPoint && lnglat) {
        // 设置终点并规划路线
        console.log('设置终点:', lnglat)
        this.endMarker = new AMap.Marker({
          position: lnglat,
          map: this.map,
          icon: 'https://webapi.amap.com/theme/v1.3/markers/n/end.png'
        })
        
        // 使用 AMap.plugin 确保插件加载
        AMap.plugin(['AMap.Transfer'], () => {
          // 清除之前的路线
          if (this.currentTransfer) {
            this.currentTransfer.clear()
          }

          // 创建新的 Transfer 实例
          this.currentTransfer = new AMap.Transfer({
            map: this.map,
            city: '重庆市',
            panel: 'panel',
            policy: 0
          })

          // 开始规划
          this.currentTransfer.search(
            new AMap.LngLat(this.startPoint[0], this.startPoint[1]),
            new AMap.LngLat(lnglat[0], lnglat[1]),
            (status, result) => {
              console.log('规划结果状态:', status)
              console.log('规划结果详情:', result)
              
              if (status === 'complete') {
                this.$message.success('路线规划成功')
              } else {
                console.error('路线规划失败:', result)
                this.$message.error('路线规划失败：' + JSON.stringify(result))
              }
            }
          )
        })
        
        // 重置规划状态
        this.isRoutePlanning = false
        this.startPoint = null
        this.map.off('click', this.handleMapClick)
      }
    },

    clearRoute() {
      if (this.startMarker) {
        this.startMarker.setMap(null)
        this.startMarker = null
      }
      if (this.endMarker) {
        this.endMarker.setMap(null)
        this.endMarker = null
      }
      // 清除路线和面板内容
      if (this.currentTransfer) {
        this.currentTransfer.clear()
      }
      const panel = document.getElementById('panel')
      if (panel) {
        panel.innerHTML = ''
      }
      this.startPoint = null
      this.isRoutePlanning = false
    }
  },
  beforeDestroy() {
    if (this.map) {
      this.map.destroy()
    }
  }
}
</script>

<style scoped>
.map-container {
  width: 100%;
  padding: 20px;
  background: #fff;
  border-radius: 4px;
  position: relative;
}

.map-tools {
  margin-bottom: 10px;
  display: flex;
  align-items: center;
  gap: 10px;
}

.tip-text {
  color: #409EFF;
  font-size: 14px;
}

#panel {
  position: absolute;
  right: 0;
  top: 60px;
  width: 300px;
  height: calc(100% - 80px);
  overflow-y: auto;
  background: white;
  padding: 10px;
  border-left: 1px solid #ccc;
}
</style>
