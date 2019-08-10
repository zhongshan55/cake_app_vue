<template>
  <div class="page-tabber">
    <div class="page-wrap">
        <mt-tab-container class="page-tabber-container" v-model="active">
          <mt-tab-container-item id="home">
              <h1>首页</h1>
          </mt-tab-container-item>
          <mt-tab-container-item id="sort">
              <h1>分类</h1>
          </mt-tab-container-item>
          <mt-tab-container-item id="shopping_cart">
              <h1>购物车</h1>
          </mt-tab-container-item>
          <mt-tab-container-item id="bbs">
              <h1>社区</h1>
          </mt-tab-container-item>
          <mt-tab-container-item id="me">
              <h1>我</h1>
          </mt-tab-container-item>          
        </mt-tab-container>

       <!-- 底部导航条  -->
      <mt-tabbar v-model="active" fixed>
        <mt-tab-item id="home" @click.native="changeState(0)">
          <tabbaricon
          :focused="currentIndex[0].isSelect"
          :selectedImage="require('../assets/home1.png')"
          :normalImage="require('../assets/home2.png')"
          >
          </tabbaricon>
        首页
        </mt-tab-item>
        <mt-tab-item id="sort" @click.native="changeState(1)">
           <tabbaricon
          :focused="currentIndex[1].isSelect"
          :selectedImage="require('../assets/sort1.png')"
          :normalImage="require('../assets/sort2.png')"
          >
          </tabbaricon>
        分类
        </mt-tab-item>
        <mt-tab-item id="shopping_cart" @click.native="changeState(2)">
         <tabbaricon
          :focused="currentIndex[2].isSelect"
          :selectedImage="require('../assets/cart1.png')"
          :normalImage="require('../assets/cart2.png')"
          >
          </tabbaricon>
        购物车
        </mt-tab-item>
        <mt-tab-item id="bbs" @click.native="changeState(3)">
          <tabbaricon
          :focused="currentIndex[3].isSelect"
          :selectedImage="require('../assets/bbs1.png')"
          :normalImage="require('../assets/bbs2.png')"
          >
          </tabbaricon>
        社区
        </mt-tab-item>
        <mt-tab-item id="me" @click.native="changeState(4)">
         <tabbaricon
          :focused="currentIndex[4].isSelect"
          :selectedImage="require('../assets/me1.png')"
          :normalImage="require('../assets/me2.png')"
          >
          </tabbaricon>
        我
        </mt-tab-item>

      </mt-tabbar>

    </div>
  </div>
</template>

<script>
import TabBarIcon from "./common/TabBarIcon.vue"
export default {
  data(){
    return{
      active:"home",
      currentIndex:[
        {isSelect:true},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false},
        {isSelect:false}
      ]
    }
  },
  components:{
    "tabbaricon":TabBarIcon
  },
  methods:{
     changeState(idx){
       for(var i=0; i<this.currentIndex.length;i++){
         if(idx==i){
           this.currentIndex[i].isSelect=true;
         }else{
           this.currentIndex[i].isSelect=false;
         }
       }

     }
  }
}
</script>

<style scoped>

</style>
