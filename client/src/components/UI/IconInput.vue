<script setup>
const props = defineProps(['modelValue'])
const emit = defineEmits(['update:modelValue']);
</script>

<template>
    <div class="flex items-center px-3 py-2 space-x-2 outline outline-[#1d1d1d]">
        <slot></slot>
        <input
            :value="modelValue"
            @input="$emit('update:modelValue', $event.target.value)"
        />
    </div>
</template>