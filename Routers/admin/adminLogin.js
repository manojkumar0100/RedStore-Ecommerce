const express = require('express');
const mysql = require('../../database');
const session = require('express-session');
const router = express.Router();
router.get('/' , (req,res)=>{
    req.session.user = null;
    res.render('adminlogin');
})
router.post('/' , (req , res)=>{
    const username = req.body.username;
    const pass = req.body.password;
    var sql = `select * from admin where adm_name = "${username}"`;
    mysql.query(sql , (err,results)=>{
        if(err) throw err;
        const user = results[0];
        const payload = {};
        payload.adm_name = "";
        if(user.adm_pass == pass){
          
            
            
                
            
           req.session.user = user;
           payload.adm_name = user.adm_name;
           console.log(payload);
           return  res.redirect('/adminDashboard');
        }
        return res.redirect('/adminlogin');
    })
})
module.exports = router;