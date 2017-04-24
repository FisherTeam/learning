module.exports = {
    getToken() {
        return Math.random().toString(36).substr(2, 15)
    }
}