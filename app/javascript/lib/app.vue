<script>
  import Header from '@lib/components/header.vue'

  // Mock Client
  const WebsiteFactory = require('@lib/factories/website_factory.js')

  class Client {
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
        <table>
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

<style lang="scss">
  @import "./css/reset.css";

  .padded {
    padding: 10px;
  }

  table {
    $cellPadding: 10px;
    width: 100%;

    th,td {
      padding: $cellPadding;
    }

    thead {
      th {
        text-align: left;
        background: #444;
        color: #eee;
      }
    }

    tbody {
      tr {
        td {
          border-bottom: solid 1px rgba(0, 0, 0, 0.1);
          transition: all 0.3s ease;
        }

        &:hover td {
          background: rgba(0, 0, 0, 0.1)
        }
      }

    }
  }
</style>