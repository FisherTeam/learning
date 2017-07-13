<template>
    <div>
        <div class="dialog-img">
    
            <img :src="src"
                 :width="width"
                 :height="height">
            <span class="img-bg"
                  @click="dialog">
                   <i class="el-icon-view"></i>
            </span>
        </div>
        <el-dialog v-model="dialogVisible"
                   size="tiny">
            <img width="100%"
                 :src="dialogImageUrl">
        </el-dialog>
    </div>
</template>

<script>
export default {
    data() {
        return {
            dialogImageUrl: '',
            dialogVisible: false,
        }
    },
    props: ['src', 'width', 'height'],
    methods: {
        dialog(file) {
            this.dialogImageUrl = this.src;
            this.dialogVisible = true;
        }
    }
}

</script>

<style lang="less">
.dialog-img {
    overflow: hidden;
    background-color: #fff;
    border: 1px solid #c0ccda;
    border-radius: 6px;
    box-sizing: border-box;
    width: 160px;
    height: 120px;
    line-height: 120px;
    margin: 0 8px 8px 0;
    display: inline-block;
    position: relative;
    img {
        width: 100%;
    }
}

.dialog-img .img-bg {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    text-align: center;
    color: #fff;
    opacity: 0;
    font-size: 20px;
    background-color: rgba(0, 0, 0, .5);
    transition: opacity .3s;
}

.img-bg:hover {
    opacity: 1;
}

.el-icon-view {
    display: inline-block;
    position: absolute;
    right: 5px;
    bottom: 5px;
}
</style>
