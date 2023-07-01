<script setup>
import { computed, onBeforeMount, onMounted, onUnmounted, ref, watch } from 'vue';
import { useRoute } from 'vue-router';
import Navbar from '../components/UI/Navbar.vue';
import ProfileDropdown from '../components/UI/ProfileDropdown.vue'

const smallBar = ref(false)
const route = useRoute()

const main = ref()
const scrollPosition = ref(0)

const handleScroll = () => {
    scrollPosition.value = main.value.scrollTop
}

window.addEventListener('scroll', handleScroll)

onBeforeMount(() => {
    if(window.innerWidth <= 640) {
        smallBar.value = true
    }
});

onUnmounted(() => {
    window.removeEventListener('scroll', handleScroll);
});

watch(() => route.fullPath, () => {
    main.value.scrollTop = 0
});
</script>

<template>
    <div class="flex w-full h-full">
        <Navbar @handle-bar-size="smallBar = !smallBar" :smallbar="smallBar" />
        <div 
            ref="main"
            id="main"
            class="sticky top-0 z-0 min-h-screen transition-all duration-500 ease-in-out  sm:px-4 pb-4 overflow-x-hidden max-h-screen"
            :class="smallBar ? 'px-2 sm:px-8 w-[calc(100%-64px)]' : 'w-0 sm:px-8 sm:w-[calc(100%-300px)]'"
            @scroll="handleScroll"
        >
            <div 
                class="sticky z-0 w-full top-0 flex items-center justify-between py-3 rounded-b-3xl transition-all duration-500 ease-in-out"
                :class="scrollPosition > 0 ? 'bg-[#52a1f5] text-white px-5' : 'text-[#52a1f5]'"
            >
                <p class="text-xl font-bold">Dashboard</p>
                <ProfileDropdown />
            </div>
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