// madLib

function madLib(verb, adjective, noun) {
    return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`
}

// isSubstring

function isSubstring(string, substring) {
    return string.includes(substring);
}

// fizzBuzz

function fizzBuzz(array) {
    let new_arr = [];

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            new_arr.push(el);
        }
    });

    return new_arr;
}

// isPrime

function isPrime(n) {
    if (n < 2) { return false; }

    for (let i = 2; i < n; i++) {
        if (n % i === 0) {
            return false;
        }
    }

    return true;
}

// sumOfNPrimes

function sumOfNPrimes (n) {
    let sum = 0;
    let countPrimes = 0;
    let i = 2;
  
    while (countPrimes < n) {
      if (isPrime(i)) {
        sum += i;
        countPrimes++;
      }
      i++;
    }
  
    return sum;
}
