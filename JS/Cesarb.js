const Alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

function cesarb (word, shifr) {
    if (word.length == 0 || shifr.length == 0) {
        console.log("Поле не может быть пустым")
    } else {
        if (/^[a-zA-Z]*$/.test(word) !== true) {
            console.log("Введите слово на английском")
        } else {
            if ((shifr) < -25 || (shifr) > 25) {
                console.log("Введите значение не менее -25 и не более 25")
            } else {
            let NewWord = [];
            for (let letter of word.toUpperCase()) {
            i = Alphabet.indexOf(letter) + (shifr)
            if ( i >= 0 && i <= Alphabet.length) {
                NewWord.push(Alphabet[i])
            } else {
                if (i > Alphabet.length) {
                    i = i - Alphabet.length
                    NewWord.push(Alphabet[i])
                } if (i < 0) {
                    i = Alphabet.length + i
                    NewWord.push(Alphabet[i])
                }
            }
        } console.log(NewWord.join(''))
        } 
    }
} 
}

cesarb ("Hello", -20) // (Твое слово, на сколько сдвинуть(значение от -25 до 25))