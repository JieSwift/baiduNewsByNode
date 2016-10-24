/*
 * @Author: HMJ
 * @Date:   2016-10-12 12:41:50
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-24 13:06:38
 */
$(document).ready(function() {
    refreshNews("精选", 0, 6);
    indexShow();
    $('.nav li a:first').addClass('underline');
    var begin = 0;
    var end = 6;
    $(window).scroll(function() {
        var scrollTop = $(this).scrollTop();
        var scrollHeight = $(document).height();
        var windowHeight = $(this).height();
        var indexType = $('.underline').html();
        if (scrollTop + windowHeight == scrollHeight) {
            setTimeout(refreshNews(indexType, begin, end), 1000);
            begin += 6;
            end += 6;
        }
    });
});
/**
 * 显示首页
 * @return
 */
function indexShow() {
    var nav = $('.nav li a');
    nav.click(function(e) {
        e.preventDefault();
        var index = nav.index(this);
        nav.each(function(idx, item) {
            if (index === idx) {
                $(this).addClass('underline');
            } else {
                $(this).removeClass('underline');
            }
        });
        refreshNews($(this).html(), 0, 6);
    });
}

//从后台拿到数据

function refreshNews(type, begin, end) {
    $.ajax({
        url: './news/query/type',
        type: 'post',
        dataType: 'json',
        data: {
            'newsType': type,
            'begin': begin,
            'end': end
        },
        success: function(data) {
        		//没有数据就不再添加dom
            if (!$.isEmptyObject(data)) {
                var $article = $('article');
                // $article.empty();
                var $ul = $('<ul></ul>').addClass('news-lists').prependTo(
                    $article);
                var $lists = $('article ul');
                $lists.empty();
                $.each(data, function(index, item) {
                    var $list = $('<li></li>').addClass('news-list')
                        .prependTo($lists);
                    var $newsImg = $('<div></div>').addClass('newsimg')
                        .appendTo($list);
                    var $img = $('<img>').attr({
                        'src': item.newsImg,
                    }).appendTo($newsImg);
                    var $newsContent = $('<div></div>').addClass(
                        'newscontent').appendTo($list);
                    var $h1 = $('<h1></h1>').html(item.newsTitle).appendTo(
                        $newsContent);
                    var $p = $('<p></p>').appendTo($newsContent);
                    var $newsTime = $('<span></span>').addClass('newstime')
                        .html(item.newsTime).appendTo($p);
                    var $newsSrc = $('<span></span>').addClass('newssrc')
                        .html(item.newsSrc).appendTo($p);
                });
            }
        }
    });
}
