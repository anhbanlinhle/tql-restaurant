<script setup>
import { ref } from 'vue';
import { useRouter } from 'vue-router';
import Input from '../components/UI/Input.vue';

const router = useRouter()

const email = ref(null);
const password = ref(null)
const wrongEmail = ref(false)
const wrongPassword = ref(false)

const signIn = () => {
    router.push('/auth/login')
};

</script>

<template>
    <div class="">

    </div>
</template>