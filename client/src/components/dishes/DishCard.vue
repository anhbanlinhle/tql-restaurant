<script setup>
const props = defineProps(['imgSrc', 'dishName', 'dishType', 'id']);
const emits = defineEmits(['openModal']);

</script>

<template>
    <div 
        class="w-full rounded-2xl p-2.5 shadow-md flex flex-col items-center bg-white space-y-2 transition-all duration-300 ease-in-out hover:shadow-lg hover:-translate-x-1 hover:-translate-y-1"
    >
        <img :src="imgSrc" class="w-full rounded-2xl"/>
        <div class="w-full">
            <div class="w-full flex justify-between">
                <p class="text-[#39c0c8] font-bold">{{ dishType }}</p>
                <svg 
                    @click="$emit('openModal', id)"
                    xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                    stroke-width="1.5" stroke="currentColor"
                    class="w-6 h-6 text-gray-500 cursor-pointer"
                >
                    <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" />
                </svg>
            </div>
            <p class="text-[#1d1d1d] font-semibold text-2xl">{{ dishName }}</p>
        </div>
    </div>
</template>