<script setup>
import DishCategoryButton from '../components/dishes/DishCategoryButton.vue'
import DishCard from '../components/dishes/DishCard.vue';
import Modal from '../components/UI/Modal.vue';
import Button from '../components/UI/Button.vue';
import SearchBar from '../components/UI/SearchBar.vue';
import { computed, onMounted, ref, watch } from 'vue';
import { useRoute } from 'vue-router';

const route = useRoute()

const dishTypeMap = ref({
    appetizer: 'Appetizer',
    drink: 'Drink',
    dessert: 'Dessert',
    main_dish: 'Main dish',
    side_dish: 'Side dish'
})

const colorMap = ref({
    main_dish: {
        bg: 'bg-[#52a1f5]',
        text: 'text-[#52a1f5]'
    },
    appetizer: {
        bg: 'bg-[#39c0c8]',
        text: 'text-[#39c0c8]'
    },
    side_dish: {
        bg: 'bg-[#6c47ff]',
        text: 'text-[#6c47ff]'
    },
    dessert: {
        bg: 'bg-[#f34971]',
        text: 'text-[#f34971]'
    },
    drink: {
        bg: 'bg-[#aabb5d]',
        text: 'text-[#aabb5d]'
    },
});

const tokenValue = document.cookie
                    .split("; ")
                    .find((row) => row.startsWith("token="))
                    ?.split("=")[1];

const foodArray = ref([])
const category = computed(() => {
    if(route.params.category === '') {
        return '';
    } else {
        return `?category${route.params.category}`
    }
})

const fetchDishes = async () => {
    foodArray.value = []
    const res = await fetch(`http://localhost:2210/dishes${category.value}`, {
        credentials: "include",
        headers: {
            'Content-Type': 'application/json',
            'Authorization': tokenValue
        },
    })
    if (res.error) {
        console.log(res.error);
    }
    const dataFetched = JSON.parse(await res.text());
    foodArray.value = [...dataFetched.dishes]
};

const dishInfoModalOpened = ref(false)
const ingredientShowed = ref(false)
const selectedDishId = ref(null)
const selectedDish = ref(null)
const handleDishInfoModal = (dishId) => {
    dishInfoModalOpened.value = true
    ingredientShowed.value = false
    selectedDishId.value = dishId
    fetchSpecifiedDish()
}

const fetchSpecifiedDish = async () => {
    selectedDish.value = null
    const res = await fetch(`http://localhost:2210/dish/${selectedDishId.value}`, {
        credentials: "include",
        headers: {
            'Content-Type': 'application/json',
            'Authorization': tokenValue
        },
    })
    if (res.error) {
        console.log(res.error);
    }
    const dataFetched = JSON.parse(await res.text());
    selectedDish.value = {...dataFetched}
}

const inputDishName = ref(null)
let inputTimeout
const findDish = () => {
    console.log('finding');
}

watch(inputDishName, () => {
    clearTimeout(inputTimeout);
    inputTimeout = setTimeout(findDish, 2000);
})

watch(() => route.params, () => {
    fetchDishes()
})

onMounted(() => {
    fetchDishes()
});
</script>

<template>
    <div class="w-full">
        <div class="w-full flex max-sm:flex-col max-sm:space-y-2 justify-between sm:items-center">
            <p class="text-3xl font-medium text-gray-600"><span class="font-bold text-[#39c0c8]">Available</span> dishes</p>
            <SearchBar v-model="inputDishName" placeholder="Find a dish..." @enter="findDish"/>
        </div>
        <div class="w-full flex items-center space-x-4 overflow-x-scroll py-2">
            <DishCategoryButton name="Appetizer" to="appetizer" color="success">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-salad w-9 h-9" viewBox="0 0 24 24" stroke-width="1.75" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M4 11h16a1 1 0 0 1 1 1v.5c0 1.5 -2.517 5.573 -4 6.5v1a1 1 0 0 1 -1 1h-8a1 1 0 0 1 -1 -1v-1c-1.687 -1.054 -4 -5 -4 -6.5v-.5a1 1 0 0 1 1 -1z"></path>
                    <path d="M18.5 11c.351 -1.017 .426 -2.236 .5 -3.714v-1.286h-2.256c-2.83 0 -4.616 .804 -5.64 2.076"></path>
                    <path d="M5.255 11.008a12.204 12.204 0 0 1 -.255 -2.008v-1h1.755c.98 0 1.801 .124 2.479 .35"></path>
                    <path d="M8 8l1 -4l4 2.5"></path>
                    <path d="M13 11v-.5a2.5 2.5 0 1 0 -5 0v.5"></path>
                </svg>
            </DishCategoryButton>
            <DishCategoryButton name="Main dish" to="main-dish" color="primary">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-meat w-9 h-9" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M13.62 8.382l1.966 -1.967a2 2 0 1 1 3.414 -1.415a2 2 0 1 1 -1.413 3.414l-1.82 1.821"></path>
                    <path d="M5.904 18.596c2.733 2.734 5.9 4 7.07 2.829c1.172 -1.172 -.094 -4.338 -2.828 -7.071c-2.733 -2.734 -5.9 -4 -7.07 -2.829c-1.172 1.172 .094 4.338 2.828 7.071z"></path>
                    <path d="M7.5 16l1 1"></path>
                    <path d="M12.975 21.425c3.905 -3.906 4.855 -9.288 2.121 -12.021c-2.733 -2.734 -8.115 -1.784 -12.02 2.121"></path>
                </svg>
            </DishCategoryButton>
            <DishCategoryButton name="Side dish" to="side-dish" color="neon">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-egg-fried w-9 h-9" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M12 12m-3 0a3 3 0 1 0 6 0a3 3 0 1 0 -6 0"></path>
                    <path d="M14 3a5 5 0 0 1 4.872 6.13a3 3 0 0 1 .178 5.681a3 3 0 1 1 -4.684 3.626a5 5 0 1 1 -8.662 -5a5 5 0 1 1 4.645 -8.856a4.982 4.982 0 0 1 3.651 -1.585z"></path>
                </svg>
            </DishCategoryButton>
            <DishCategoryButton name="Dessert" to="dessert" color="red">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-lemon w-9 h-9" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M17.536 3.393c3.905 3.906 3.905 10.237 0 14.143c-3.906 3.905 -10.237 3.905 -14.143 0l14.143 -14.143"></path>
                    <path d="M5.868 15.06a6.5 6.5 0 0 0 9.193 -9.192"></path>
                    <path d="M10.464 10.464l4.597 4.597"></path>
                    <path d="M10.464 10.464v6.364"></path>
                    <path d="M10.464 10.464h6.364"></path>
                </svg>
            </DishCategoryButton>
            <DishCategoryButton name="Drink" to="drink" color="celery">
                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-bottle w-9 h-9" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                    <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                    <path d="M10 5h4v-2a1 1 0 0 0 -1 -1h-2a1 1 0 0 0 -1 1v2z"></path>
                    <path d="M14 3.5c0 1.626 .507 3.212 1.45 4.537l.05 .07a8.093 8.093 0 0 1 1.5 4.694v6.199a2 2 0 0 1 -2 2h-6a2 2 0 0 1 -2 -2v-6.2c0 -1.682 .524 -3.322 1.5 -4.693l.05 -.07a7.823 7.823 0 0 0 1.45 -4.537"></path>
                    <path d="M7 14.803a2.4 2.4 0 0 0 1 -.803a2.4 2.4 0 0 1 2 -1a2.4 2.4 0 0 1 2 1a2.4 2.4 0 0 0 2 1a2.4 2.4 0 0 0 2 -1a2.4 2.4 0 0 1 1 -.805"></path>
                </svg>
            </DishCategoryButton>
        </div>
        <div class="w-full grid grid-cols-1 min-[480px]:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 grid-rows-[repeat(x,max-content),1fr] gap-4 relative z-0">
            <DishCard 
                v-if="foodArray.length > 0"
                v-for="item in foodArray" 
                :key="item.id" 
                :dish-name="item.name" 
                :dish-type="dishTypeMap[item.type]"
                :img-src="item.img"
                :id="item.id"
                @open-modal="handleDishInfoModal"
            />
            <div
                v-else
                class="w-full rounded-2xl p-2.5 shadow-md flex flex-col items-center bg-white space-y-2 animate-pulse"
            >
                <div class="w-full pt-[75%] rounded-2xl bg-slate-200"></div>
                <div class="w-full h-4 rounded-2xl bg-slate-200"></div>
                <div class="w-full h-4 rounded-2xl bg-slate-200"></div>
            </div>
        </div>
        <Modal :condition="dishInfoModalOpened" @exit-modal="dishInfoModalOpened = false">
            <div :class="colorMap[selectedDish.type].bg" class="rounded-xl overflow-hidden transition-all duration-700 ease-in-out min-w-[600px] max-w-3xl relative flex">
                <svg @click="dishInfoModalOpened = false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="w-6 h-6 cursor-pointer absolute z-10 right-2 top-2 transition-colors duration-500 ease-in-out" :class="ingredientShowed ? 'text-white' : colorMap[selectedDish.type].text">
                    <path fill-rule="evenodd" d="M12 2.25c-5.385 0-9.75 4.365-9.75 9.75s4.365 9.75 9.75 9.75 9.75-4.365 9.75-9.75S17.385 2.25 12 2.25zm-1.72 6.97a.75.75 0 10-1.06 1.06L10.94 12l-1.72 1.72a.75.75 0 101.06 1.06L12 13.06l1.72 1.72a.75.75 0 101.06-1.06L13.06 12l1.72-1.72a.75.75 0 10-1.06-1.06L12 10.94l-1.72-1.72z" clip-rule="evenodd" />
                </svg>
                <div class="w-full bg-white px-4 py-4 flex flex-col items-end relative gap-y-2">
                    <p class="w-full text-center text-4xl font-semibold" :class="colorMap[selectedDish.type].text">{{ selectedDish.name }}</p>
                    <img :src="selectedDish.img" class="rounded-xl w-full"/>
                    <button 
                        @click="ingredientShowed = !ingredientShowed"
                        class="py-2 px-3 flex items-center gap-2 rounded-xl text-white group"
                        :class="colorMap[selectedDish.type].bg"
                    >
                        Ingredient
                        <svg 
                            xmlns="http://www.w3.org/2000/svg" 
                            class="icon icon-tabler icon-tabler-fish h-5 w-5 transition-transform duration-500 ease-in-out" 
                            :class="ingredientShowed ? '-rotate-180' : ''"
                            viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" 
                            stroke-linecap="round" stroke-linejoin="round"
                        >
                            <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                            <path d="M16.69 7.44a6.973 6.973 0 0 0 -1.69 4.56c0 1.747 .64 3.345 1.699 4.571"></path>
                            <path d="M2 9.504c7.715 8.647 14.75 10.265 20 2.498c-5.25 -7.761 -12.285 -6.142 -20 2.504"></path>
                            <path d="M18 11v.01"></path>
                            <path d="M11.5 10.5c-.667 1 -.667 2 0 3"></path>
                        </svg>
                    </button>
                </div>
                <div class="text-white transition-all duration-500 ease-in-out space-y-2 mt-2" :class="ingredientShowed ? 'w-60 px-4 pt-6' : 'w-0'">
                    <div v-for="item in selectedDish.ingredients" :key="item" class="flex items-center space-x-1">
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-fish w-4 h-4" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                <path d="M16.69 7.44a6.973 6.973 0 0 0 -1.69 4.56c0 1.747 .64 3.345 1.699 4.571"></path>
                                <path d="M2 9.504c7.715 8.647 14.75 10.265 20 2.498c-5.25 -7.761 -12.285 -6.142 -20 2.504"></path>
                                <path d="M18 11v.01"></path>
                                <path d="M11.5 10.5c-.667 1 -.667 2 0 3"></path>
                            </svg>
                        </div>
                        <p class="">{{ item }}</p>
                    </div>
                </div>
            </div>
        </Modal>
    </div>
</template>