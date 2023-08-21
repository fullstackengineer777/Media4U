const DataTypes = require("sequelize");

module.exports = (sequelize, Sequelize) => {
    const Category = sequelize.define("category", {
        category: {
            type: DataTypes.STRING,
            allowNull: false
        }
    });

    return Category;
}