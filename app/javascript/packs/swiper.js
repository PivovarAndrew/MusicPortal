document.addEventListener("DOMContentLoaded", function (event) {
    var swiperBottomScrollbarFull = new Swiper('.swiper-bottom-scrollbar-full', {
        allowTouchMove: true,
        slidesPerView: 'auto',
        grabCursor: true,
        preventClicks: true,
        spaceBetween: 30,
        keyboardControl: true,
        speed: 500,
        pagination: {
            el: null
        },
        scrollbar: {
            el: '.swiper-scrollbar',
            draggable: true,
            hide: false,
            snapOnRelease: true
        },
        mousewheel: {
            enable: true
        },
        keyboard: {
            enabled: true
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        breakpoints: {
            767: {
                scrollbar: {
                    hide: true
                },
                spaceBetween: 0,
                autoHeight: true,
                centeredSlides: false,
                slidesOffsetAfter: 85
            }
        },
        on: {
            resize: function () {
                var windowWidth = $(window).width();
                if (windowWidth <= 767) {
                    swiperBottomScrollbarFull.detachEvents();
                } else {
                    swiperBottomScrollbarFull.attachEvents();
                }
                swiperBottomScrollbarFull.update();
            }
        }
    });
});
