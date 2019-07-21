import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    list:[]
  },
  mutations: {
    getdata(state,res){
      state.list=res.data;
    }
  },
  actions: {
    getdata(data){
      axios.get("games").then(res=>{
        data.commit("getdata",res)
      })
    }
  }
})
