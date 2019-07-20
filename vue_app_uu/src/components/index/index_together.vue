<template>
   <div>
      <div><indexheader1></indexheader1></div> 
      <div class="floor_2">
         <indexheader2></indexheader2>
      </div> 
      <div><indexmynav></indexmynav></div>
      <!-- <div><indexfloor2></indexfloor2></div> -->
      <div><indexfooter></indexfooter></div>
   </div>
</template>

<script>
   import indexheader1 from "./index_header_1.vue"
   import indexheader2 from "./index_header_2.vue"
   import indexmynav from "./index_mynav.vue"
   import indexfloor2 from "./index_floor2.vue"
   import indexfooter from "./index_footer.vue"
   export default {
      data(){
         return{

         }
      },
      components:{
         indexheader1,
         indexheader2,
         indexmynav,
         indexfloor2,
         indexfooter
      }
   }
</script>

<style lang="scss" scoped>

</style>