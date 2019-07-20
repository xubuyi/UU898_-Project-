<template>
<div>
  <div class="my_nav">
    <navs></navs>
    <div class="f">
      <asides class="my_aside"></asides>
      <slideshow class="my_slideshow"></slideshow>
      <right class="my_right"></right>
    </div>
  </div>
</div>
  
</template>

<script>
import nav from "./header_nav";
import aside from "./header_aside";
import slideshow from "./index_slideshow";
import right from "./index_right";
export default {
  data() {
    return {};
  },
  components: {
    navs: nav,
    asides: aside,
    slideshow: slideshow,
    right: right
  }
};
</script>

<style lang="scss" scoped>
// .my_aside,.my_slideshow,.my_right{
//   display: flex;
// }
.f {
  display: flex;
  flex-direction: row;
}
.my_nav {
  width:1200px;
  margin: 0 auto;
}
</style>
