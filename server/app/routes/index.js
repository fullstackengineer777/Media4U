
module.exports = (app) => {
    require("./auth.routes")(app);
    require("./test.routes")(app);
}


