<template>
  <div>
    测试
    <!-- <div v-for="(list,i) of $store.state.list.list" :key="i">
      游戏名称：{{list.game_name}};
      游戏公司：{{list.game_company_name}};
      数量：{{list.game_turnover}};
    </div> -->
    <!-- {{$store.state.list.list}}
    {{$store.state.list.type}}
    {{$store.state.list.server}}-->
    <!-- {{$store.state.list}}  -->
    <!-- {{list}} -->
    <!-- {{ $store.state.list.list}} -->
    {{datas.list}}
  </div>
</template>

<script>
  export default {
    data() {
      return {
        datas:{}
      }
    },
    created() {
      this.$store.dispatch('getdata');
      // this.list=$store.state.list
      this.datas=this.$store.state.list
    },
    // computed: {
    //   data(){
    //     return $store.state.list;
    //   }
    // },
  }
</script>

<style lang="scss" scoped>

</style>