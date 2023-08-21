module.exports = (app) => {
    console.log("loading admin management routes");

    const category = require("../controllers/category.controller.js");

    app.get("/category/overview", category.overview);
    app.get("/category/delete/(:id)", category.delete);
    app.post("/category/create", category.create);
    app.post("/category/edit", category.update);
}