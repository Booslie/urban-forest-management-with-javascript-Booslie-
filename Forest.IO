let cityName = "Techville";
let parkCount = 5;
let parks = [
    {
        name: "Central Park",
        trees: [
            { species: "Birch", age: 7, health: "Good", height: 18 }),
            { species: "Sugar Maple", age: 5, health: "Good", height: 20 },
            { species: "Birch", age: 7, health: "Good", height: 18 }
        ],
        facilities: ["swimming pool"]
    },
    {
        name: "Riverside Greenspace",
        trees: [
            { species: "Oak", age: 30, health: "Excellent", height: 25 },
            { species: "Redwood", age: 50, health: "Good", height: 100 }
        ],
        facilities: ["boating", "fishing"]
    },
    {
        name: "Hilltop Park",
        trees: [
            { species: "Pine", age: 10, health: "Fair", height: 15 }
        ],
        facilities: ["hiking trails"]
    }];
    const centralParkTrees = parks[0].trees.map(tree => tree.species);

    const totalAge = parks.flatMap(park => park.trees).reduce((acc, tree) => acc + tree.age, 0);
const averageTreeAge = totalAge / parks.flatMap(park => park.trees).length;

const tallestTree = parks.flatMap(park => park.trees).reduce((tallest, tree) => tree.height > tallest.height ? tree : tallest);

const parksJSON = JSON.stringify(parks);

console.log(parks[0].name, parks[0].facilities);

console.log(parks[2].trees[0].species);


