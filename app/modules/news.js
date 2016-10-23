/*
 * @Author: HMJ
 * @Date:   2016-10-22 21:23:47
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-23 13:33:06
 */

'use strict';
var express = require('express');
var app = express();
var conn = require('../helper/db.js');
var bodyParser = require('body-parser');

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
exports.getNews = function(req, res, next) {
    News.find({}, function(err, news) {
        if (err) throw new Error(err);
        res.json(news);
    });
}

exports.getNewsByType = function(req, res, next) {
    console.log(req.body.newsType)
    console.log(req.body.begin)
    News.find({ 'newsType': req.body.newsType }).limit(6).offset(req.body.end).run(function(err, news) {
        if (err) throw new Error(err);
        console.log(news);
        res.json(news);
    });
}

exports.getNewsById = function(req, res, next) {
    News.find({ 'id': req.params.id }, function(err, news) {
        if (err) throw new Error(err);
        res.json(news);
    });
}


exports.addNews = function(req, res, next) {
    News.create({
        newsTitle: req.body.newsTitle,
        newsType: req.body.newsType,
        newsSrc: req.body.newsSrc,
        newsTime: req.body.newsTime,
        newsImg: req.body.newsImg,
    }, function(err, news) {
        if (err) throw new Error(err);
        res.sendStatus(200);
        res.send('success', 'ok');
    });
}
exports.deleteNews = function(req, res, next) {
    News.find({ id: req.params.id }).remove(function(err) {
        console.log(req.params.id);
        if (err) throw new Error(err);
        res.sendStatus(200);
        res.send('success', 'ok');
    });
}

exports.updateNews = function(req, res, next) {
    News.find({ id: req.body.id }).each(function(news) {
        news.newsTitle = req.body.newsTitle;
        news.newsType = req.body.newsType;
        news.newsSrc = req.body.newsSrc;
        news.newsTime = req.body.newsTime;
        news.newsImg = req.body.newsImg;
    }).save(function(err) {
        if (err) throw new Error(err);
        res.send('success', 'ok');
        res.sendStatus(200);
    });
}
