import Main from "./pages/SearchPage";

//* here we define the routing componenets 
const routes = [
  {
    path: "/",
    name: "home",
    component: Main
  },
  {
    path: "/reserved",
    name: "Reserved",
    component: () => import("./pages/ReservedPage")
  }
];

export default routes;
