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
    this.$store.dispatch('checkLogin')
  },
  computed:{
    isLogin(){
      return this.$store.state.isLoggedIn
    }
  }
}
</script>