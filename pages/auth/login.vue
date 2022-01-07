<template>
  <section class="contactuswidget">
    <b-container>
      <div class="cntc-title">
        <h3>Login</h3>
      </div>
      <b-form>
        <b-row>
          <b-col>
            <b-form-input
              id="input-1"
              type="email"
              placeholder="Email"
              required
              v-model="user.email"
              :state="error.email==''"
            ></b-form-input>
            <b-form-invalid-feedback id="input-1-feedback">
            {{loginErrors.email}}
            </b-form-invalid-feedback>
          </b-col>
        </b-row>
        <b-row>
          <b-col>
            <b-form-input
              id="input-2"
              type="password"
              placeholder="Password"
              required
              v-model="user.password"
              :state="error.password==''"
            ></b-form-input>
            <b-form-invalid-feedback id="input-2-feedback">
            {{loginErrors.password}}
            </b-form-invalid-feedback>
          </b-col>
        </b-row>
        <b-row>
          <b-col>
            <button type="button" @click="tryLogin">Login</button>
          </b-col>
        </b-row>
      </b-form>
    </b-container>
  </section>
</template>
<script>
export default {
    methods:{
        tryLogin(){
            this.$store.dispatch('login',this.user)
        }
    },
    data(){
        return{
            user:{
                email: '',
                password: ''
            },
            error: {
                email: '',
                password: ''
            },
        }
    },
    watch:{
        loginErrors(){
            if(this.loginErrors.email){
                this.error.email = this.loginErrors.email
            }
            if(this.loginErrors.password){
                this.error.password = this.loginErrors.password
            }
        },
        isLoggedIn(){
          this.error.password = ''
          this.error.email = ''
          if(this.isLoggedIn===true){
            this.$toast.success('Login Successful')
            this.$router.push('/');
          }
        }
    },
    computed:{
        loginErrors(){
            return this.$store.state.loginErrors
        },
        isLoggedIn(){
          return this.$store.state.isLoggedIn
        }
    }
};
</script>