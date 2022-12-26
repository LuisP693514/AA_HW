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

// console.log(isPrime(2));
// console.log(isPrime(-1));
// console.log(isPrime(10));
// console.log(isPrime(15485863));
// console.log(isPrime(3548563));
