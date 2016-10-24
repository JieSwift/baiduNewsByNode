/*
* @Author: HMJ
* @Date:   2016-10-22 22:40:57
* @Last Modified by:   HMJ
* @Last Modified time: 2016-10-24 13:12:06
* 控制器
*/

'use strict';
var news = require('../modules/news.js');
var express = require('express');
var router = express.Router();

router.get('/query',news.getNews);
router.post('/query/type',news.getNewsByType);
router.get('/update/query/:id',news.getNewsById);
router.post('/add',news.addNews);
router.get('/delete/:id',news.deleteNews);
router.post('/update/only',news.updateNews);

module.exports = router;
