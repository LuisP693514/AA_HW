function titleize(arr, callback) {

    let new_arr = arr.map(element => element = `Mx. ${element} Jingleheimer Schmidt`
    );

    callback(new_arr);
}
function printCallback(arr) {
    arr.forEach(element => {
        console.log(`${element} `);
    });
}
titleize(["Mary", "Brian", "Leo"], printCallback);
