import Vue from 'vue/dist/vue.esm'
import App from '@lib/app.vue'

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