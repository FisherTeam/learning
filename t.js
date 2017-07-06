const flatten = arr => arr.reduce(
    (acc, val) => acc.concat(Array.isArray(val) ? flatten(val) : val), []
);

var a = [1, 2, [1, 2, 3],
    [4, 5, 6, [3, 4, 44]]
]
console.log(flatten(a))