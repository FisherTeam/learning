const fs = require('fs');

const dir = fs.readdirSync(__dirname + '/src');

((str = ``) => {
    for (v of dir) {
        let file = v.split('.')[0];
        str += (file + `: require('./${file}'),`);
    }
    fs.writeFileSync(__dirname + '/done.js', `module.exports = { ${str} }`)
})()