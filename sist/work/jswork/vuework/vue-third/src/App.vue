<template>
  <div class="menu">
    <a v-for="menu in menus" :key="menu">{{ menu }}</a>
  </div>

  <div class="shop" v-for="(shop,key) in shops" :key="key">
    <img :src="shop.imgSrc">
    <h3>{{ shop.name }}</h3>
    <p>{{ shop.company }}</p>
    <button @click="onClickLikes(key)">좋아요</button>
    <span>좋아요:{{ shop.likes }}</span>
  </div>
</template>

<script>

export default {
  data() {


    return {
      menus: ['Home', 'Shop', 'About'],
      shops: [{ name: '블랙코트', company: '자라', likes: 0, imgSrc: require('./assets/images/1.jpg') },
      { name: '베이지코트', company: '자라', likes: 0, imgSrc: require('./assets/images/2.jpg') },
      { name: '멋쟁이모자', company: 'H&M', likes: 0, imgSrc: require('./assets/images/3.jpg') },
      { name: '일자바지', company: '에잇세컨즈', likes: 0, imgSrc: require('./assets/images/4.jpg') },
      { name: '기본티', company: '구호', likes: 0, imgSrc: require('./assets/images/5.jpg') }
      ]
    }
  },
  methods:{
    
  }
}
</script>

<style lang="css" scoped>
.menu {
  background-color: rgb(38, 38, 38);
  color: white;
  padding: 10px;
  border-radius: 5px;
  font-size: 3em;
}

</style>
