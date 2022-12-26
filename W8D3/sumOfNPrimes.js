function isPrime(n) {
    
    let prime = true;
    let arr = range(2, n-1);

    if (n < 2) {
        prime = false;
    };

    arr.forEach(element => {
        
        if (n % element === 0) {
            // console.log("im in");
            prime = false;

        };

    });

    return prime;

}

function range(start, end) {
    const ans = [];
    for (let i = start; i <= end; i++) {
        ans.push(i);
    };
    return ans;
}

function firstNPrimes(n) {

    const ans = [];
    let i = 0;

    while (ans.length < n) {

        if (isPrime(i)){
            ans.push(i);
        }

        i++;
    }
    
    return ans;
}

function sumOfNPrimes(n) {

    const primes = firstNPrimes(n);

    let sum = 0;

    primes.forEach(element => {

        sum += element;

    });

    return sum;

}

// console.log(sumOfNPrimes(0)); // 0
// console.log(sumOfNPrimes(1)); // 2
// console.log(sumOfNPrimes(4)); // 17