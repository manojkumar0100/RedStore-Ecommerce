const express = require('express');
const router = express.Router();
const mysql = require('../../database');
router.get('/' , (req,res)=>{
    var sql = `select * from users`;
    mysql.query(sql , (err,users)=>{
        
        res.render('userlist' , {users:users});
    })
})

module.exports = router;




 