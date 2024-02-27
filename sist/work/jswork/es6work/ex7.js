//비교연산자

let a = 6;
let b = "6";

console.log(a==b); //값으로만 비교하기 때문에 true
console.log(a===b); //타입까지 같아야 true

console.log(Object.is(a,b)); //===과 동일
console.log(`a의 타입은 ${typeof(a)}입니다`);
console.log(`a의 타입은 ${typeof(b)}입니다`);