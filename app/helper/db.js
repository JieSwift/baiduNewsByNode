/*
* @Author: HMJ
* @Date:   2016-10-21 22:21:03
* @Last Modified by:   HMJ
* @Last Modified time: 2016-10-21 22:45:15
* @comment:数据库连接连接模块
*/

'use strict';
var express = require('express');
var router = express.Router();

var orm = require("orm");
orm.connect("mysql://root:123456@localhost/baidunews", function (err, db) {

});

module.exports = orm.connect("mysql://root:123456@localhost/baidunews", function (err, db) {
  if(err) throw err;
  console.log('连接成功');
});
;

