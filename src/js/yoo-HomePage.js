//轮播图
(function($) {
    //插件封装
    $.fn.extend({
        slider: function(options) {
            //自定义动画执行的时间等
            var main = null, //主函数
                that = this, //保存上下文环境
                init = null, //初始化
                stop = null, //停止
                start = null, //开始
                prev = null, //上一张
                next = null, //下一张
                timer = null, //计时器
                elems = {}, //命名空间，用于选取元素
                defaults = {
                    speed: 600, //动画时间
                    delay: 3000 //展示时间
                };
            options = $.extend(defaults, options);

            //1.初始化
            init = function() {
                elems._index = 1; //初始播放第一张
                elems.sliderDiv = that.children('.slider-b');
                elems.btn = that.children('span');
                elems.oList = that.children('.slider-cl');
                elems.oLi = elems.oList.children('li');

                elems.sliderDiv.append(elems.sliderDiv.children('a').first().clone());

                elems.btn.on('click', function() {
                    if (elems.btn.index($(this))) {
                        next();
                    } else {
                        prev();
                    }
                });

                elems.oLi.each(function(index) {
                    $(this).on('mouseover', function() {
                        $(this).addClass('active').siblings().removeClass('active');
                        elems.sliderDiv.css('left', '-' + index * 1263 + 'px');
                    });
                });
                that.hover(function() {
                    stop();
                }, function() {
                    timer = setInterval(start.bind(null, 1), options.delay + options.speed);
                });
            }

            //2.开始动画
            start = function(directions) {
                var L = "-=1263px";
                if (!directions) {
                    L = "+=1263px";
                    if (elems._index <= 1) {
                        var divLeft = that.offset().left,
                            imgLeft = elems.sliderDiv.children('a').last().offset().left;
                        elems._index = 7;
                        elems.sliderDiv.css('left', '-' + (imgLeft - divLeft) + 'px');

                    }
                }

                elems.sliderDiv.animate({
                    left: L
                }, options.speed, function() {
                    if (directions) elems._index++;
                    else elems._index--;

                    if (elems._index === 7) {
                        elems._index = 1;
                        elems.sliderDiv.css('left', 0);
                    }

                    elems.oLi.eq(elems._index - 1).addClass('active').siblings().removeClass('active');
                });
            }

            //3.上一张
            prev = function() {
                    stop();
                    start(0);
                }
                //4.下一张
            next = function() {
                    stop();
                    start(1);
                }
                //5.停止
            stop = function() {
                elems.sliderDiv.stop(true, true);
                clearInterval(timer);
            }
            main = function() {
                init();
                timer = setInterval(start.bind(null, 1), options.delay + options.speed);

            }
            main();
        }
    });
})(jQuery)