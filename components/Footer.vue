<template>
  <footer>
    <b-container>
      <b-row>
        <b-col cols="3">
          <div class="ftr-title">
            <h4>About Us</h4>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
              eiusmod tempor incididunt ut labore et dolore magna aliqua.
            </p>
            <p>
              Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum
              dolor sit amet, consectetur
            </p>
          </div>
        </b-col>

        <b-col cols="2">
          <div class="ftr-links">
            <h4>Quick Links</h4>
            <ul>
              <li><nuxt-link to="/">Home</nuxt-link></li>
              <li><nuxt-link to="/product">Products</nuxt-link></li>
              <li><a href="">Industries</a></li>
              <li><a href="">Solutions</a></li>
              <li><a href="">Resources</a></li>
              <li><a href="">Support</a></li>
            </ul>
          </div>
        </b-col>

        <b-col cols="3">
          <div class="ftr-links ftr-cntc">
            <h4>Contact Info</h4>
            <ul>
              <li>
                <i class="fa fa-map-marker" aria-hidden="true"></i
                ><b>Location:</b>
                <a href="">Lorem ipsum dolor sit amet, Lorem ipsum 404#6018</a>
              </li>
              <li>
                <i class="fa fa-phone" aria-hidden="true"></i><b>Phone:</b>
                <a href="tel:1234678900">1234678900</a>
              </li>
              <li>
                <i class="fa fa-envelope" aria-hidden="true"></i><b>Email</b>
                <a href="mailto:Info@Demolinks.com">Info@Demolinks.com</a>
              </li>
            </ul>
          </div>
        </b-col>

        <b-col cols="4">
          <div class="ftr-news">
            <h4>Join Our Newsletter</h4>
            <p>Lorem Ipsum has been the industry's</p>
            <form>
              <input
                v-model="newsletter_email"
                type="email"
                placeholder="Enter Your Email"
                required
              />
              <button v-if="!isSendingNewsletter" @click="saveNewsletter" type="button">
                <i class="fa fa-paper-plane" aria-hidden="true"></i>
              </button>
              <button v-else type="button">
                <i class="fa fa-spinner fa-spin" aria-hidden="true"></i>
              </button>
            </form>
            <ul>
              <li>
                <a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a>
              </li>
              <li>
                <a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a>
              </li>
              <li>
                <a href=""
                  ><i class="fa fa-google-plus" aria-hidden="true"></i
                ></a>
              </li>
              <li>
                <a href=""
                  ><i class="fa fa-pinterest-p" aria-hidden="true"></i
                ></a>
              </li>
              <li>
                <a href=""><i class="fa fa-linkedin" aria-hidden="true"></i></a>
              </li>
            </ul>
          </div>
        </b-col>
      </b-row>
    </b-container>
    <div class="copyrit">
      <p>Copyright © 2021Demolinks.com.</p>
    </div>
  </footer>
</template>
<script>
export default {
  methods: {
    async saveNewsletter() {
      if(this.newsletter_email!=''){
        this.isSendingNewsletter = true
        await this.$axios('/api/newsletters',{
          email: this.newsletter_email
        })
        this.$toast.success('Newsletter Saved')
        this.newsletter_email = ''
        this.isSendingNewsletter = false
      }else{
        this.$toast.error('Newsletter Email is required')
      }
    },
  },
  data(){
    return{
      newsletter_email: '',
      isSendingNewsletter: false,
    }
  }
};
</script>