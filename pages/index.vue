<template>
  <section class="home">
    <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      indicators
      background="transparent"
      img-width="1024"
      img-height="480"
      style="text-shadow: 1px 1px 2px #333"
    >
      <!-- Slides with custom text -->
      <b-carousel-slide v-for="home_banner in home_banners" :key="home_banner.id" :img-src="require(`~/assets/${home_banner.image}`)">
        <!-- <h3>Carrier One</h3> -->
        <h1 v-if="home_banner.title">{{home_banner.title}}</h1>
        <p v-if="home_banner.short_text">{{home_banner.short_text}}</p>
        <div v-if="home_banner.button_text">
          <nuxt-link :to="home_banner.button_href">{{home_banner.button_text}}</nuxt-link>
        </div>
      </b-carousel-slide>
    </b-carousel>

    <section class="about-sec">
      <b-container>
        <b-row>
          <b-col cols="7">
            <div class="about-img">
              <img src="~/assets/img/about-img.png" />
            </div>
          </b-col>
          <b-col cols="5">
            <div class="about-blk">
              <EditorInline class="m-0" text="About" type="h2" ykey="WELCOME10" />
              <h2>
                <EditorInline text="Carrier One" type="b" ykey="WELCOME11" />
              </h2>
              <EditorInline text="Lorem Ipsum is simply dummy text of the printing and typesetting
                industry. Lorem Ipsum has been the industry's standard dummy
                text." type="p" ykey="WELCOME2" />
              <EditorInline text="Ever since the 1500s, when an unknown printer took a galley of
                type and scrambled it to make a type specimen book. It has
                survived not only five centuries, but also the leap." type="p" ykey="WELCOME3" />
              <EditorInline text="Into electronic typesetting, remaining essentially unchanged. It
                was popularised in the 1960s with the release of Letraset sheets
                containing Lorem Ipsum passages, and more recently with desktop
                publish software like aldus pagemaker." type="p" ykey="WELCOME4" />
            </div>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="prod-sec">
      <b-container>
        <div class="prod-title">
          <EditorInline text="Popular Products & Services" type="h3" ykey="WELCOME5" />
          <EditorInline text="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua." type="p" ykey="WELCOME6" />
        </div>
        <ProductServices />
        <div>
          <a href="">EXPLORE OUR PRODUCTS & SERVICES</a>
        </div>
      </b-container>
    </section>

    <section class="we-conn">
      <b-container>
        <b-row>
          <b-col cols="7">
            <div class="we-conn-img">
              <img src="~/assets/img/we-conn-img.png" alt="" />
            </div>
          </b-col>
          <b-col cols="5">
            <div class="we-conn-blk">
              <EditorInline text="We Connect The World" type="h3" ykey="WELCOME7" />
              <EditorInline text="Lorem ipsum dolor sit amet, consectetur adipisi cing elit, sed
                do eiusmod tempor incididunt.ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco labor
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur." type="p" ykey="WELCOME8" />
              <a href="">COMPANY INFO</a>
            </div>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="take-deep">
      <b-container>
        <div class="take-deep-title">
          <EditorInline text="Take a Deeper Look" type="h3" ykey="WELCOME9" />
        </div>

        <b-row>
          <b-col cols="4">
            <div class="take-deep-blk">
              <img src="~/assets/img/tk-dep-img1.png" alt="" />
              <h5>Cloud Services</h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor. incididunt ut labore et dolore magna.
              </p>
            </div>
          </b-col>
          <b-col cols="4">
            <div class="take-deep-blk">
              <img src="~/assets/img/tk-dep-img2.png" alt="" />
              <h5>Support</h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor. incididunt ut labore et dolore magna.
              </p>
            </div>
          </b-col>
          <b-col cols="4">
            <div class="take-deep-blk">
              <img src="~/assets/img/tk-dep-img3.png" alt="" />
              <h5>Security & Compliance</h5>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                eiusmod tempor. incididunt ut labore et dolore magna.
              </p>
            </div>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="client-rev">
      <b-container>
        <div class="client-title">
          <EditorInline text="Client Reviews" type="h3" ykey="WELCOME1" />
        </div>
        <VueSlickCarousel ref="clientreviews" v-bind="settings">
          <div v-for="testimonial in testimonials" :key="testimonial.id">
            <div class="rev-blk">
              <img src="~/assets/img/quote.png" alt="" />
              <p>{{testimonial.review}}</p>
              <h6>{{testimonial.name}}</h6>
            </div>
          </div>
        </VueSlickCarousel>
        <button class="lft-arr" @click="goPrev"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
        <button class="rit-arr" @click="goNext"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
      </b-container>
    </section>
    <Partners :data="partners_data" />
  </section>
</template>
<script>
import VueSlickCarousel from "vue-slick-carousel";
export default {
  async asyncData({ $axios }) {
    const home_banners = await $axios.$get('/api/home/banner')
    const testimonials = await $axios.$get('/api/testimonials')
    const partners_data = await $axios.$get('/api/partners')
    return { home_banners, testimonials, partners_data }
  },
  components: {
    VueSlickCarousel,
  },
  data() {
    return {
      slide: 0,
      settings: {
        arrows: true,
        dots: false,
        focusOnSelect: true,
        centerMode: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        centerPadding: "0",
        touchThreshold: 5,
      },
    };
  },
  methods:{
    goNext() {
      this.$refs.clientreviews.next()
    },
    goPrev() {
      this.$refs.clientreviews.prev()
    },
  },
};
</script>
