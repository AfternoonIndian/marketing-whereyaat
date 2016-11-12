<template>
  <div id="info-panel">

    <div id="logo">whereyaat</div>

    <side-buttons></side-buttons>

    <div v-if="currentView == 'landing'">
      show landing component
    </div>

    <div v-if="currentView == 'map'">
      <map-rolly></map-rolly>
    </div>


  </div>
</template>

<script lang="coffee">
module.exports =

  name: 'infoPanel'
  components:
    MapRolly: require './MapRolly'
    SideButtons: require './SideButtons'

  computed:
    currentView: ()->
      return this.$store.state.currentView



</script>

<style lang="sass">
@import src/styles/main

#info-panel
  position: relative
  background-color: white
  +flex(1 1 50%)
  +flexbox
  height: 100%
  +align-items(center)
  +justify-content(center)
  +flex-direction(column)

  #logo
    position: absolute
    top: 20px
    left: 20px

</style>
