import Api from "./Api";

export default {
  create(form) {
    return Api().post("/create", form);
  },
  list() {
    return Api().get("/list");
  },
  views(id) {
    return Api().get('/views/'+id);
  },
};
