const Alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

function Cesarb (word, shifr) {
    if (word.length == 0 || shifr.length == 0) {
        console.log("Поле не может быть пустым")
    } else {
        if (/^[a-zA-Z]*$/.test(word) !== true) {
            console.log("Введите слово на английском")
        } else {
            let NewWord = [];
            for (let letter of word.toUpperCase()) {
            i = Alphabet.indexOf(letter) + Number(shifr)
            if (i >= Alphabet.length) {
                i = i - Alphabet.length
                NewWord.push(Alphabet[i])
            } else {
                NewWord.push(Alphabet[i])
            }
        }
        console.log(NewWord.join(''))
    }
}
}

Cesarb ("Hello", "-3") // (Твое слово, на сколько сдвинуть)