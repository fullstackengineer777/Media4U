const DataTypes = require("sequelize");

module.exports = (sequelize, Sequelize) => {

    const User = sequelize.define("user", {
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
        code: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        allow: {
            type: DataTypes.BOOLEAN,
            allowNull: false
        }

    });
    
    return User;
}