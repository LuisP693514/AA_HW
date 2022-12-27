class Elephant {
    constructor(name, height, tricks) {
        this.name = name;
        this.height = height;
        this.tricks = tricks;
    }
}
Elephant.prototype.trumpet = function () {
    console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};
Elephant.prototype.grow = function () {
    this.height += 12;
};
Elephant.prototype.addTrick = function (trick) {
    this.tricks.push(trick);
};
Elephant.prototype.play = function () {
    let randomIndex = Math.floor(Math.random() * this.tricks.length);

    console.log(`${this.name} is ${this.tricks[randomIndex]}!`);
};
let ele = new Elephant("bob", 5,
    [
        "rolling over",
        "jumping through the hoops",
        "typing on the keyboard"
    ]);
// ele.trumpet(); // bob the elephant goes 'phrRRRRRRRRRRR!!!!!!!'

// console.log(ele.height); // 5

// ele.grow();
// console.log(ele.height); // 17

// ele.addTrick("clapping");
// console.log(ele.tricks); /* [
//                                 'rolling over',
//                                 'jumping through the hoops',
//                                 'typing on the keyboard',
//                                 'clapping'
//                             ] */
// ele.play(); // rng trick gets printed out


module.exports = Elephant