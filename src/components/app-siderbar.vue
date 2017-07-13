<template>
    <div class="app-sider">
        <ul class="app-sider-bar" ref="ul">
            <li class="app-menu-item" v-for="(item,index) in menudata" @click="addCurr($event)" :key="index">
                <div class="app-menu-li">
                    <div class="app-menu-close" @click.stop="removeCurr($event)" v-if="item.child">
                        <i class="iconfont">&#xe646;</i>
                    </div>
                    <ul class="app-menu" v-if="item.child">
                        <li class="app-menu-item-child" v-for="(item,index) in item.child" :key="index">{{item.name}}</li>
    
                    </ul>
                    <span>{{item.name}}</span>
                </div>
            </li>
        </ul>
    </div>
</template>
<script>
export default {
    data() {
        return {
            menudata: [{
                name: "发布产品",
                path: "/order",
            }, {
                name: "产品管理",
                child: [{
                    name: "金融产品管理",
                    path: '/login'
                }, {
                    name: "订单管理",
                    path: '/404'
                }]
            }, {
                name: "增值服务",
                path: '/404',
                child: [{
                    name: "营销管理",
                    path: '/login'
                }, {
                    name: "兑换优惠",
                    path: '/404'
                }, {
                    name: "发布营销活动",
                    path: '/404'
                }]
            }, {
                name: '员工管理',
                path: "/404",
                child: [{
                    name: "员工管理",
                    path: '/login'
                }, {
                    name: "添加员工",
                    path: '/404'
                }]
            }]
        };
    },
    methods: {
        addCurr(e) {
            $(".app-menu-li").attr("style", null);
            const dom = e.currentTarget.children;
            $(dom).css({
                bottom: -$(dom).height() + 90 + "px",
                boxShadow: "4px 4px 15px #2880e4"
            })
        },
        removeCurr(e) {
            $(e.currentTarget).parent().attr("style", null);
        },

    }
}
</script>



<style lang="less">
@blue: #2880e4;
@white: #ddf0ff;
.app-sider {
    height: 90px;
    background: @blue;
    >ul {
        font-size: 18px;
        color: @white;
        max-width: 1200px;
        margin: 0 auto;
        padding: 0;
        list-style: none;
        text-align: center;
        &.el-menu {
            background-color: @blue;
        }
        >li {
            width: 166px;
            height: 90px;
            float: left;
            position: relative;
        }
    }
    .app-menu-li {
        z-index: 2;
        width: 100%;
        position: absolute;
        transition: all .3s;
        line-height: 90px;
        cursor: pointer;
        background: @blue;
        left: 0;
        bottom: 0;
        &:hover {
            bottom: -10px;
            color: #fff;
            box-shadow: 4px 4px 15px darken(@blue, 5%);
        }
    }
}

.app-menu-close {
    i {
        font-size: 30px;
    }
    height: 100px;
    line-height: 100px;
}

.app-menu-item-child {
    font-size: 14px;
    position: relative;
    line-height: 1;
    margin-bottom: 26px;
    &:last-child:after {
        content: '';
        height: 1px;
        width: 136px;
        background: #fff;
        position: absolute;
        bottom: -14px;
        left: 50%;
        margin-left: -68px;transform: scaleY(0.5);
    }
}
</style>

