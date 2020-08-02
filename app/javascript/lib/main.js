import Vue from 'vue/dist/vue.esm'
import App from '@lib/app.vue'
import { BootstrapVue } from 'bootstrap-vue'

import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import "@lib/css/global.scss"

Vue.use(BootstrapVue)

function renderComponent(selector, component, proxyData = false) {
  var element = document.querySelector(selector)

  if (element != undefined) {
    new Vue({
      el: element,
      render: h => h(component)
    })
  }
}

document.addEventListener('DOMContentLoaded', () => {
  renderComponent('#hosting-app', App)
})