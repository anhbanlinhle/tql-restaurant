<script setup>
import { computed, ref } from 'vue';

const props = defineProps(['imgSrc', 'dishName', 'dishType', 'id']);
const emits = defineEmits(['openModal']);

const colorOption = {
    primary: 'text-[#52a1f5] font-bold',
    success: 'text-[#39c0c8] font-bold',
    neon: 'text-[#6c47ff] font-bold',
    red: 'text-[#f34971] font-bold',
    celery: 'text-[#aabb5d] font-bold',
};

const colorHover = {
    primary: 'bg-[#52a1f5] text-white',
    success: 'bg-[#39c0c8] text-white',
    neon: 'bg-[#6c47ff] text-white',
    red: 'bg-[#f34971] text-white',
    celery: 'bg-[#aabb5d] text-white',
}

const selectedColor = computed(() => {
    if (props.dishType === 'Appetizer') {
        return colorOption.success
    } else if (props.dishType === 'Main dish') {
        return colorOption.primary
    } else if (props.dishType === 'Side dish') {
        return colorOption.neon
    } else if (props.dishType === 'Dessert') {
        return colorOption.red
    } else {
        return colorOption.celery
    }
});

const selectedColorHover = computed(() => {
    if (props.dishType === 'Appetizer') {
        return colorHover.success
    } else if (props.dishType === 'Main dish') {
        return colorHover.primary
    } else if (props.dishType === 'Side dish') {
        return colorHover.neon
    } else if (props.dishType === 'Dessert') {
        return colorHover.red
    } else {
        return colorHover.celery
    }
})

const mouseOverInfoIcon = ref(false);

</script>

<template>
    <div 
        class="w-full rounded-2xl p-2.5 shadow-md flex flex-col items-center bg-white space-y-2 transition-all duration-300 ease-in-out hover:shadow-lg hover:-translate-x-1 hover:-translate-y-1"
    >
        <img :src="imgSrc" class="w-full rounded-2xl"/>
        <div class="w-full">
            <div class="w-full flex justify-between">
                <p :class="selectedColor">{{ dishType }}</p>
                <svg 
                    @click="$emit('openModal', id)"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                    stroke-width="1.5" stroke="currentColor"
                    class="w-6 h-6 cursor-pointer rounded-full transition-colors duration-300 ease-in-out"
                    @mouseenter="mouseOverInfoIcon = true"
                    @mouseleave="mouseOverInfoIcon = false"
                    :class="mouseOverInfoIcon ? selectedColorHover : selectedColor"
                >
                    <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" />
                </svg>
            </div>
            <p class="text-[#1d1d1d] font-semibold text-2xl">{{ dishName }}</p>
        </div>
    </div>
</template>