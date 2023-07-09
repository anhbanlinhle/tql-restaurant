<script setup>
import { ref } from 'vue';

const props = defineProps(['placeholder', 'modelValue']);
const emits = defineEmits(['enter', 'update:modelValue']);

const isFocused = ref(false);

</script>

<template>
    <div 
        class="flex items-center border-2 border-solid pl-5 pr-3 py-1.5 rounded-full transition-colors duration-300 ease-in-out"
        :class="isFocused ? 'border-[#52a1f5]' : 'border-gray-300'"
    >
        <input 
            :value="modelValue"
            @input="$emit('update:modelValue', $event.target.value)"
            @focusin="isFocused = true" 
            @focusout="isFocused = false" 
            type="text"
            :placeholder="placeholder"
            @keyup.enter="$emit('enter')"
            class="bg-transparent font-medium text-gray-600 w-full placeholder:text-gray-400"
        />
        <svg 
            xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
            stroke-width="2" stroke="currentColor" 
            class="w-6 h-6 transition-all duration-300 ease-in-out"
            :class="isFocused ? 'text-[#52a1f5] [transform:rotateY(180deg)]' : 'text-gray-300'"
        >
            <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
        </svg>
    </div>
</template>

<style scoped>
    textarea:focus, input:focus{
        outline: none;
    }

    input[type=file]::file-selector-button {
        display: none;
    }

    input:-webkit-autofill,
    input:-webkit-autofill:hover, 
    input:-webkit-autofill:focus, 
    input:-webkit-autofill:active{
        -webkit-box-shadow: 0 0 0 30px white inset !important;
    }
</style>