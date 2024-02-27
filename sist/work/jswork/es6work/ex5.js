//화살표함수와 일반함수의 차이점 -> 객체 생성X, new 사용X
//자바 Ramda(익명함수)와 같은 방식(function 키워드 대신()와 화살표를 사용해서 기존보다 간단히 함수 정의

function f1(){
    console.log("일반함수 f1");
}
f1();

let f2=()=>console.log("화살표함수 f2");
f2();

function f3(a,b){
    return a+b;
}
console.log(f3(5,3));

let f4=(a,b)=>a+b;
console.log(f4(10,5));

function f3(a,b,z=20){
    return a+b+z;
}

let f6=(a,b,z=20)=>a+b+z;
console.log(f6(10,5));

//오브젝트 함수를 개체로 만들기
let ob={
    f1:()=>{
        console.log(1);
        let f2=()=>console.log(2);
        f2();

        setTimeout(f2,1000);
    }
}
ob.f1();

