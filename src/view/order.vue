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
    
        <el-table :data="orderData['orders']"
                  class="table"
                  stripe
                  border
                  v-loading="loading"
                  element-loading-text="拼命加载中">
            <el-table-column label="订单号"
                             sortable
                             width="180">
                <template scope="scope">
                    <p class="table-br">{{scope.row.orderid}}</p>
                    <P class="table-br">{{scope.row.date}}</P>
                </template>
            </el-table-column>
    
            <el-table-column label="申请人信息"
                             width="130">
                <template scope="scope">
                    <p class="table-br">{{scope.row.person}}</p>
                    <p class="table-br">{{scope.row.phone}}</p>
                </template>
            </el-table-column>
    
            <el-table-column label="车源信息">
                <template scope="scope">
                    <p class="table-br">{{scope.row.address}}</p>
                    <p class="table-br">{{scope.row.detail}}</p>
                </template>
            </el-table-column>
    
            <el-table-column label="贷款信息"
                             width="320">
                <template scope="scope">
                    <p class="table-br">
                        <span>车源价格：{{scope.row.carPrice}}万元</span>
                        <span>贷款金额：{{scope.row.loanPrice}}万元</span>
                    </p>
                    <p class="table-br">
                        <span>首付比例：{{scope.row.percent}}%</span>
                        <span>贷款期限：{{scope.row.deadline}}</span>
                    </p>
                </template>
            </el-table-column>
    
            <el-table-column label="签约信息"
                             width="130">
                <template scope="scope">
                    <p class="table-br">实际贷款金额</p>
                    <p class="table-br">{{scope.row.carPrice}}万</p>
                </template>
            </el-table-column>
    
            <el-table-column label="操作"
                             width="100">
    
                <template scope="scope">
                    <el-tag type="success">{{scope.row.state}}</el-tag>
                </template>
            </el-table-column>
        </el-table>
        <el-pagination layout="total, sizes, prev, pager, next, jumper"
                       :total="100"
                       class="pagination">
        </el-pagination>
    </div>
</template>

<script>
import orderData from '~/mock/order.js';
export default {
    data() {
        return {
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
            query: {
                date: ''
            },
            orderData,
            loading: true
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
        }, 1000);
    }
}

</script>
