/*jshint esversion: 6 */
import Vue from 'vue';
import Router from 'vue-router';
import Home from './views/Home.vue';
import test from './views/test.vue';
import deal from './components/common/index/deal.vue';
import index_header_1 from "./components/index/index_header_1.vue";
import index_header_2 from "./components/index/index_header_2.vue";

Vue.use(Router);

export default new Router({
  routes: [
    {path:"/index_header_1",component:index_header_1},
    {path:"/index_header_2",component:index_header_2},
    {
      path: '/',
      component:test
    },
  {
    path:"/deal",
    component:deal
  },
    {
      path: '/about',
      name: 'about',
      // route level code-splitting
      // this generates a separate chunk (about.[hash].js) for this route
      // which is lazy-loaded when the route is visited.
      component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
