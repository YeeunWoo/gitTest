<template>
    <div>
        <h1 class="alert laert-success">CompositionApi방식</h1>

        <h3>Counter:{{ counter }}</h3>
        <button v-on:click="numIncre">증가</button>
        <button @click="numDecre">감소</button>

    </div>
</template>

<script>
import { ref } from 'vue';

export default {
    setup() {
        const counter=ref(0);
        const numIncre=()=>counter.value++;
        const numDecre=()=>counter.value--;

        return {
            //return에 변수나 메서드명 등록 안 하면 사용 불가
            counter,
            numIncre,
            numDecre
        }
    }
}
</script>

<style lang="scss" scoped></style>