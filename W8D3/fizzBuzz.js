function fizzBuzz(array) {

    let arr = new Array;

    array.forEach(element => {
        
        if ((element % 3 === 0) ^ (element % 5 === 0)) {
            
            arr.push(element);
        
        };

    });

    return arr;
    
}

// console.log(fizzBuzz([1,2,3,4,5,6,7,8,15,20]));