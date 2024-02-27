<template>
    <div>
        <h1 class="alert laert-info">OptionApi방식</h1>
        <button v-on:click="countIncre">Counter:{{ counter }}</button>
    </div>
</template>

<script>
export default {
    data() {
        return {
            counter: 0
        }
    },
    meshods: {
        countIncre() {
            this.counter++;
        }
    },
    mounted(){
        console.log("컴포넌트가 마운트됨");
    }
}
</script>

<style lang="scss" scoped></style>