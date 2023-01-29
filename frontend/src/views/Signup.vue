<template>
  <div class="home col-5 mx-auto py-5 mt-5">
    <h1 class="text-center">SignUp</h1>
    <div class="card">
      <div class="card-body">
        <div class="form-group">
          <label for="name">Name:</label>
          <input
            type="text"
            v-model="form.name"
            class="form-control"
            id="name"
          />
          <span class="text-danger" v-if="errors.name">
            {{ errors.name[0] }}
          </span>
        </div>
        <div class="form-group">
          <label for="email">Email address:</label>
          <input
            type="email"
            v-model="form.email"
            class="form-control"
            id="email"
          />
          <span class="text-danger" v-if="errors.email">
            {{ errors.email[0] }}
          </span>
        </div>
        <div class="form-group">
          <label for="password">Password:</label>
          <input
            type="password"
            v-model="form.password"
            class="form-control"
            id="password"
          />
          <span class="text-danger" v-if="errors.password">
            {{ errors.password[0] }}
          </span>
        </div>
        <div class="form-group">
          <label for="password_confirmation">Confirm Password:</label>
          <input
            type="password"
            v-model="form.password_confirmation"
            class="form-control"
            id="password_confirmation"
          />
          <span class="text-danger" v-if="errors.password_confirmation">
            {{ errors.password_confirmation[0] }}
          </span>
        </div>
        <button
          type="submit"
          @click.prevent="signup"
          class="btn btn-primary btn-block"
        >
          SignUp
        </button>
      </div>
    </div>
  </div>
</template>

<script>
import User from "../apis/User";

export default {
  data() {
    return {
      form: {
        name: "",
        email: "",
        password: "",
        password_confirmation: "",
        device:"browser"
      },
      errors: []
    };
  },

  methods: {
    signup() {
      User.signup(this.form)
      .then(response => {
          //this.$router.push({ name: "Login" });
          this.$root.$emit("signin", true);
          localStorage.setItem("token", response.data);
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
