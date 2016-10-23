/*
 * @Author: HMJ
 * @Date:   2016-10-12 12:41:50
 * @Last Modified by:   HMJ
 * @Last Modified time: 2016-10-23 08:44:32
 */
$(document).ready(function() {
    refreshNews("精选", 0, 6);
    indexShow();
    $('.nav li a:first').addClass('underline');
     $(window).scroll(function() {
            var scrollTop = $(this).scrollTop();
            var scrollHeight = $(document).height();
            var windowHeight = $(this).height();
            var begin = 0;
            var end = 6;
            var indexType =$('.underline').html();
            if (scrollTop + windowHeight == scrollHeight) {
                refreshNews(indexType, begin + 6, end + 6);
            }
        });
});

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

function refreshNews(type, begin, end) {
    $.ajax({
        url: './news/query/'+type,
        type: 'get',
        data: {
            // 'newsType': type,
            'begin': begin,
            'end': end
        },
        dataType: 'json',
        success: function(data) {
            var $article = $('article');
            $article.empty();
            var $ul = $('<ul></ul>').addClass('news-lists').prependTo(
                $article);
            var $lists = $('article ul');
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
    });
}
