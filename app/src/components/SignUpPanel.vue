<template>
  <div id="sign-up">

    <div class="pink-square top"></div>
    <div class="pink-square bottom"></div>
    <div id="signup-content">

      <div id="title-container">
        <div class="title" v-for="elem in 3">sign up for beta</div>
      </div>

      <div id="subheader-container">
        <div class="subheader">if you would like</div>
        <div class="subheader">sign up for the beta app</div>
        <div class="subheader">enter you email</div>
      </div>

      <div id="email-container">
        <div id="email-title">email</div>
        <input @keyup.enter="saveMail" placeholder="enter your email here!" @input="updateInput" :value="emailStore">
      </div>

      <!-- <div v-for="elem in emailArray">{{elem.email}}</div> -->
    </div>


  </div>
</template>

<script lang="coffee">
module.exports =

  name: 'signUpPanel'

  methods:

    saveMail: ()->
      emailObject = { email: this.emailStore }

      this.$store.commit('SET_EMAIL_ARRAY', emailObject)
      
      this.$store.commit('SET_EMAIL_INPUT', '')

    updateInput: (e)->
      console.log e.target.value
      this.$store.commit('SET_EMAIL_INPUT', e.target.value)

  computed:
    emailStore: ()->
      return this.$store.state.emailInput


</script>

<style lang="sass">
@import src/styles/main

#sign-up
  background-color: $black_one_quarter
  margin: 20px 20px 20px 0
  +flex(1 1 50%)
  position: relative

  .pink-square
    background-color: pink
    position: absolute
    margin: auto
    top: 0
    left: 0
    bottom: 0
    right: 0
    height: 70%
    width: 75%
    opacity: .5
  .top
    +translate3d(-20px, -20px, 0)
  .bottom
    +translate3d(20px, 20px, 0)

  #signup-content
    background-color: white
    position: absolute
    margin: auto
    top: 0
    left: 0
    bottom: 0
    right: 0
    height: 45%
    width: 50%
    padding: 40px
    #title-container
      .title:nth-of-type(1)
        padding-left: 40px
      .title:nth-of-type(2)
        padding-left: 20px
    #subheader-container
      padding: 20px 0
      font-size: $font_size_small
      .subheader
        padding: 3px 0
        color: $black_two_quarters
    #email-container
      font-size: $font_size_small
      #email-title
        color: $action_color
      input
        border: 0
        outline: 0
        border-bottom: 1px solid $black_two_quarters
        padding: 5px 0
        +defaultType
        font-size: $font_size_small
        width: 100%
        +transition(.35s ease all)
        &:focus
          border-bottom: 1px solid $action_color
          +transition(.35s ease all)


</style>
