<template>
	<div class="wrapper">
		<app-header />
		<el-row class="container">
			<app-siderbar />
			<el-col :span="20"
			        class="content">
				<el-breadcrumb class="marginBottom30"> 
					<el-breadcrumb-item><i class="el-icon-menu"></i> 首页</el-breadcrumb-item>
					<el-breadcrumb-item>项目</el-breadcrumb-item>
				</el-breadcrumb>
                 <transition name="fade" mode="out-in">
				    <router-view></router-view>
                </transition>
			</el-col>
		</el-row>
	</div>
</template>

<script>
import appHeader from '~/components/app-header.vue'
import appSiderbar from '~/components/app-siderbar.vue';

export default {
	name: 'app',
	components: {
		appHeader, appSiderbar
	},
}
</script>
<style lang="less">
    .marginBottom30{
        margin-bottom: 30px;
    }
</style>
