
module.exports = (app) => {
    require("./auth.routes")(app);
    require("./test.routes")(app);
    require("./category.routes")(app);
}


