import Api from "./Api";

export default {
  signup(form) {
    return Api().post("/signup", form);
  },

  signin(form) {
    return Api().post("/signin", form);
  },

  logout() {
    return Api().post("/logout");
  },

  auth() {
    return Api().get("/user");
  }
};
