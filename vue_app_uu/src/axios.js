/* jshint esversion:6 */
// src/axios.js
// 引入axios库并配置
// 1 引入vue
import Vue from 'vue';
// 2 引入axios库
import axios from "axios";
// 3 配置跨域访问保存session中数据
axios.defaults.withCredentials=true;
// 4 设置请求服务器基础路径
axios.defaults.baseURL="http://127.0.0.1:3000/";
// 5 将axios配置为Vue实例属性
Vue.prototype.axios = axios;

// 7 在main.js中引入axios.js即可