import { createApp } from 'vue'
import { createPinia } from 'pinia'
import vue3GoogleLogin from 'vue3-google-login'
import '../node_modules/nprogress/nprogress.css'

import App from './App.vue'
import router from './router'

import './assets/main.css'

const app = createApp(App)

app.use(vue3GoogleLogin, {
    clientId: '375631904355-0r0be6algi2sh6ni58jcn05vctpr276i.apps.googleusercontent.com'
})

app.use(createPinia())
app.use(router)

app.mount('#app')