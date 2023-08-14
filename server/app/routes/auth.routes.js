
module.exports = app => {
    const auth = require("../controllers/auth.controller.js");

    var router = require("express").Router();

    console.log("loading auth routes");

    app.get("/admin-signin", auth.dispAdminSignin);
    app.post("/admin-signin", auth.adminSignin);
    // app.get("/admin-signup", (req, res, next) => {
    //     console.log("disp sign up page");
    // })
    app.get("/admin-signup", auth.dispAdminSignup)
    
    app.post("/admin-signup", auth.adminSignup);
    app.post("/admin-logout", auth.adminLogout);

}