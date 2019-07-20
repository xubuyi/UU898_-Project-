/*jshint esversion: 6 */
import Vue from 'vue';
import Router from 'vue-router';
// import Home from './views/Home.vue';
// import test from './views/test.vue';
import deal from './components/common/index/deal.vue';
import index_floor2 from './components/index/index_floor2.vue';
import index_header_1 from "./components/index/index_header_1.vue";
import index_header_2 from "./components/index/index_header_2.vue";
import header_aside from './components/index/header_aside.vue';
import header_nav from './components/index/header_nav.vue';
import index_footer from "./components/index/index_footer.vue";
import index_together from "./components/index/index_together.vue";
import index_mynav from "./components/index/index_mynav.vue";


Vue.use(Router);

export default new Router({
  routes: [
    // {path:"/index_mynav",component:index_mynav},
    // {path:"/index_together",component:index_together},
    // {path: "/index_footer",component: index_footer},
    // {path: "/header_aside",component: header_aside},
    // {path: "/header_nav",component: header_nav},
    // {path:"/index_header_1",component:index_header_1},    
		// {path:"/index_header_2",component:index_header_2},
		// {path: '/index_floor2',component:index_floor2},
    {path: '/',component:index_together},
		// {path:"/deal",component:deal},
    {path: '/about',name: 'about',component: () => import(/* webpackChunkName: "about" */ './views/About.vue')
    }
  ]
})
