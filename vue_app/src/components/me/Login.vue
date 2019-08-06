<template>
  <div class="app-login">
        <div class="login-top">
            <img src="../../../public/img/logo.png" alt="">
        </div>
        <mt-navbar class="page-part" v-model="selected">
            <mt-tab-item id="login">登录</mt-tab-item>
            <mt-tab-item id="reg">注册</mt-tab-item>
        </mt-navbar>
        <mt-tab-container v-model="selected">
            <mt-tab-container-item id="login">
                登录
           </mt-tab-container-item>
          <mt-tab-container-item id="reg">
                注册
            </mt-tab-container-item>

        </mt-tab-container>
  </div>
</template>
<script>
export default {
  data() {
    return {
      selected: "login"
    };
  }
};
</script>
<style>
</style>
