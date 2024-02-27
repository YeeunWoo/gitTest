let irum = "홍길동";
let birth=1099;
let likefood='솥뚜껑삼겹살';

let curYear = new Date().getFullYear(); //숫자 4자리 반환

//예전 출력 방식
let result = "이름: " + irum + "\n태어난 년도: " + birth + "\n나이: " + (curYear-birth);
console.log(result);

//리터럴 방식의 출력...중간변수$
let result2 = `이름:${irum}
태어난 해: ${birth}`;

console.log(result2);
