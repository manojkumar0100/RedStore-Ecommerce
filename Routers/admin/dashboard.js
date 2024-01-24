const express = require('express');
const router = express.Router();
const session = require('express-session');
const payload = {};
    payload.adm_name = "";
router.get('/' , (req,res)=>{
    
    
        payload.adm_name = req.session.user.adm_name;
    console.log(payload);
    res.render('adminDashboard',payload);
})

module.exports = router;