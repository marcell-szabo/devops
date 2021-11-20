const mongoose = require('mongoose')
mongoose.connect('mongodb://mongo/laupqq', { useNewUrlParser: true, useUnifiedTopology: true },(err) => { if(err) {console.log("databaseerror")}})

module.exports = mongoose