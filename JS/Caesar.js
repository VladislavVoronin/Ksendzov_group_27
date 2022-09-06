const Alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

function Cesarb (word) {
    if (/^[a-zA-Z]*$/.test(word) == true) {
        let NewWord = [];
        for (let letter of word.toUpperCase()) {
            i = Alphabet.indexOf(letter) + 1
            NewWord.push(Alphabet[i])
        }
        console.log(NewWord.join(''))
    }

}

Cesarb ("Hello")