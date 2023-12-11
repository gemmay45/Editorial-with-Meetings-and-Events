(($, win) => {
    const getRefs = () => (
        {
            $tableCon: $('.consolidation-offers'),
            // consolidation-offers
            $openIcon: $('.consolidation-title')
            // consolidation-title
        }
    )

    const clickOtherToClose = (refs) => {
        document.addEventListener(
            'click',
            function (e) {
                for (let i = 0; i < refs.$tableCon.length; i++) {
                    if (
                        refs.$tableCon[i].contains(e.target)
                    ) {
                        return;
                    }
                }

                setH(refs);
            },
            false
        );
    }

    const setH = (refs, h, $target, opened) => {
        if (!h) {
            for (let i = 0; i < refs.$tableCon.length; i++) {
                let $cur = $(refs.$tableCon[i]),
                    $curOpenIcon = $cur.find('.consolidation-title');
                    // consolidation-title
                // let curPT = parseInt($cur.css('padding-top')),
                //     curPB = parseInt($cur.css('padding-bottom')),
                    let iconH = $curOpenIcon.height();

                // let finH = iconH + curPT + curPB;
                    
                // $cur.css('height', `${finH}px`);
                $cur.height(`${iconH}`);
                $cur.removeClass('open');
            }
        } else {
            if (opened) {
                $target.removeClass('open');
            } else {
                $target.addClass('open');
            }

            // $target.css('height', `${h}px`);
            $target.height(`${h}`);
        }
    }

    const openTable = (refs) => {
        refs.$openIcon.off().on('click', function () {
            const $cur = $(this),
                  $parent = $cur.parent(),
                  $detail = $parent.find('.consolidation-content');
                //   consolidation-content

            let isOpened = $parent.hasClass('open');
            
            let curH = $cur.height();
                // parentPT = parseInt($parent.css('padding-top')),
                // parentPB = parseInt($parent.css('padding-bottom'));

            // let finH = curH + parentPT + parentPB;
            let finH = curH;

            $detail.css('display', 'block');

            if (!isOpened) {
                let detailH = $detail.height(),
                    detailMT = parseInt($detail.css('margin-top'));

                finH = curH + detailH + detailMT;
            }

            setH(refs, finH, $parent, isOpened);
        })
    }

    $(() => {
        const refs = getRefs();
        
        clickOtherToClose(refs);
        setH(refs);
        openTable(refs);
    })
})(jQuery, window)