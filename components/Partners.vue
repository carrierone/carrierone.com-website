<template>
  <section class="our-partnr">
    <b-container>
      <div class="partnr-title">
        <h3>Our Partners</h3>
      </div>
      <VueSlickCarousel ref="partnersslick" v-bind="settings">
        <div><img src="~/assets/img/part-01.png" alt="" /></div>
        <div><img src="~/assets/img/part-02.png" alt="" /></div>
        <div><img src="~/assets/img/part-03.png" alt="" /></div>
        <div><img src="~/assets/img/part-04.png" alt="" /></div>
        <div><img src="~/assets/img/part-05.png" alt="" /></div>
        <div><img src="~/assets/img/part-01.png" alt="" /></div>
        <div><img src="~/assets/img/part-02.png" alt="" /></div>
        <div><img src="~/assets/img/part-03.png" alt="" /></div>
        <div><img src="~/assets/img/part-04.png" alt="" /></div>
        <div><img src="~/assets/img/part-05.png" alt="" /></div>
      </VueSlickCarousel>
    </b-container>
  </section>
</template>
<script>
import VueSlickCarousel from "vue-slick-carousel";
export default {
  components: {
    VueSlickCarousel,
  },
  data() {
    return {
      slide: 0,
      settings: {
        arrows: false,
        dots: true,
        infinite: true,
        slidesToShow: 5,
        slidesToScroll: 5,
        touchThreshold: 5,
      },
    };
  },
};
</script>
