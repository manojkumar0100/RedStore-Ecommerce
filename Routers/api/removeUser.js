const express = require('express');
const router = express.Router();
const mysql = require('../../database');
router.post('/' , (req,res)=>{
    const user_id = req.body.user_id;
    console.log(user_id);
    console.log("wroking");
    // var sql = `delete from order where user_id = ${user_id}`;
    // mysql.query(sql);
    // var sql = `delete from order_info where user_id = ${user_id}`;
    // mysql.query(sql);
    // var sql = `delete from cart where user_id = ${user_id}`;
    
    var sql = `delete from users where user_id = ${user_id}`;
    mysql.query(sql);
    mysql.query(sql , (err,result)=>{
        res.send("success");
    });  
})
module.exports = router;