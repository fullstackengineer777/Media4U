

isAdmin = (req ,res , next) => {
    
    if(!req.session.role === "admin" || !req.session.loggedin)
        return res.redirect("/admin-signin");
    
    next();
}