<template>
    <div>
        <el-form inline
                 :model="query"
                 label-width="90px"
                 class="query-form">
            <el-form-item label="选择时间"
                          prop="name">
                <el-date-picker v-model="query.date"
                                type="daterange">
                </el-date-picker>
            </el-form-item>
            <el-form-item label="筛选状态"
                          prop="date">
                <el-select v-model="value"
                           placeholder="请选择">
                    <el-option v-for="item in options"
                               :label="item.label"
                               :value="item.value"
                               :key="item.value">
                    </el-option>
                </el-select>
            </el-form-item>
            <div>
                <el-form-item label="订单号">
                    <el-input type="primary"
                              class="order-input"></el-input>
                </el-form-item>
    
                <el-form-item>
                    <el-button type="primary"
                               icon="search">查询</el-button>
                </el-form-item>
            </div>
        </el-form>
    
        <el-table :data="mock['account']"
                  class="table"
                  stripe
                  border>
            <el-table-column prop="orderid"
                             label="交易流水号"
                             sortable
                             width="150"></el-table-column>
    
            <el-table-column prop="oid"
                             label="交易订单号"
                             width="150"></el-table-column>
    
            <el-table-column prop="date"
                             label="操作时间"></el-table-column>
    
            <el-table-column prop="type"
                             label="操作类型"
                             width="100"></el-table-column>
    
            <el-table-column label="操作对象"
                             prop="name">
            </el-table-column>
            <el-table-column label="金额（元）"
                             prop="price"
                             width="120">
            </el-table-column>
            <el-table-column label="备注"
                             prop="remark"
                             width="100">
            </el-table-column>
            <el-table-column label="状态"
                             prop="state"
                             width="100">
            </el-table-column>
        </el-table>
        <el-pagination layout="total, sizes, prev, pager, next, jumper"
                       :total="100"
                       class="pagination">
        </el-pagination>
    </div>
</template>

<script>
import mock from '~/mock/order';
export default {
    data() {
        return {
            query: {
                date: ''
            },
            value: '',
            options: [{
                value: '10000',
                label: '全部',
            }, {
                value: '10001',
                label: '待审核',
            }, {
                value: '10002',
                label: '审核通过',
            }, {
                value: '10003',
                label: '审核否决',
            }, {
                value: '10004',
                label: '审核不通过',
            }, {
                value: '10005',
                label: '已签约',
            }, {
                value: '10006',
                label: '签约否决',
            }, {
                value: '10007',
                label: '已放款',
            }],
            mock
        }
    },

    methods: {
        resetForm() {
            this.$refs.form.resetFields();
        },
    },
    created() {
        setTimeout(() => {
            this.loading = false
        }, 3000);
    }
}
</script>
