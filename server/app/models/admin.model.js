const DataTypes = require("sequelize");

module.exports = (sequelize, Sequelize) => {

    const Admin = sequelize.define("admin", {
        first_name: {
            type: DataTypes.STRING,
            allowNull: false
        },
        last_name: {
            type: DataTypes.STRING,
            allowNull: false,  
        },
        age: {
            type: DataTypes.INTEGER,
            allowNull: false
        },
        mobile: {
            type:DataTypes.STRING,
            allowNull: false
        },
        email: {
            type: DataTypes.STRING,
            allowNull: false
        },
        password: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        allow: {
            type: DataTypes.BOOLEAN,
            allowNull: false
        }
        
    });
    
    return Admin;
}