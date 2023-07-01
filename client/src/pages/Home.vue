<script setup>
import { ref } from 'vue';
import Modal from '../components/UI/Modal.vue';
import ModalCard from '../components/UI/ModalCard.vue';
import Button from '../components/UI/Button.vue'
import StatisticCard from '../components/UI/StatisticCard.vue';
import Table from '../components/UI/Table.vue'
import PersonalCard from '../components/UI/PersonalCard.vue';

const condition = ref(false);

const header = ref([
    {
        content: 2022,
        colWidth: 'min-w-[10rem]',
        align: 'text-center',
        key: '2022'
    },
    {
        content: 2023,
        colWidth: 'min-w-[10rem]',
        align: 'text-center',
        key: '2023'
    },
    {
        content: 2024,
        colWidth: 'min-w-[10rem]',
        align: 'text-center',
        key: '2024'
    },
]);

const body = ref([
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
    {
        '2022': 'Lorem ipsum',
        '2023': 'Lorem ipsum',
        '2024': 'Lorem ipsum',
    },
]);

const users = ref([
    {
        name: 'Minh Tuan',
        region: 'Ha Noi'
    },
    {
        name: 'Ha Phuong',
        region: 'Da Nang'
    },
    {
        name: 'Minh Phuong',
        region: 'Thanh Hoa'
    },
    {
        name: 'Phuong',
        region: 'Ba Vi'
    },
    {
        name: 'Tran Phuong',
        region: 'Hue'
    },
    {
        name: 'Minh Phuong',
        region: 'Ha Noi'
    },
    {
        name: 'Tuan Phuong',
        region: 'Lao cai'
    },
    {
        name: 'Phuong Vu',
        region: 'Yen Bai'
    },
    {
        name: 'Tran Tuan',
        region: 'Nghe An'
    },
]);

</script>

<template>
    <div>
        <div class="bg-white rounded-xl shadow flex flex-col space-y-4 p-4 mb-4">
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                Excepteur sint occaecat cupidatat non proident,
                sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <Button bg-color="success" @click="condition = true" class="w-fit">Show modal</Button>
        </div>
        <div class="w-full flex max-lg:flex-col lg:items-start max-lg:space-y-4 lg:space-x-2">
            <div class="w-2/3 max-lg:w-full bg-white rounded-xl p-4 shadow">
                <Table
                    :header="header"
                    :data="body"
                    max-height="max-h-[20rem]"
                    name="Statistic over 3 years"
                >
                    <template #action-header>
                        Action
                    </template>
                    <template #action>
                        <Button border-radius="full" padding="px-5 py-2">Active</Button>
                    </template>
                </Table>
            </div>
            <div class="w-1/3 max-lg:w-full bg-white rounded-xl shadow px-4 pb-4 space-y-2">
                <p class="font-semibold text-xl py-2 bg-white">
                    Recent access
                </p>
                <div class="w-full max-h-[20.5rem] overflow-y-scroll">
                    <PersonalCard 
                        v-for="item in users"
                        :key="item"
                        :name="item.name"
                        :region="item.region"
                    />
                </div>
            </div>
        </div>
        <Modal :condition="condition" @exit-modal="condition = false">
            <ModalCard @exit-modal="condition = false" class="max-w-4xl rounded-lg shadow">
                <template #title>
                    <p class="text-center text-3xl font-semibold">Lorem ipsum</p>
                </template>
                <template #body>
                    <div class="max-h-96 overflow-y-scroll">
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
                            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
                            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
                            Excepteur sint occaecat cupidatat non proident,
                            sunt in culpa qui officia deserunt mollit anim id est laborum.
                        </p>
                    </div>
                </template>
            </ModalCard>
        </Modal>
    </div>
</template>

<style scoped>
      
</style>