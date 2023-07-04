<script setup>
import { watch } from 'vue';

const props = defineProps(['message', 'opened']);
const emits = defineEmits(['close']);

const closePopup = () => {
    emits('close')
};

let timeout;

watch(() => props.opened, () => {
    if(props.opened) {
        timeout = setTimeout(closePopup, 5000);
    } else {
        clearTimeout(timeout)
    }
});
</script>

<template>
    <Transition name="slide-fade">
        <div v-if="opened" class="bg-white text-[#f34971] flex items-center rounded-lg py-4 px-5 shadow-md space-x-2 absolute z-40 top-5 right-5">
            <p class="font-bold text-lg">{{ message }}</p>
            <svg 
                @click="$emit('close')"
                xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" 
                stroke-width="2.25" stroke="currentColor" 
                class="w-7 h-7 cursor-pointer p-1 rounded-full transition-colors ease-in-out duration-200 hover:bg-[#f34971]/20"
            >
                <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
        </div>
    </Transition>
</template>

<style scoped>
.slide-fade-enter-active,
.slide-fade-leave-active {
    transition: all 0.7s ease;
}
.slide-fade-enter-from,
.slide-fade-leave-to {
    opacity: 0;
    transform: translateY(-3rem);
}
</style>