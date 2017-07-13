<template>
    <div>
    
        <el-table :data="users['users']"
                  class="table"
                  border>
            <el-table-column prop="userid"
                             label="金融机构ID"
                             width="140"></el-table-column>
    
            <el-table-column prop="person"
                             label="金融机构名称"
                             width="140"></el-table-column>
    
            <el-table-column prop="email"
                             min-width="250"
                             label="商户中心账号"></el-table-column>
    
            <el-table-column prop="phone"
                             label="车支付账户"
                             width="130"></el-table-column>
            <el-table-column prop="date"
                             label="入驻时间"
                             width="180"></el-table-column>
            <el-table-column prop="state"
                             label="账户状态"
                             width="100"></el-table-column>
    
            <el-table-column label="操作"
                             width="166">
    
                <template scope="scope">
    
                    <el-button size="small"
                               type="danger"
                               @click="closeAccount">关闭账号</el-button>
    
                    <el-button size="small"
                               type="info" @click="toDetail(scope.row.userid)" >详情</el-button>
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
import users from '~/mock/user.js';
export default {
    data() {
        return {
            users,
        }
    },
    methods: {
        closeAccount() {
            this.$confirm('关闭账号后该商户将无法登录', '提示', {
                coinfirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {
                this.$message({
                    type: 'success',
                    message: '关闭成功！'
                })
            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '取消关闭'
                })
            })
        },
        toDetail(userid){
            console.log(userid)
            this.$router.push({
                name:'detail',
                params:{
                    userid
                }
            })
        }
    }
}
</script>
