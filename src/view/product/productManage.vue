<template>
    <div>
        <el-breadcrumb>
            <span class="breadcrumb-title">金融产品管理</span>
            <el-button type="primary" size="small" class="btn-addproduct">添加</el-button>
        </el-breadcrumb>
    
        <!-- 查询 ↓ -->
        <el-form :inline="true" :model="query" class="query-form">
            <el-form-item label="产品状态：" prop="date">
                <el-select v-model="value" placeholder="全部产品状态">
                    <el-option v-for="item in options" :label="item.label" :value="item.value" :key="item.value">
                    </el-option>
                </el-select>
            </el-form-item>
    
            <el-form-item label="按产品名称查找：">
                <el-input type="primary" class="order-input"></el-input>
            </el-form-item>
    
            <el-form-item>
                <el-button type="primary" icon="search">查询</el-button>
            </el-form-item>
        </el-form>
    
        <!-- table-data ↓ -->
        <el-table :data="orderData['orders']" class="table" stripe v-loading="loading" element-loading-text="拼命加载中">
            <el-table-column prop="detail" label="产品名称" ></el-table-column>
            <el-table-column prop="date" label="创建时间" ></el-table-column>
            <el-table-column prop="person" label="创建人"></el-table-column>
            <el-table-column prop="state" label="状态"></el-table-column>
            <el-table-column label="操作" >
                <template scope="scope">
                    <span class="table-icon">
                        <i class="el-icon-edit C-blue"></i>
                    </span>
                     <span class="table-icon">
                        <i class="el-icon-delete C-blue"></i>
                    </span>
                </template>
            </el-table-column>
        </el-table>
        <el-pagination layout="total, sizes, prev, pager, next, jumper" :total="100" class="pagination">
        </el-pagination>
    </div>
</template>
<script>
import orderData from '~/mock/order.js';
export default {
    data() {
        return {
            orderData,
            query: {
                date: ''
            },
            value: '',
            options: [{
                value: "10001",
                label: '未发布'
            }, {
                value: "10002",
                label: "审核通过"
            }, {
                value: "10003",
                label: "审核未通过"
            }],
            loading: false
        }
    }
}
</script>
<style lang="less">
.btn-addproduct {
    float: right;
}

.el-breadcrumb {
    border-bottom: 1px solid #f2f2f2;
    height: 35px;
    line-height: 35px;
}
</style>


