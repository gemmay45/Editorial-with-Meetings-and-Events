(function ($, win) {
    var _click = 'ontouchend' in win ? 'touchend' : 'click';

    function getAllEls () {
        return {
            $playIcon: $('.video-play-wrapper .control-icon-wrapper')
        };
    }

    function hoverVideoPlayer($playIcon) {
        $playIcon.mouseover(function (e) {
            var $parent = $(e.target).parent(),
                $iconTitle = $parent.find('.control-icon-title');

            $iconTitle.removeClass('leave-hover').addClass('hovered');
        });

        $playIcon.mouseout(function (e) {
            var $parent = $(e.target).parent(),
                $iconTitle = $parent.find('.control-icon-title');
                
            $iconTitle.removeClass('hovered').addClass('leave-hover');
        })
    }

    function toPlayVideo($playIcon) {
        $playIcon.on(_click, function (e) {
            var $cur = $(e.target),
                $parent = $cur.parent();
                $posterImg = $parent.parent().find('.video-poster-img');
                video = $parent.parent().find('.video-player')[0];

            $parent.hide();
            $posterImg.hide();
            video.controls = true;
            video.play();
        });
    }

    $(function () {
        var refs = getAllEls();

        hoverVideoPlayer(refs.$playIcon);
        toPlayVideo(refs.$playIcon);
    })
})(jQuery, window)