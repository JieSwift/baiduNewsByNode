/*
* @Author: HMJ
* @Date:   2016-10-22 22:40:57
* @Last Modified by:   HMJ
* @Last Modified time: 2016-10-23 13:36:47
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
router.post('/update',news.updateNews);

module.exports = router;
