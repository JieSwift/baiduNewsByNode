/*
 * @Author: HMJ
 * @Date:   2016-10-22 21:23:47
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-24 18:21:13
 * 新闻模块
 */

'use strict';
var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var moment = require('moment');

var conn = require('../helper/db');
/**
 * 定义News模型
 * @type 表名
 */
var News = conn.define('news', {
    id: Number,
    newsTitle: String,
    newsType: String,
    newsSrc: String,
    newsTime: Date,
    newsImg: String,
});

/**
 * 拿到所有新闻
 * @param  {[type]}   req  [请求]
 * @param  {[type]}   res  [响应]
 * @param  {Function} next [next]
 * @return {[type]}        [description]
 */
exports.getNews = function(req, res, next) {
    News.find({}, function(err, news) {
        if (err) throw new Error(err);
        news.forEach( function(item, index) {
            item.newsTime = moment(item.newsTime).format('MMMM Do YYYY');
        });
        res.json(news);
    });
}

/**
 * 根据类别拿到新闻
 * @param  {[type]}   req  [请求]
 * @param  {[type]}   res  [响应]
 * @param  {Function} next [next]
 * @return {[type]}        [description]
 */
exports.getNewsByType = function(req, res, next) {
    News.find({ 'newsType': req.body.newsType }).limit(6).offset(req.body.begin).run(function(err, news) {
        if (err) throw new Error(err);
        news.forEach( function(item, index) {
            item.newsTime = moment(item.newsTime).format('YYYY-MM-DD');
        });
        res.json(news);
    });
}

/**
 * 根据id拿到新闻
 * @param  {[type]}   req  [请求]
 * @param  {[type]}   res  [响应]
 * @param  {Function} next [description]
 * @return {[type]}        [description]
 */
exports.getNewsById = function(req, res, next) {
    News.find({ 'id': req.params.id }, function(err, news) {
        if (err) throw new Error(err);
        news.forEach( function(item, index) {
            item.newsTime = moment(item.newsTime).format('YYYY-MM-DD');
        });
        res.json(news);
    });
}

/**
 * 增加新闻
 * @param {[type]}   req  [请求]
 * @param {[type]}   res  [响应]
 * @param {Function} next [description]
 */
exports.addNews = function(req, res, next) {
        News.create({
            newsTitle: req.body.newsTitle,
            newsType: req.body.newsType,
            newsSrc: req.body.newsSrc,
            newsTime: req.body.newsTime,
            newsImg: req.body.newsImg,
        }, function(err, news) {
            if (err) throw new Error(err);
            res.send('{"success":"ok"}');
        });
    }
    /**
     * 删除新闻
     * @param  {[type]}   req  [请求]
     * @param  {[type]}   res  [响应]
     * @param  {Function} next [description]
     * @return {[type]}        [description]
     */
exports.deleteNews = function(req, res, next) {
        News.find({ id: req.params.id }).remove(function(err) {
            console.log(req.params.id);
            if (err) throw new Error(err);
            res.send('{"success":"ok"}');
        });
    }
    /**
     * 更新新闻
     * @param  {[type]}   req  [请求]
     * @param  {[type]}   res  [响应]
     * @param  {Function} next [description]
     * @return {[type]}        [description]
     */
exports.updateNews = function(req, res, next) {
    News.find({ id: req.body.id }).each(function(news) {
        news.newsTitle = req.body.newsTitle;
        news.newsType = req.body.newsType;
        news.newsSrc = req.body.newsSrc;
        news.newsTime = req.body.newsTime;
        news.newsImg = req.body.newsImg;
    }).save(function(err) {
        if (err) throw new Error(err);
        res.send('{"success":"ok"}');
    });
}
