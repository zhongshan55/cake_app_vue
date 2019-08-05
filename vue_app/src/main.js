import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
//1.引入第三方组件库mint-ui
import MintUI from 'mint-ui'
//2.单独引入mint-ui组件库中样式文件
import "mint-ui/lib/style.css"
//3.将mint-ui注册vue实例中
Vue.use(MintUI)
//4.引入字体图标
import "./font/iconfont.css"


// 8.将axios注册Vue 实例中
// 由于axios不支持use,将实例添加到vue原型对象中
Vue.prototype.axios=axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
