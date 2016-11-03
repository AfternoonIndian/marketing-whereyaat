<template>
  <div id="app">
    <sign-up-panel></sign-up-panel>

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
      { src: 'src jfdlskja ' },
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
  color: red
  margin-top: 60px

</style>
