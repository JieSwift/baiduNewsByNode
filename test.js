/*
* @Author: HMJ
* @Date:   2016-10-22 20:32:27
* @Last Modified by:   HMJ
* @Last Modified time: 2016-10-22 20:57:13
*/

'use strict';
var express = require('express');
var app = express();

var conn = require('./app/helper/db.js');

var User=conn.define('news',{
    id:Number,
    newsTitle:String,
    newsType:String,
    newsSrc:String,
    newsTime:Date,
    newsImg:String,
});

app.get('/',function(req,res) {
    User.find('',function(err,user){
        console.log('User found: ', user.length);
        console.log('User name: ', user[0].name);
        console.log('User age : ', user[0].age);
        res.send('user');
    });
});

// module.exports = function(){

/ }


