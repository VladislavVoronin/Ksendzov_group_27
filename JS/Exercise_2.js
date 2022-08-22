// Написать функцию, которая объединит все числа из диапазона в строку
function NumberToString (x, y) {
var str = ''; 
for (i = x; i <= y;i++){
  str += i.toString()+"|";
}
console.log(str)
}

NumberToString(1,20)