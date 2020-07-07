//* App class navigate between the search page and resevred flights page 
<template>
  <div id="app">
    <div class="header" id="nav">
      
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Adi's Flight</a>

        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <router-link class="nav-link" :to="{ name: 'home' }">Home</router-link>
        
            </li>
            <li class="nav-item">
              <router-link class="nav-link" :to="{ name: 'Reserved' }" >Reserved Flights</router-link>
            </li>
          </ul>
        </div>
      </nav> 
    </div>
    <div class="container">
      <router-view />
    </div>
    
  </div>
</template>

<style>
img {
  width: 100px;
  height: 100px;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
