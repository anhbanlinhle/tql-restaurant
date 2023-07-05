<script setup>
import { computed, ref } from 'vue';
import { useRouter, useRoute } from 'vue-router';

const router = useRouter()
const route = useRoute()

const props = defineProps(['name', 'to', 'color']);

const colorOption = {
    primary: {
        bg: 'border-[#52a1f5] bg-[#52a1f5]/20',
        icon: 'text-[#52a1f5]',
        iconHover: 'text-gray-400 group-hover:text-[#52a1f5]',
    },
    success: {
        bg: 'border-[#39c0c8] bg-[#39c0c8]/20',
        icon: 'text-[#39c0c8]',
        iconHover: 'text-gray-400 group-hover:text-[#39c0c8]',
    },
    neon: {
        bg: 'border-[#6c47ff] bg-[#6c47ff]/20',
        icon: 'text-[#6c47ff]',
        iconHover: 'text-gray-400 group-hover:text-[#6c47ff]',
    },
    red: {
        bg: 'border-[#f34971] bg-[#f34971]/20',
        icon: 'text-[#f34971]',
        iconHover: 'text-gray-400 group-hover:text-[#f34971]',
    },
    celery: {
        bg: 'border-[#aabb5d] bg-[#aabb5d]/20',
        icon: 'text-[#aabb5d]',
        iconHover: 'text-gray-400 group-hover:text-[#aabb5d]',
    },
}

const selectedColor = computed(() => {
    if (colorOption[props.color] === undefined) {
        return colorOption['primary']
    } else {
        return colorOption[props.color]
    }
})

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
        :class="matchingParam ? selectedColor.bg :'border-gray-200'"
    >
        <div :class="matchingParam ? selectedColor.icon : selectedColor.iconHover" class="p-4 bg-white rounded-xl transition-colors duration-300 ease-in-out">
            <slot></slot>
        </div>
        <p class="text-gray-600">{{ name }}</p>
    </button>
</template>