<template>
    <div>
        <img :src="focused?selectedImage:normalImage" alt="" class="imgstyle"/>
    </div>
</template>

<script>
export default {
    data(){
        return{
        }
    },
    props:{
        focused:false,
        selectedImage:{default:""},
        normalImage:{default:""}
    },
     methods:{

     }
}
</script>
<style scoped>
    .imgstyle{
        width:28px;
        height:25px;
    }
</style>