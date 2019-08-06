import Vue from 'vue'
import Router from 'vue-router'

import Index from './components/Index.vue'
import Me from './components/me/Me.vue'
import Login from './components/me/Login.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Index',
      component: Index
    },
    {path:'/Me',component:Me},
    {path:'/Login',component:Login}

  ]
})
