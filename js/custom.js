$(document).ready(function() {
    "use strict";
    /* form validate */
    $.validate({
        'scrollToTopOnError': false
    });
    // preparation slider call
    if ($(".preparation-view").length == 1) {
        var owl1 = $('.preparation-view');
        owl1.owlCarousel({
            margin: 30,
            loop: true,
            items: 2,
            dots: true,
            nav: false,
            responsive: {
                0: {
                    items: 1,
                    margin: 0,
                },
                768: {
                    items: 2
                }
            }
        });
    }
    // banner img in backgound 
    if ($(".banner.inner-page").length == 1) {
        var img_src = $(".banner.inner-page .banner-img").children("img").attr("src");
        $(".banner.inner-page .banner-img").css("background-image", 'url(' + img_src + ')');
        $(".banner.inner-page .banner-img").children("img").hide();
    }

    // feedback slider call
    if ($(".feedback-slider").length == 1) {
        var owl1 = $('.feedback-slider');
        owl1.owlCarousel({
            margin: 0,
            loop: true,
            items: 1,
            dots: false,
            nav: true,
            navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        });
    }

    // member slider Call
    if ($(".member-slider").length == 1) {
        var owl1 = $('.member-slider');
        owl1.owlCarousel({
            margin: 0,
            loop: true,
            items: 3,
            dots: true,
            nav: false,
            responsive: {
                0: {
                    items: 1,
                },
                768: {
                    items: 2
                },
                1200: {
                    items: 3
                }
            }
        });
    }
    // radio and check box js call
    $('.label_check, .label_radio').click(function() {
        setupLabel();
    });
    setupLabel();
    // nav arrow set in moblie view
    $(".nav > li.sub-menu").each(function() {
        $(this).children("a").after("<span class='arrow'><i class='fa fa-plus'></i></span>");
    });
    $(".nav > li.sub-menu .arrow").click(function() {
        if ($(this).next().is(":visible")) {
            $(this).children(".fa").removeClass("fa-minus");
            $(this).children(".fa").addClass("fa-plus");
            $(this).next().slideUp();
        } else {
            $(".nav > li.sub-menu .arrow .fa").removeClass("fa-minus");
            $(".nav > li.sub-menu .arrow .fa").addClass("fa-plus");
            $(".nav > li.sub-menu .arrow").next().slideUp();
            $(this).children(".fa").removeClass("fa-plus");
            $(this).children(".fa").addClass("fa-minus");
            $(this).next().slideDown();
        }
    });
    // language Dropdown
    $(".language-select a").on("click", function(e) {
        if ($(this).next(".language-list").is(":visible")) {
            $(this).next(".language-list").slideUp();
        } else {
            $(".right-link .accout-link").slideUp();
            $(this).next(".language-list").slideDown();
        }
    });
    //Copyright Year
    var currentYear = (new Date).getFullYear();
    $("#footer .copy-right .year").text(currentYear);
});
// fiexd menu 
$(window).on('scroll', function() {
    if ($(window).scrollTop() > 50) {
        $(".top-arrow").fadeIn();
        $("#header").addClass("fiexd");
    } else {
        $(".top-arrow").fadeOut();
        $("#header").removeClass("fiexd");
    }
});

/* check and radio js start */
function setupLabel() {
    if ($('.label_check input').length) {
        $('.label_check').each(function() {
            $(this).removeClass('c_on');
        });
        $('.label_check input:checked').each(function() {
            $(this).parent('label').addClass('c_on');
        });
    };
    if ($('.label_radio input').length) {
        $('.label_radio').each(function() {
            $(this).removeClass('r_on');
        });
        $('.label_radio input:checked').each(function() {
            $(this).parent('label').addClass('r_on');
        });
    };
};


/* smooth scroll */
$('.scrollTo').click(function() {
    $('html, body').animate({
        scrollTop: $($(this).attr('href')).offset().top
    }, 2000);
    return false;
});