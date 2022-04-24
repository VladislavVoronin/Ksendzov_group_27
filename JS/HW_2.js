// Напишите валидационный скрипт используя функции 

//  1. Скрипт должен на вход принимать строку.
//  2. После проверки строки выводить в консоль сообщение где будет конкретно написано, что не так в ведённой строке.
//  3. Минимум 5 символов в строке
//  4. Максимум 64 символа в строке
//  5. В строке должны быть буквы
//  6. Должна быть хотя бы одна буква в верхнем регистре
//  7. Должна быть хотя бы одна цифра
//  8. Должна быть хотя бы одна @
//  9. Строка не должна быть пустой

function validation (check_string) {
    if (typeof check_string == "string") 
    {
        if (check_string.length < 5) {console.log("Min 5 symbol")} 
        if (check_string.length > 64) {console.log("Max 64 symbol")}
        if (/[a-z]/.test(check_string) == false) {console.log("Must be letter in string")}
        if (/[A-Z]/.test(check_string) == false) {console.log("Must be one uppercase letter")}
        if (/[0-9]/.test(check_string) == false) {console.log("Must be one number")}
        if (check_string.includes("@") == false) {console.log("Must be @")}
        if (check_string.length == 0) {console.log("String can't be empty")}
    }
    else {console.log("It's not a string")};
}


validation("qqqq")