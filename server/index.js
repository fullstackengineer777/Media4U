const express = require("express");
const session = require("express-session");
const cors = require("cors");
const app = express();
var bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");

var corsOptions = {
    origin: "http://localhost:8081"
};

app.use(cors(corsOptions));
app.use(express.json());
app.use(bodyParser.json());
app.use(cookieParser());
app.use(express.urlencoded({extended: true}));
const oneDay = 1000 * 60 * 60 * 24;
app.use(session({
    secret: "thisismysecrctekeyfhrgfgrfrty84fwir767",
    saveUninitialized: true,
    cookie: { maxAge: oneDay},
    resave: false,
}))


const db = require('./app/models');
db.sequelize.sync()
    .then(() => {
        console.log("Synced db.");
    })
    .catch((err) => {
        console.log("Failed to sync db: " + err.message);
    });

app.set("views", __dirname + '/views');
app.set("view engine", "ejs");
app.use(express.static(__dirname + '/public'));
app.get("/", (req, res) => {
    res.render('authentication/sign-in', { message: "Hello from Express and EJS!" });
});
console.log("test");
//import routes
require("./app/routes")(app);


//set the port , listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`)
});