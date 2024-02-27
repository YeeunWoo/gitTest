let arr1 = [2, 3, 6];
let arr2 = [6, 7];
let arr3 = [11, 12, ...arr1, 44, ...arr2];
console.log(arr3.length); //8
console.dir(arr3);

let arr4 = [...[100, 200], ...arr2];
console.log(arr4);

function fsum(arr) {
    let sum = 0;
    //방법1
    for (i = 0; i < arr.length; i++) {
        sum += arr[i];
    }
    console.log(sum);
}
fsum(arr2);

function func3(a, b, c, d, z) {
    console.log(a, b, c, d, z);
}
//arr3를 인자로 보내서 호출
//func3(arr3);//undefined undefined undefined undefined
func3(...arr3);