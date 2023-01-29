<template>
  <div class="home col-5 mx-auto py-5 mt-5">
    <h1 class="text-center">Create New Url</h1>
    <div class="card">
      <div class="card-body">
        <div class="form-group">
          <label for="url">Long Url</label>
          <input
            type="text"
            v-model="form.destination"
            class="form-control"
            id="destination"
          />
          <span class="text-danger" v-if="errors.destination">
            {{ errors.destination[0] }}
          </span>
        </div>
        <button @click.prevent="create" class="btn btn-primary btn-block">
          Create
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import Url from "../apis/Url";

export default {
  data() {
    return {
      form: {
        destination: ""
      },
      errors: []
    };
  },

  methods: {
    create() {
      Url.create(this.form)
        .then(response => {
          //this.$root.$emit("signin", true);
          //localStorage.setItem("token", response.data);
          console.log('url created', response.data);
          this.$router.push({ name: "Dashboard" });
        })
        .catch(error => {
          if (error.response.status === 422) {
            this.errors = error.response.data.errors;
          }
        });
    }
  }
};
</script>
