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
      <b-carousel-slide img-src="~/assets/img/banner.png">
        <h3>This Is</h3>
        <h1>Carrier One</h1>
        <p>Comprehensive Voice & Data Telecommunications Solutions</p>
        <div><a href="">GET STARTED</a></div>
      </b-carousel-slide>

      <!-- Slides with custom text -->
      <b-carousel-slide img-src="~/assets/img/banner.png">
        <h3>This Is</h3>
        <h1>Carrier One</h1>
        <p>Comprehensive Voice & Data Telecommunications Solutions</p>
        <div><a href="">GET STARTED</a></div>
      </b-carousel-slide>

      <!-- Slides with custom text -->
      <b-carousel-slide img-src="~/assets/img/banner.png">
        <h3>This Is</h3>
        <h1>Carrier One</h1>
        <p>Comprehensive Voice & Data Telecommunications Solutions</p>
        <div><a href="">GET STARTED</a></div>
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
              <h2>
                About<br />
                <b>Carrier One</b>
              </h2>
              <p>
                Lorem Ipsum is simply dummy text of the printing and typesetting
                industry. Lorem Ipsum has been the industry's standard dummy
                text.
              </p>
              <p>
                Ever since the 1500s, when an unknown printer took a galley of
                type and scrambled it to make a type specimen book. It has
                survived not only five centuries, but also the leap.
              </p>
              <p>
                Into electronic typesetting, remaining essentially unchanged. It
                was popularised in the 1960s with the release of Letraset sheets
                containing Lorem Ipsum passages, and more recently with desktop
                publish software like aldus pagemaker.
              </p>
            </div>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="prod-sec">
      <b-container>
        <div class="prod-title">
          <h3>Popular Products & Services</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua.
          </p>
        </div>

        <b-row>
          <b-col>
            <div class="prod-blk">
              <img src="~/assets/img/prod-icon1.png" />
              <h6>Voice</h6>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
          </b-col>
          <b-col>
            <div class="prod-blk">
              <img src="~/assets/img/prod-icon2.png" />
              <h6>Data</h6>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
          </b-col>
          <b-col>
            <div class="prod-blk">
              <img src="~/assets/img/prod-icon3.png" />
              <h6>Data Center</h6>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
          </b-col>
          <b-col>
            <div class="prod-blk">
              <img src="~/assets/img/prod-icon4.png" />
              <h6>Solutions</h6>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
          </b-col>
        </b-row>

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
              <h3>We Connect The World</h3>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipisi cing elit, sed
                do eiusmod tempor incididunt.ut labore et dolore magna aliqua.
                Ut enim ad minim veniam, quis nostrud exercitation ullamco labor
                nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                in reprehenderit in voluptate velit esse cillum dolore eu fugiat
                nulla pariatur.
              </p>
              <a href="">COMPANY INFO</a>
            </div>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="take-deep">
      <b-container>
        <div class="take-deep-title">
          <h3>Take a Deeper Look</h3>
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
          <h3>Client Reviews</h3>
        </div>
        <VueSlickCarousel ref="clientreviews" v-bind="settings">
          <div>
            <div class="rev-blk">
              <img src="~/assets/img/quote.png" alt="" />
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ea commodo </p>
              <h6>John Smith</h6>
            </div>
          </div>
          <div>
            <div class="rev-blk">
              <img src="~/assets/img/quote.png" alt="" />
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ea commodo </p>
              <h6>John Smith</h6>
            </div>
          </div>
          <div>
            <div class="rev-blk">
              <img src="~/assets/img/quote.png" alt="" />
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ea commodo </p>
              <h6>John Smith</h6>
            </div>
          </div>
          <div>
            <div class="rev-blk">
              <img src="~/assets/img/quote.png" alt="" />
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ea commodo </p>
              <h6>John Smith</h6>
            </div>
          </div>
        </VueSlickCarousel>
        <button class="lft-arr" @click="goNext"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
        <button class="rit-arr" @click="goPrev"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
      </b-container>
    </section>
    <Partners />
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
        arrows: true,
        dots: false,
        focusOnSelect: true,
        centerMode: true,
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        centerPadding: 0,
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
  }
};
</script>
