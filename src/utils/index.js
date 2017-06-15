module.exports = {
    getRanStr() {
        let str = Math.random().toString(36).substr(2, 10);
        return [].reduce.call(str,
            (a, b) => a + (Math.random() * 10 > 5 ? b : b.toUpperCase()), '')
    }



}


var str = "ab-cd-efg-hi-jk";

function to() {
    return [].reduce.call(str, (a, b) => {
        return a + (a[a.length - 1] === "-" ? b.toUpperCase() : b);
    }, '')
}
console.log(res)

const map = (f, arr) => arr.reduce((result, x) => result.concat(f(x)), [])