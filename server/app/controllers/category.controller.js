const db = require("../models");
const Category = db.categories;

exports.overview = (req, res) => {
    Category.findAll()
        .then(data => {            
            res.render("category/overview", {data: data});
        })
        .catch(err => {
            res.status(500).send({
                message: err.message || "Some error occurred while retrieving categories."
            });
        })
}

exports.delete = (req, res) => {
    const id = req.params.id;
    console.log("deleting category with id = ", id);
    Category.destroy({ where: {id : id}})
        .then(num => {
            res.redirect("/category/overview");
            // if(num == 1){
            //     res.send({
            //         message: "Category was deleted successfully!"
            //     });
            // } else {
            //     res.send({
            //         message: `Cannot delete Category with id=${id}. Maybe Category was not found!`
            //     })
            // }
        })
        .catch(err => {
            res.status(500).send({
                message: "Could not delete Category with id=" + id
            });
        });
}

exports.create = (req, res) => {
    const new_category = req.body.new_category;

    if (!new_category) {
        res.status(400).send({
          message: "Category name can not be empty!"
        });
        return;
    }

    // Save Category in the database
    Category.create({category: new_category})
        .then(data => {
            res.send(data);
            // res.redirect("/category/overview");
        })
        .catch(err => {
            res.status(500).send({
            message:
                err.message || "Some error occurred while creating the Tutorial."
            });
        });

}

exports.update = (req, res) => {
    const id = req.body.id;
    const category = req.body.category;

    Category.update(req.body, {
      where: { id: id }
    })
      .then(num => {
        if (num == 1) {
          res.send({
            message: "Category was updated successfully."
          });
        } else {
          res.send({
            message: `Cannot update Category with id=${id}. Maybe Category was not found or req.body is empty!`
          });
        }
      })
      .catch(err => {
        res.status(500).send({
          message: "Error updating Category with id=" + id
        });
      });
  };