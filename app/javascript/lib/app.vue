<script>
  import Header from '@lib/components/header.vue'

  const WebsiteFactory = require('@lib/factories/website_factory.js')

  class Client {
    // Mock
    static async getWebsites() {
      return [
        ...WebsiteFactory.create(5)
      ]
    }
  }

  export default {
    components: {
      Header
    },

    data() {
      return {
        websites: [],
        loaded: false
      }
    },

    async mounted() {
      this.websites = await Client.getWebsites()
      this.loaded = true
    }
  }
</script>

<template>
  <div>
    <Header>
    </Header>
    <div>
      <div v-if="!loaded">
        Loading...
      </div>
      <div v-else>
        <div class="padded">
        <table class="table table-striped table-hover">
          <thead>
            <th>
              Website
            </th>
            <th>
              Url
            </th>
            <th>
              IP Address
            </th>
            <th>
              Status
            </th>
          </thead>
          <tbody>
            <tr v-for="website in websites" :key="website.id">
              <td>
                {{ website.name }}
              </td>
              <td>
                {{ website.url }}
              </td>
              <td>
                {{ website.ip }}
              </td>
              <td>
                {{ website.status }}
              </td>
            </tr>
          </tbody>
        </table>
        </div>
      </div>
    </div>
  </div>
</template>