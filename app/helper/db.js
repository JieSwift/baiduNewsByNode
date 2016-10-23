/*
 * @Author: HMJ
 * @Date:   2016-10-21 22:21:03
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-22 21:47:02
 * @comment:数据库连接连接模块
 */

'use strict';
var orm = require('orm');
// DB config
var opts ={
    database:'baidunews',
    protocol:'mysql',
    host:'127.0.0.1',
    username:'root',
    password:'123456',
    query:{
        pool:true,
    },
};


module.exports = orm.connect(opts, function(err, db) {
    if (err) {
        throw new Error(err);
    }
    if(db){
        return db;
    }
});
