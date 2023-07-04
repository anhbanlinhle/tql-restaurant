<script setup>
import { computed } from 'vue';
import { useRouter, useRoute } from 'vue-router';

const router = useRouter()
const route = useRoute()

const props = defineProps(['name', 'to']);

const navigateTo = () => {
    router.push(`/dishes/${props.to}`)
};

const matchingParam = computed(() => {
    if(route.params.category === props.to) {
        return true
    } else {
        return false
    }
});
</script>

<template>
    <button
        @click="navigateTo" 
        class="rounded-xl font-semibold flex flex-col items-center px-2 py-3 border-2 border-solid space-y-1 min-w-[5.75rem] transition-colors duration-500 ease-in-out group"
        :class="matchingParam ? 'border-[#39c0c8] bg-[#39c0c8]/20' :'border-gray-200'"
    >
        <div :class="matchingParam ? 'text-[#39c0c8]' :'text-gray-400 group-hover:text-[#39c0c8]'" class="p-4 bg-white rounded-xl transition-colors duration-300 ease-in-out">
            <slot></slot>
        </div>
        <p class="text-gray-600">{{ name }}</p>
    </button>
</template>