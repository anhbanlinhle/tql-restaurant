<script setup>
import { onBeforeMount, onMounted, onUnmounted, ref, watch } from 'vue';
import { useRoute, useRouter } from 'vue-router';
import Navbar from '../components/UI/Navbar.vue';
import ProfileDropdown from '../components/UI/ProfileDropdown.vue'
import Modal from '../components/UI/Modal.vue'

const route = useRoute()
const router = useRouter()

const cookieValue = ref(document.cookie
                    .split("; ")
                    .find((row) => row.startsWith("token="))
                    ?.split("=")[1]);
let cookieValueUpdater

const smallBar = ref(false)

const main = ref()
const scrollPosition = ref(0)

const handleScroll = () => {
    scrollPosition.value = main.value.scrollTop
}

window.addEventListener('scroll', handleScroll)

onBeforeMount(() => {
    if(cookieValue.value === undefined) {
        router.push('/auth/login')
    }
    if(window.innerWidth <= 640) {
        smallBar.value = true
    }
});

onMounted(() => {
    cookieValueUpdater = setInterval(() => {
        cookieValue.value = document.cookie
                    .split("; ")
                    .find((row) => row.startsWith("token="))
                    ?.split("=")[1];
    }, 10000);
})

onUnmounted(() => {
    window.removeEventListener('scroll', handleScroll);
    clearInterval(cookieValueUpdater)
});

watch(() => route.fullPath, () => {
    main.value.scrollTop = 0
});

watch(cookieValue, () => {
    if(cookieValue.value === undefined) {
        alert('Out of session! Please log in again!')
        router.push('/auth/login')
    }
});
</script>

<template>
    <div class="flex w-full h-full">
        <Navbar @handle-bar-size="smallBar = !smallBar" :smallbar="smallBar" />
        <div 
            ref="main"
            id="main"
            class="relative min-h-screen transition-all duration-500 ease-in-out  sm:px-4 pb-4 overflow-x-hidden max-h-screen"
            :class="smallBar ? 'px-2 sm:px-8 w-[calc(100%-64px)] max-sm:w-full' : 'w-0 sm:px-8 sm:w-[calc(100%-240px)]'"
            @scroll="handleScroll"
        >
            <div 
                class="sticky z-40 w-full top-0 flex items-center justify-between py-3 rounded-b-3xl transition-all duration-500 ease-in-out"
                :class="scrollPosition > 0 ? 'bg-[#52a1f5] text-white px-5' : 'text-[#52a1f5]'"
            >
                <p class="text-xl font-bold">TQL Restaurant</p>
                <ProfileDropdown />
            </div>
            <svg 
                @click="smallBar = !smallBar"
                v-if="smallBar"
                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" 
                stroke-width="2" stroke="currentColor" 
                class="w-8 h-8 fixed top-20 z-[1] rounded-r-lg shadow-md p-1.5 text-white bg-[#52a1f5] cursor-pointer sm:hidden"
            >
                <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 4.5l7.5 7.5-7.5 7.5m-6-15l7.5 7.5-7.5 7.5" />
            </svg>
            <router-view v-slot="{ Component }">
                <transition name="fade" mode="out-in">
                    <component :is="Component" />
                </transition>
            </router-view>
        </div>
        
    </div>
</template>

<style scoped>
.fade-enter-active,
.fade-leave-active {
    transition: opacity 0.3s ease;
}
.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}

#main {
    scroll-behavior: smooth;
}
</style>