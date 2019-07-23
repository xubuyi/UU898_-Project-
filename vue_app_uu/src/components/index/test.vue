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
    {{ lists }}
  </div>
</template>

<script>
  export default {
    data() {
      return {
        lists:{}
      }
    },
    created() {
    
      //  console.log(this.$store.state.list)
      // this.lists=this.$store.state.list
      // console.log(this.lists);
      // // console.log(this.$store.getters.getdata);
      // // this.$store.getters.getdata
      // console.log(this.lists)
      // //4
    },
    mounted() {
        this.$store.dispatch('getdata');
      setTimeout(()=>{
      this.lists=this.$store.state.list;
      console.log(this.$store.state.list);
      },0)
    }
  }
</script>

<style lang="scss" scoped>

</style>