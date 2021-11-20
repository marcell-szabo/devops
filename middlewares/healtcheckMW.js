const {
    HealthcheckerSimpleCheck,
} = require("nodejs-health-checker/dist/healthchecker/healthchecker");
const { HealthTypes } = require("nodejs-health-checker/dist/interfaces/types");

module.exports = function(objectrepository, viewName) {
    return function(req, res, next)  {
        res.send(HealthcheckerSimpleCheck())
    }
}