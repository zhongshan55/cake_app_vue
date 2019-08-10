<template>
    <div class="app-login">
        <div class="login-top">            
            <img src="../../../public/img/logo.png" alt="" class="logo-icon">
            <div class="return" @click="return_me" ><img src="../../../public/img/return.png" alt=""></div>
        </div>
        <div class="login-selected">
        <mt-navbar class="page-part" v-model="selected">
            <mt-tab-item id="login">登录</mt-tab-item>
            <mt-tab-item id="reg">注册</mt-tab-item>
        </mt-navbar>
         <div class="content">
         <mt-tab-container v-model="selected">
            <mt-tab-container-item id="login">    
                <mt-field placeholder="请输入用户名" v-model="uname"></mt-field>
                <mt-field placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
                <mt-button size="large">登录</mt-button>
            </mt-tab-container-item>
            <!-- 注册内容 -->
            <mt-tab-container-item id="reg">
                <mt-field placeholder="请输入用户名" v-model="uname"></mt-field>
                <mt-field placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
                <mt-field placeholder="请确认密码" type="password"></mt-field>
                <mt-field placeholder="请输入用户姓名" v-model="user_name"></mt-field>          
                <mt-button size="large">注册</mt-button>
            </mt-tab-container-item>
        </mt-tab-container>
         </div>
        </div>
    </div>
</template>
<script>
// import Index from '../Index.vue'
export default {
    data(){
        return{
          selected:"login",
          uname:"",
          upwd:"",
          user_name:""
        }
    },
    methods:{
        return_me(){       
            // 返回上一页
            history.go(-1); 
        }
    }
}
</script>
<style scoped>
 .login-top{
     height: 48px;
      text-align: center;
      width: 100%;
      position: relative;
      border-bottom:2px solid #f0f0f0;
 }
  .login-top>img{
      width: 30px;
    margin-top:10px;
    position:absolute;
    left: 50%;
    margin-left:-15px;
  }
   .return{
      width:60px;
      position: absolute;
  }
  .return>img{
      width: 30px;
      margin-top:9px
  }
  .login-selected{
      padding:0 20px
  }
  /* 修改颜色 */
  .mint-navbar .mint-tab-item.is-selected{
      border-bottom:3px solid#442818;
  }
  /* 登录/注册内容 */
.content{
   margin-top:20px;  /*与顶部切换登录按钮的距离*/
}
.mint-cell-wrapper{
    border-bottom:1px solid #ccc;
}
.mint-button--default{ /*按钮颜色*/
margin-top:20px;
background: #784204;
color: #fff;
}
</style>
