<template>
  <div id="side-buttons">

    <div id="panel-controls">
      <div class="panel-button"
           v-bind:class="{ active: currentView == 'landing' }"
           @click="changeCurrentView('landing')">
      </div>
      <div class="panel-button"
           v-bind:class="{ active: currentView == 'map' }"
           @click="changeCurrentView('map')">
      </div>
    </div>

  </div>
</template>

<script lang="coffee">
module.exports =

  name: 'sideButtons'
  methods:
    changeCurrentView: (view)->
      this.$store.commit('SET_CURRENT_VIEW', view)

  computed:
    currentView: ()->
      return this.$store.state.currentView

</script>

<style lang="sass">
@import src/styles/main

#side-buttons
  #panel-controls
    position: absolute
    right: 20px
    +flexbox
    +flex-direction(column)
    .panel-button
      background-color: white
      display: block
      width: 60px
      height: 20px
      +clickable
      +flexbox
      +align-items(center)
      +translate3d(0,0,0)
      +transition(.35s all ease)
      &::before
        display: block
        content: ''
        height: 3px
        width: 100%
        background-color: $black_two_quarters
        +transition(.35s all ease)
    .active
      +translate3d(-20px,0,0)
      +transition(.35s all ease)
      cursor: default
      &::before
        content: ''
        background-color: $black_three_quarters
        +transition(.35s all ease)



</style>
