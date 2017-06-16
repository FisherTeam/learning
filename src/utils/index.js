module.exports = {
    getRanStr() {
        let str = Math.random().toString(36).substr(2, 10);
        return [].reduce.call(str,
            (a, b) => a + (Math.random() * 10 > 5 ? b : b.toUpperCase()), '')
    }

}

var str = "ab-cd-efg-hi-jk";

function to() {
    str.split("-").reduce((a, b) => a + b.replace(b[0], b[0].toUpperCase()))
}

const map = (f, arr) => arr.reduce((result, x) => result.concat(f(x)), [])