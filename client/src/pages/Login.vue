<script setup>
import { onBeforeMount, ref } from 'vue';
import { useRouter } from 'vue-router';
import img from '../assets/vector_img.svg';
import ErrorCard from '../components/UI/ErrorCard.vue'
import Checkmark from '../components/UI/Checkmark.vue';

const router = useRouter()

const emailError = ref(false);
const emailErrorMessage = ref(false);
const loginSuccessfully = ref(false)

const callback = async (response) => {
    const res = await fetch("http://localhost:2210/login", {
        method: 'POST',
        credentials: "include",
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({ code: response.code }),
    })
    if(res.error) {
        console.log(res.error);
    } else {
        const dataFetched = JSON.parse(await res.text())
        if (res.status === 400) {
            emailError.value = true
            emailErrorMessage.value = dataFetched.message
        } else if (res.status === 200) {
            emailError.value = false
            document.cookie = "token=" + dataFetched.token + "; Secure; SameSite=Lax; path=/auth"
            loginSuccessfully.value = true
            setTimeout(() => {
                router.push('/')
            }, 3000);
        } else {
            emailError.value = true
            emailErrorMessage.value = 'Unknown error'
        }
    }
};

onBeforeMount(() => {
    document.cookie = 'token=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/auth;'
});

</script>

<template>
    <div class="w-full flex justify-center">
        <Checkmark :condition="loginSuccessfully"/>
        <ErrorCard :opened="emailError" :message="emailErrorMessage" @close="emailError = false"/>
        <div 
            class="w-4/5 max-[400px]:w-full relative flex flex-col justify-end items-end shadow-lg h-[70vh] max-h-[35rem] md:min-w-[650px] md:max-w-4xl rounded-2xl bg-gradient-to-tr from-[#52a1f5] to-[#39c0c8] before:content-[''] before:absolute before:top-0 before:right-0 before:w-full before:h-full before:bg-gradient-to-bl before:from-[#52a1f5] before:to-[#39c0c8] before:opacity-0 before:transition-opacity before:duration-300 before:rounded-2xl before:hover:opacity-100"
        >
            <div class="w-full px-10 py-5 space-y-10 h-full text-center flex text-white flex-col justify-center items-center relative">
                <p class="font-bold text-4xl">Welcome back</p>
                <p class="text-xl font-light">Sign in through your gmail and start your journey with us</p>
                <GoogleLogin :callback="callback">
                    <button class="rounded-full flex items-center gap-x-2 font-semibold text-xl transition-all duration-300 ease-in-out px-5 py-2 border-2 border-solid border-white hover:px-6 hover:tracking-wider hover:gap-x-3">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 488 512" class="w-6 h-6">
                            <path fill="currentColor" d="M488 261.8C488 403.3 391.1 504 248 504C110.8 504 0 393.2 0 256S110.8 8 248 8c66.8 0 123 24.5 166.3 64.9l-67.5 64.9C258.5 52.6 94.3 116.6 94.3 256c0 86.5 69.1 156.6 153.7 156.6c98.2 0 135-70.4 140.8-106.9H248v-85.3h236.1c2.3 12.7 3.9 24.9 3.9 41.4z"/>
                        </svg>
                        <p>Sign in</p>
                    </button>
                </GoogleLogin>
            </div>
            <img :src="img" class="h-[13rem] absolute max-sm:hidden"/>
        </div>
    </div>
</template>