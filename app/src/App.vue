<template>
  <div id="app">
    <img src="./assets/logo.png">
    {{someData}},
    {{vuexData}}
    <sign-up-panel></sign-up-panel>
    <input v-model="inputModel">
    <br>
    {{inputModel}}
    <button class="statue" @click="doWork">statue</button>

    <div v-for="(pin, index) in pins">{{index}}, {{pin.src}}</div>


  </div>
</template>

<script lang="coffee">
module.exports =

  name: 'app'
  components:
    SignUpPanel: require './components/SignUpPanel'

  data: ->
    someData: 'hey im andy'
    inputModel: 'write something'
    pins: [
      { src: 'src one' },
      { src: 'src two' },
      { src: 'src three' }
    ]

  computed:
    vuexData: ->
      return @$store.state.stateVal

  methods:
    doWork: ->
      console.log 'i did work'

</script>

<style lang="sass">
#app
  font-family: 'Avenir', Helvetica, Arial, sans-serif
  -webkit-font-smoothing: antialiased
  -moz-osx-font-smoothing: grayscale
  text-align: center
  color: #2c3e50
  margin-top: 60px

</style>
