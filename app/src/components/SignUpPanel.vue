<template>
  <div class="hello">
    hellow world
  </div>
</template>

<script lang="coffee">
module.exports =
  name: 'signUpPanel'


</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

html,body{
  overflow: hidden;
}

#logo  {
  position: absolute;
}
#statue  {
  z-index: -1;
  max-width: 80vh;
  width:50%;
  height:auto;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left:50%;
  transform-origin: top left;
  overflow: hidden;
}
#spinningMapContainer  {
  display: none;
  zoom: 1.25;
  width: 50vw;
  height: 75vh;
}

#mapFrame  {
  height: 206px;
  width: auto;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-211px, -92px);
  z-index: 1;
}
#landingSpot1  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(4px, 39px);
  z-index: 4;
  height: 7px;
  width: auto;
}
#landingSpot2  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(32px, 14px);
  z-index: 4;
  height: 6px;
  width: auto;
}
#landingSpot3 {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50px, -8px);
  z-index: 4;
  height: 5px;
  width: auto;
}
#landingSpot4  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(4px, -20px);
  z-index: 4;
  height: 4px;
  width: auto;
}
#landingSpot5  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-27px, -28px);
  z-index: 4;
  height: 3px;
  width: auto;
}
#landingSpot6  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-7px, -38px);
  z-index: 4;
  height: 2px;
  width: auto;
}
#landingSpot7  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-34px, -45px);
  z-index: 4;
  height: auto;
  width: 4px;
}
#pin1  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(6px, 42px);
  z-index: 5;
  height: 0px;
  width: 11px;
}
#pin2  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(34px, 17px);
  z-index: 5;
  height: 0px;
  width: 10px;
}
#pin3  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-49px, -6px);
  z-index: 5;
  height: 0px;
  width: 8px;
}
#pin4  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(5px, -18px);
  z-index: 5;
  height: 0px;
  width: 7px;
}
#pin5  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-26.8px, -27px);
  z-index: 5;
  height: 0px;
  width: 6px;
}
#pin6  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-7px, -37px);
  z-index: 5;
  height: 0px;
  width: 5px;
}
#pin7  {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-34px, -45px);
  z-index: 5;
  height: 0px;
  width: 4px;
}

/*For calling the animation*/
  .orbit1  {
    animation: orbit1 3s linear infinite;
  }
  .orbit2  {
    animation: orbit2 3s linear infinite;
  }
  .orbit3  {
    animation: orbit3 3s linear infinite;
  }
  .orbit4  {
    animation: orbit4 3s linear infinite;
  }
/*Circles, from big to small*/
#c1{
  opacity: .4;
  width:200px;
  height:200px;
  border:2px solid #ff6666;
  border-radius:100%;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left:50%;
  transform-origin: top left;
}

@keyframes orbit1 {
    0% {
         transform-origin: top left;
         transform: rotate(0deg) translate(-102px, -102px);
  }
    57% { transform-origin: top left;
         transform: rotate(570deg) translate(-85px, -85px)  }
    100% {
         transform-origin: top left;
         transform: rotate(1080deg) translate(-102px, -102px);
  }
}

#c2{
  opacity: .6;
  width:185px;
  height:185px;
  border:2px solid #ff6666;
  border-radius:100%;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left:50%;
  animation-delay: .3s;
}

  @keyframes orbit2 {
    0% {
         transform-origin: top left;
         transform: rotate(0deg) translate(-94.5px, -94.5px);
  }
    57% { transform-origin: top left;
         transform: rotate(570deg) translate(-80px, -80px)  }
    100% {
         transform-origin: top left;
         transform: rotate(1080deg) translate(-94.5px, -94.5px);
  }
}

#c3{
  opacity: .8;
  width:170px;
  height:170px;
  border:2px solid #ff6666;
  border-radius:100%;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left:50%;
  animation-delay: .6s;
}

  @keyframes orbit3 {
    0% {
         transform-origin: top left;
         transform: rotate(0deg) translate(-87px, -87px);
  }
    57% { transform-origin: top left;
         transform: rotate(570deg) translate(-75px, -75px)  }
    100% {
         transform-origin: top left;
         transform: rotate(1080deg) translate(-87px, -87px);
  }
}
#c4 {
  opacity: .9;
  width:155px;
  height:155px;
  border:2px solid #ff6666;
  border-radius:100%;
  position: absolute;
  transform: translate(-50%, -50%);
  top: 50%;
  left:50%;
  animation-delay: .9s;
}

  @keyframes orbit4 {
    0% {
         transform-origin: top left;
         transform: rotate(0deg) translate(-79.5px, -79.5px);
  }
    57% { transform-origin: top left;
         transform: rotate(570deg) translate(-72px, -72px)  }
    100% {
         transform-origin: top left;
         transform: rotate(1080deg) translate(-79.5px, -79.5px);
  }
}
#c5 {
  background-color: white;
  width:140px;
  height:140px;
  border-radius: 100px;
  position:absolute;
  top: 50%;
  left:50%;
  transform: translate(-50%, -50%);
}

</style>
