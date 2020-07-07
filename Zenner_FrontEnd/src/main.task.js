//* Main generates theh vue component
import Vue from "vue";
import App from "./App.task.vue";
import VueAxios from "vue-axios";
import axios from "axios";

import routes from "./routes";
import VueRouter from "vue-router";
Vue.use(VueRouter);
const router = new VueRouter({
  routes
});

Vue.use(VueAxios, axios);

new Vue({
  router,
  data() {
    return {
    };
  },
  methods: {
   
  },
  render: (h) => h(App)
}).$mount("#app");
