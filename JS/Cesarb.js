const Alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

function Cesarb (word, shifr) {
    if (/^[a-zA-Z]*$/.test(word) == true) {
        let NewWord = [];
        for (let letter of word.toUpperCase()) {
            i = Alphabet.indexOf(letter) + shifr
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

Cesarb ("Hello", -3) // (Твое слово, на сколько сдвинуть)