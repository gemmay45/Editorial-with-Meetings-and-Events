(($, win, kit) => {
    let isMobile = false;

    const getRefs = () => (
        {
            $expand: $('.menu-information-expand-wrapper'),
            $operate: $('.menu-information-expand-operate'),
            $rightSlider: $('.menu-information-right-part .menu-information-slider-wrapper'),
            $expandLinks: $('.menu-information-expand-wrapper .menu-information-expand-link')
        }
    )

    const initHeight = (refs, isInit = true) => {
        for (let i = 0; i < refs.$expand.length; i++) {
            const $cur = $(refs.$expand[i]),
                  $curCon = $cur.find('.menu-information-expand-content-wrapper'),
                  $operate = $cur.find('.menu-information-expand-operate'),
                  $detail = $cur.find('.menu-information-expand-full-detail-wrapper');

            let _initH = $operate.height(),
                _conH = $detail.height(),
                _mT = parseInt($detail.css('margin-top'));

            if (isInit) {
                if (i === 0) {
                    setTimeout(() => {
                        _initH = $operate.height(),
                        _conH = $detail.height(),
                        _mT = parseInt($detail.css('margin-top'));

                        $curCon.addClass('open');
                        $curCon.height(_initH + _conH + _mT);
                    }, 800);
                } else {
                    $curCon.height(_initH);
                }
            } else {
                let isCustom = $cur.hasClass('custom-menu-row');
                let isOpened = $curCon.hasClass('open');

                let _pT = 0,
                    _pB = 0;

                if (isCustom) {
                    _pT = parseInt($curCon.css('padding-top'));
                    _pB = parseInt($curCon.css('padding-bottom'));
                }

                if (isOpened) {
                    $curCon.css('height', `${_initH + _conH + _mT + _pT + _pB}px`);
                    $curCon.addClass('open');
                } else {
                    $curCon.height(_initH);
                }
            }
        }
    }

    const toggleMenu = (refs) => {
        refs.$operate.on('click', function () {
            const $cur = $(this),
                  $curConWrap = $cur.parent().parent();
            
            let isOpened = $curConWrap.hasClass('open');

            if (isOpened) return;

            const $con = $curConWrap.find('.menu-information-expand-content'),
                  $parent = $curConWrap.parent(),
                  $leftPart = $parent.parent(),
                  $opened = $leftPart.find('.menu-information-expand-content-wrapper.open'),
                  $openedP = $opened.parent(),
                  $openedOperate = $opened.find('.menu-information-expand-operate');
   
            let openedInitH = $openedOperate.height();
            
            let isCustom = $openedP.hasClass('custom-menu-row');
            
            if (isCustom) {
                let pT = parseInt($opened.css('padding-top')),
                pB = parseInt($opened.css('padding-bottom'));

                openedInitH = openedInitH + pT + pB;
            }
                
            $opened.removeClass('open');
            $opened.css('height', `${openedInitH}px`);

            if (!isMobile) {
                let idx = $parent.data('craftercms-index');

                toggleSlider(refs, idx);
            }

            $curConWrap.addClass('open');

            let _conH = $con.height();

            isCustom = $parent.hasClass('custom-menu-row');

            if (isCustom) {
                let pT = parseInt($curConWrap.css('padding-top')),
                    pB = parseInt($curConWrap.css('padding-bottom'));

                _conH = _conH + pT + pB;
            }

            $curConWrap.css('height', `${_conH}px`);
        })
    }

    const toggleSlider = (refs, idx) => {
        refs.$rightSlider.hide();

        const $toShow = $(refs.$rightSlider[idx]);

        $toShow.show();
    }

    const winResize = (refs) => {
        $(win).resize(function () {
            initHeight(refs, false);
        })
    }

    const toCorrectH = (refs) => {
        let canRun = true;

        $(document).on('scroll', function () {
            if (!canRun) return;

            initHeight(refs, false);
        })
    }

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

    function initSlider (className) {
        var kitUtil = kit.util;

        initSliderListNum(className);
        listChange(kitUtil, className);
    }

    const toOpenDialog = (refs) => {
        refs.$expandLinks.on('click', function (e) {
            const hasNeedDialog = $(this).hasClass('need-dialog');

            if (hasNeedDialog) {
                e.preventDefault();
                e.stopPropagation();

                console.log('dialog');
            }
        })
    }

    $(() => {
        const refs = getRefs();

        isMobile = (win.innerWidth < 768) ? true : false;

        initHeight(refs);
        initSlider('.menu-information-slider-wrapper');
        toggleMenu(refs);
        winResize(refs);
        toCorrectH(refs);

        toOpenDialog(refs);
    })
})(jQuery, window, UIkit)