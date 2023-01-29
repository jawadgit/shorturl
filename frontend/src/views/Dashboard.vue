<template>
  <div class="home col-8 mx-auto py-5 mt-5">
    <div class="row">
    <div class="col-md-10">
      <h1>Url Listing</h1>
    </div>
    
    <div class="col-md-2">
      <router-link class="btn btn-success" to="Create">Add New</router-link>
    </div>
  </div>
          <div class="card">
              <div class="card-header">
                  <h4>Urls</h4>
              </div>
              <div class="card-body">
                  <div class="table-responsive">
                      <table class="table table-bordered">
                          <thead>
                              <tr>
                                  <th>Id</th>
                                  <th>Long Url</th>
                                  <th>Short Url</th>
                                  <th>Views</th>
                              </tr>
                          </thead>
                          <tbody v-if="urls.length > 0">
                              <tr v-for="(url,key) in urls" :key="key">
                                  <td>{{ url.id }}</td>
                                  <td>{{ url.destination }}</td>
                                  <td>
                                    <button type="button" @click="views(url.id)" class="btn btn-info">https://bit/{{ url.slug }}</button>
                                  </td>
                                  <td>{{ url.views }}</td>
                              </tr>
                          </tbody>
                          <tbody v-else>
                              <tr>
                                  <td colspan="3" align="center">No Urls Found.</td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
              </div>
          </div>
      </div>
</template>

<script>
import Url from "../apis/Url";

export default {
    name:"urls",
    data(){
        return {
            urls:[],
        }
    },
    mounted(){
        this.getList()
    },
    methods: {
      getList() {
        Url.list()
        .then(response => {
            this.urls = response.data
            this.$router.push({ name: "Dashboard" });

          })
          .catch(error => {
            if (error.response.status === 422) {
              this.errors = error.response.data.errors;
            }
          });
      },
      views(id) {
        Url.views(id)
          .then(response => {
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
}
</script>
