<template>
  <section class="our-partnr">
    <b-container>
      <div class="partnr-title">
        <h3>Our Partners</h3>
      </div>
      <VueSlickCarousel ref="partnersslick" v-bind="settings">
        <div v-for="partner in data" :key="partner.id">
          <img :src="require(`~/assets/${partner.image}`)" />
        </div>
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
  props:{
    data:{
      default: [],
      type: Array
    }
  }
};
</script>
