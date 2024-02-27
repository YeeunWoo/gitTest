//const: 상수

//객체 선언 가능
const pp = {
    "name": "홍길동",
    "addr": "서울시 서초구"
}

console.log("이름: " + pp.name);
console.log("주소: " + pp.addr);

//객체타입일 경우 멤버 변경 가능
pp.name = "이효리";

console.log("이름: " + pp.name);

//pp={} 객체 값 자체 변경은 에러
