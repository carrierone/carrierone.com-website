<template>
  <h3
    @blur="handleContent"
    :contenteditable="isLogin === true ? 'true' : 'false'"
    :class="isLogin === true ? 'allowedit' : ''"
    :data-key="isLogin === true?ykey:''"
    v-html="render"
  ></h3>
</template>
<script>
export default {
  methods: {
      handleContent(e){
          if(this.isLogin===true){
            this.$axios.post('/api/config-content',{
                key: this.ykey,
                data: e.target.innerHTML,
            })
            this.$toast.success('Content Updated')
          }else{
              this.$toast.error('You need to login as admin to update content')
          }
      }
  },
  props: {
    text: {
      type: String,
      default: "",
    },
    ykey: {
      type: String,
      default: "",
    },
  },
  computed: {
    isLogin() {
      return this.$store.state.isLoggedIn;
    },
    content() {
      return this.$store.state.config.content;
    },
    render() {
      try {
        return !this.content[this.ykey] ? this.text : this.content[this.ykey];
      } catch (ex) {
        return this.text;
      }
    },
  },
  mounted(){
      
  }
};
</script>