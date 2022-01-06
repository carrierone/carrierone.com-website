<template>
  <div>
    <Header />
    <Nuxt />
    <Footer />
  </div>
</template>
<script>
export default {
  mounted(){
    this.$store.dispatch('login',{
      password: "12345678",
      email: "test3@gmail.com",
    })
    this.$store.dispatch('checkLogin')
  },
  computed:{
    isLogin(){
      return this.$store.state.isLoggedIn
    }
  }
}
</script>