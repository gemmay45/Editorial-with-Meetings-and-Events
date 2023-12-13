(function ($, win, kit) {
    // slider
    function getCurIndex(slider) {
        return addZero(slider.getIndex() + 1);
    }

    function getAllIndex(slider) {
        return addZero(slider.length);
    }

    function addZero(num) {
        return num * 1 < 10 ? '0' + num : num;
    }

    function initSliderListNum(className) {
        var $sliders = $(className);

        for (var i = 0; i < $sliders.length; i++) {
            var $cur = $($sliders[i]),
                curSlider = kit.slider($sliders[i]);

            var cur = getCurIndex(curSlider),
                all = getAllIndex(curSlider);

            setListNum(cur, all, $cur);
        }
    }

    function setListNum(cur, all, $cur) {
        var $curNum = $cur.find('.custom-slider-item-num');

        $curNum.text(cur + '/' + all);

        toggleOperate($cur);
    }

    function listChange(kitUtil, className) {
        kitUtil.on(className, 'itemshow', function (e) {
            var curSlider = kit.slider(e.currentTarget),
                $cur = $(e.currentTarget);

            var cur = getCurIndex(curSlider),
                all = getAllIndex(curSlider);

            setListNum(cur, all, $cur);
        });
    }

    function toggleOperate($curSlider) {
        var $lists = $curSlider.find('.custom-slider-list').find('li'),
            $operate = $curSlider.find('.custom-slider-bottom-operate');

        if ($lists.length > 1) {
            return;
        }

        $operate.css({ display: 'none' });
    }

    function initSlider () {
        var kitUtil = kit.util,
            sliderClass = '.single-card-layout-slider-wrapper';

        initSliderListNum(sliderClass);
        listChange(kitUtil, sliderClass);
    }

    $(() => {
        initSlider();
    })
})(jQuery, window, UIkit)