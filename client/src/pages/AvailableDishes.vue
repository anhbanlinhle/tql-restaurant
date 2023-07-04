<script setup>
import { onMounted } from 'vue';

const fetchDishes = async () => {
    const res = await fetch('http://localhost:2210/dishes', {
        credentials: "include",
        headers: {
            'Content-Type': 'application/json',
        },
    })
    if (res.error) {
        console.log(res.error);
    }
    const dataFetched = await JSON.parse(res.text());
    console.log(dataFetched);
};

onMounted(() => {
    fetchDishes()
});
</script>

<template>
    <div>
        Available dishes
    </div>
</template>