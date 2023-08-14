const db = require("../models");
const User = db.users;
const Admin = db.admins;
const Op = db.Sequelize.Op;
var bcrypt = require("bcryptjs");


exports.create = (req, res) => {

}

exports.findAll = (req, res) => {

}   

exports.findOne = (req, res) => {

}

exports.login  = (req, res) => {

}

exports.dispAdminSignin = (req, res) => {
    res.render("authentication/sign-in");
}

exports.adminSignin = (req, res) => {
    Admin.findOne({
        where:{
            email: req.body.email
        }
    }).then(admin => {
        if(!admin){
            return res.status(404).send({message: "Admin Not Found"});
        }

        var passwordIsValid = bcrypt.compareSync( req.body.password, admin.password);

        if(!passwordIsValid){
            return res.status(401).send({
                message: "Invalid Password!"
            });
        }

        req.session.loggedin = true;
        req.session.email = req.body.email;
        req.session.role = "admin"
        res.render("admin");

    })
    
}


exports.dispAdminSignup = (req, res) => {       
    res.render('authentication/sign-up');
}

exports.adminSignup = (req, res) => {
    const { first_name, last_name, phone, age, email, password, confirm_password } = req.body;
    //Validate request
    if(password != confirm_password){
        res.status(400).send({
            message: "password doesn't match!"
        });
        return;
    }

    const admin = {
        first_name: req.body.first_name,
        last_name: req.body.last_name,
        age: req.body.age,
        mobile: req.body.mobile,
        email: req.body.email,
        password: bcrypt.hashSync(req.body.password, 8),
        allow: false
    }

    Admin.create(admin)
      .then(data => {
            res.redirect("/admin-signin");
            // res.send(data); 
      })
      .catch(err => {
        res.status(500).send({
          message:
            err.message || "Some error occurred while creating the Admin."
        });
      });
}

exports.adminLogout = (req, res) => {
    req.session.destroy();
    res.redirect("/");
}