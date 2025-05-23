const menu = {
    list() {
        return [{
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["新增", "查看", "修改", "删除"],
                    "menu": "用户",
                    "menuJump": "列表",
                    "tableName": "yonghu"
                }],
                "menu": "用户管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-clothes",
                    "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                    "menu": "公交路线",
                    "menuJump": "列表",
                    "tableName": "gongjiaoluxian"
                }],
                "menu": "公交路线管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-location",
                    "buttons": ["查看"],
                    "menu": "地图导航",
                    "menuJump": "列表",
                    "tableName": "map"
                }],
                "menu": "地图导航"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-full",
                    "buttons": ["新增", "查看", "修改", "删除", "查看评论"],
                    "menu": "网站公告",
                    "menuJump": "列表",
                    "tableName": "wangzhangonggao"
                }],
                "menu": "网站公告管理"
            },   {
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["查看", "取消"],
                    "menu": "我的购票",
                    "menuJump": "maipiao",
                    "tableName": "maipiao"
                }],
                "menu": "购票管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-message",
                    "buttons": ["查看", "修改", "回复", "删除"],
                    "menu": "留言建议",
                    "tableName": "messages"
                }],
                "menu": "留言建议"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-copy",
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "轮播图管理",
                    "tableName": "config"
                }, {
                    "appFrontIcon": "cuIcon-service",
                    "buttons": ["查看", "修改", "删除"],
                    "menu": "在线提问",
                    "tableName": "chat"
                }],
                "menu": "系统管理"
            }],
            "frontMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-medal",
                    "buttons": ["查看"],
                    "menu": "公交路线列表",
                    "menuJump": "列表",
                    "tableName": "gongjiaoluxian"
                }],
                "menu": "公交路线模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-location",
                    "buttons": ["查看"],
                    "menu": "地图导航",
                    "menuJump": "列表",
                    "tableName": "map"
                }],
                "menu": "地图导航"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-taxi",
                    "buttons": ["查看"],
                    "menu": "网站公告列表",
                    "menuJump": "列表",
                    "tableName": "wangzhangonggao"
                }],
                "menu": "网站公告模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看"],
                    "menu": "友情链接列表",
                    "menuJump": "列表",
                    "tableName": "youqinglianjie"
                }],
                "menu": "购票管理"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["查看", "取消"],
                    "menu": "我的购票",
                    "menuJump": "/modules/maipiao/maipiao",
                    "tableName": "maipiao"
                }],
                "menu": "购票管理"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "否",
            "hasFrontRegister": "否",
            "roleName": "管理员",
            "tableName": "users"
        }, {
            "backMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-medal",
                    "buttons": ["查看"],
                    "menu": "公交路线列表",
                    "menuJump": "列表",
                    "tableName": "gongjiaoluxian"
                }],
                "menu": "公交路线模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-location",
                    "buttons": ["查看"],
                    "menu": "地图导航",
                    "menuJump": "列表",
                    "tableName": "map"
                }],
                "menu": "地图导航"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-taxi",
                    "buttons": ["查看"],
                    "menu": "网站公告列表",
                    "menuJump": "列表",
                    "tableName": "wangzhangonggao"
                }],
                "menu": "网站公告模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看"],
                    "menu": "友情链接列表",
                    "menuJump": "列表",
                    "tableName": "youqinglianjie"
                }],
                "menu": "购票管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["查看", "取消"],
                    "menu": "我的购票",
                    "menuJump": "/modules/maipiao/maipiao",
                    "tableName": "maipiao"
                }],
                "menu": "购票管理"
            }],
            "frontMenu": [{
                "child": [{
                    "appFrontIcon": "cuIcon-medal",
                    "buttons": ["查看"],
                    "menu": "公交路线列表",
                    "menuJump": "列表",
                    "tableName": "gongjiaoluxian"
                }],
                "menu": "公交路线模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-location",
                    "buttons": ["查看"],
                    "menu": "地图导航",
                    "menuJump": "列表",
                    "tableName": "map"
                }],
                "menu": "地图导航"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-taxi",
                    "buttons": ["查看"],
                    "menu": "网站公告列表",
                    "menuJump": "列表",
                    "tableName": "wangzhangonggao"
                }],
                "menu": "网站公告模块"
            }, {
                "child": [{
                    "appFrontIcon": "cuIcon-discover",
                    "buttons": ["查看"],
                    "menu": "友情链接列表",
                    "menuJump": "列表",
                    "tableName": "youqinglianjie"
                }],
                "menu": "购票管理"
            },
            {
                "child": [{
                    "appFrontIcon": "cuIcon-cardboard",
                    "buttons": ["查看", "取消"],
                    "menu": "我的购票",
                    "menuJump": "/modules/maipiao/maipiao",
                    "tableName": "maipiao"
                }],
                "menu": "购票管理"
            }],
            "hasBackLogin": "是",
            "hasBackRegister": "否",
            "hasFrontLogin": "是",
            "hasFrontRegister": "是",
            "roleName": "用户",
            "tableName": "yonghu"
        }]
    }
}

export default menu;
