// 'use strict';
(function($) {
    $.fn.treemenu = function(options) {
        options = options || {};
        options.delay = options.delay || 0;
        options.openActive = options.openActive || false;
        options.closeOther = options.closeOther || false;
        options.activeSelector = options.activeSelector || "active";
        this.addClass("treemenu");
        if (!options.nonroot) {
            this.addClass("treemenu-root");
        }
        options.nonroot = true;
        this.find("> li").each(function() {
            var e = $(this);
            var subtree = e.find('> ul, > section');
            var button = e.find('.toggler').eq(0);

            if (button.length == 0) {
                var button = $('<span>');
                button.addClass('toggler');
                e.prepend(button);
            }
            if (subtree.length > 0) {
                subtree.hide();
                e.addClass('tree-closed');
                e.find(button).click(function() {
                    var li = $(this).parent('li');
                    if (options.closeOther && li.hasClass('tree-closed')) {
                        var siblings = li.parent('ul').find("li:not(.tree-empty)");
                        siblings.removeClass("tree-opened");
                        siblings.addClass("tree-closed");
                        siblings.removeClass(options.activeSelector);
                        siblings.find('> ul, > section').slideUp(options.delay);
                    }
                    li.find('> ul, > section').slideToggle(options.delay);
                    li.toggleClass('tree-opened');
                    li.toggleClass('tree-closed');
                    li.toggleClass(options.activeSelector);
                });
                $(this).find('> ul, > section').treemenu(options);
            } else {
                $(this).addClass('tree-empty');
            }
        });
        if (options.openActive) {
            var cls = this.attr("class");
            this.find('.' + options.activeSelector).each(function() {
                var el = $(this).parent();
                while (el.attr("class") !== cls) {
                    el.find('> ul, > section').show();
                    if (el.prop("tagName") === 'UL') {
                        el.show();
                    } else if (el.prop("tagName") === 'LI') {
                        el.removeClass('tree-closed');
                        el.addClass("tree-opened");
                        el.show();
                    }
                    el = el.parent();
                }
            });
        }

        return this;
    }
})(jQuery);

//Slick Animation
! function(a) {
    a.fn.slickAnimation = function() {
        function n(a, n, t, i, o) {
            o = void 0 !== o && o, 1 == n.opacity ? (a.addClass(t), a.addClass(i)) : (a.removeClass(t), a.removeClass(i)), o && a.css(n)
        }

        function t(a, n) {
            return a ? 1e3 * a + 1e3 : n ? 1e3 * n : a || n ? 1e3 * a + 1e3 * n : 1e3
        }

        function i(a, n, t) {
            var i = {};
            ["animation-" + n, "-webkit-animation-" + n, "-moz-animation-" + n, "-o-animation-" + n, "-ms-animation-" + n].forEach(function(a) {
                i[a] = t + "s"
            }), a.css(i)
        }
        var o = a(this),
            e = o.find(".slick-list .slick-track > div"),
            s = o.find('[data-slick-index="0"]'),
            r = "animated",
            c = {
                opacity: "1"
            },
            d = {
                opacity: "0"
            };
        return e.each(function() {
            var e = a(this);
            e.find("[data-animation-in]").each(function() {
                var u = a(this);
                u.css(d);
                var l = u.attr("data-animation-in"),
                    f = u.attr("data-animation-out"),
                    h = u.attr("data-delay-in"),
                    m = u.attr("data-duration-in"),
                    y = u.attr("data-delay-out"),
                    C = u.attr("data-duration-out");
                f ? (s.length > 0 && e.hasClass("slick-current") && (n(u, c, l, r, !0), h && i(u, "delay", h), m && i(u, "duration", m), setTimeout(function() {
                    n(u, d, l, r), n(u, c, f, r), y && i(u, "delay", y), C && i(u, "duration", C)
                }, t(h, m))), o.on("afterChange", function(a, o, s) {
                    e.hasClass("slick-current") && (n(u, c, l, r, !0), h && i(u, "delay", h), m && i(u, "duration", m), setTimeout(function() {
                        n(u, d, l, r), n(u, c, f, r), y && i(u, "delay", y), C && i(u, "duration", C)
                    }, t(h, m)))
                }), o.on("beforeChange", function(a, t, i) {
                    n(u, d, f, r, !0)
                })) : (s.length > 0 && e.hasClass("slick-current") && (n(u, c, l, r, !0), h && i(u, "delay", h), m && i(u, "duration", m)), o.on("afterChange", function(a, t, o) {
                    e.hasClass("slick-current") && (n(u, c, l, r, !0), h && i(u, "delay", h), m && i(u, "duration", m))
                }), o.on("beforeChange", function(a, t, i) {
                    n(u, d, l, r, !0)
                }))
            })
        }), this
    }
}(jQuery);

(function($, window) {
    var arrowWidth = 25;
    $.fn.resizeselect = function(settings) {
        return this.each(function() {
            $(this).change(function() {
                var $this = $(this);
                var text = $this.find("option:selected").text();
                var $test = $("<span>").html(text).css({
                    "font-size": $this.css("font-size"),
                    "visibility": "hidden"
                });
                $test.appendTo($this.parent());
                var width = $test.width();
                $test.remove();
                $this.width(width + arrowWidth);
            }).change();

        });
    };
    $("select.resize").resizeselect();
})(jQuery, window);

//JQuery Readmore
jQuery(document).ready(function(e) {
    "use strict";
    var t = "readmore",
        i = {
            speed: 100,
            collapsedHeight: 100,
            collapsedMoreHeight: 150,
            heightMargin: 16,
            moreLink: '<a href="#">More informations</a>',
            evenMoreLink: '<a href="#">Even more informations</a>',
            lessLink: '<a href="#">Close</a>',
            embedCSS: !0,
            blockCSS: "display: block; width: 100%;",
            startOpen: !1,
            blockProcessed: function() {},
            beforeToggle: function() {},
            afterToggle: function() {}
        },
        o = {},
        a = 0;

    function n(e) {
        var t = e.clone().css({
                height: "auto",
                width: e.width(),
                maxHeight: "none",
                overflow: "hidden"
            }).insertAfter(e),
            i = t.outerHeight(),
            o = parseInt(t.css({
                maxHeight: ""
            }).css("max-height").replace(/[^-\d\.]/g, ""), 10),
            a = e.data("defaultHeight");
        t.remove();
        var n = o || e.data("collapsedHeight") || a;
        e.data({
            expandedHeight: i,
            maxHeight: o,
            collapsedHeight: n
        }).css({
            maxHeight: "none"
        })
    }
    var s, r, d, h, l = (s = function() {
        e("[data-readmore]").each(function() {
            var t = e(this),
                i = "true" === t.attr("aria-expanded");
            n(t), i && t.css({
                height: t.data("expandedHeight")
            })
        })
    }, r = 100, function() {
        var e = this,
            t = arguments,
            i = d && !h;
        clearTimeout(h), h = setTimeout(function() {
            h = null, d || s.apply(e, t)
        }, r), i && s.apply(e, t)
    });

    function c(a, n) {
        this.element = a, this.options = e.extend({}, i, n),
            function(e) {
                if (!o[e.selector]) {
                    var t = " ";
                    e.embedCSS && "" !== e.blockCSS && (t += e.selector + " + [data-readmore-toggle], " + e.selector + "[data-readmore]{" + e.blockCSS + "}"), t += e.selector + "[data-readmore]{transition: height " + e.speed + "ms;overflow: hidden;}", i = document, a = t, (n = i.createElement("style")).type = "text/css", n.styleSheet ? n.styleSheet.cssText = a : n.appendChild(i.createTextNode(a)), i.getElementsByTagName("head")[0].appendChild(n), o[e.selector] = !0
                }
                var i, a, n
            }(this.options), this._defaults = i, this._name = t, this.init(), window.addEventListener ? (window.addEventListener("load", l), window.addEventListener("resize", l)) : (window.attachEvent("load", l), window.attachEvent("resize", l))
    }
    c.prototype = {
        init: function() {
            var t = e(this.element);
            t.data({
                defaultHeight: this.options.collapsedHeight,
                heightMargin: this.options.heightMargin
            }), n(t);
            var i = t.data("collapsedHeight"),
                o = t.data("heightMargin");
            if (t.outerHeight(!0) <= i + o) return this.options.blockProcessed && "function" == typeof this.options.blockProcessed && this.options.blockProcessed(t, !1), !0;
            var s, r = t.attr("id") || function(e) {
                    var t = ++a;
                    return String(null == e ? "rmjs-" : e) + t
                }(),
                d = this.options.startOpen ? this.options.lessLink : this.options.moreLink;
            t.attr({
                "data-readmore": "",
                "aria-expanded": this.options.startOpen,
                id: r
            }), t.after(e(d).on("click", (s = this, function(e) {
                s.toggle(this, t[0], e)
            })).attr({
                "data-readmore-toggle": r,
                "aria-controls": r
            })), this.options.startOpen || t.css({
                height: i
            }), this.options.blockProcessed && "function" == typeof this.options.blockProcessed && this.options.blockProcessed(t, !0)
        },
        toggle: function(t, i, o) {
            o && o.preventDefault(), t || (t = e('[aria-controls="' + this.element.id + '"]')[0]), i || (i = this.element);
            var a, n = e(i),
                s = "",
                r = "",
                d = !1,
                h = n.data("collapsedHeight"),
                l = this.options.collapsedMoreHeight;
            n.data("expandedHeight") <= l ? n.height() <= h ? (s = n.data("expandedHeight") + "px", r = "lessLink", d = !0) : (s = h, r = "moreLink") : n.height() <= h ? (s = l, r = "evenMoreLink", d = !1) : n.height() > h && n.height() <= l ? (s = n.data("expandedHeight") + "px", r = "lessLink", d = !0) : (s = h, r = "moreLink"), this.options.beforeToggle && "function" == typeof this.options.beforeToggle && this.options.beforeToggle(t, n, !d), n.css({
                height: s
            }), n.on("transitionend", (a = this, function() {
                a.options.afterToggle && "function" == typeof a.options.afterToggle && a.options.afterToggle(t, n, d), e(this).attr({
                    "aria-expanded": d
                }).off("transitionend")
            })), e(t).replaceWith(e(this.options[r]).on("click", function(e) {
                return function(t) {
                    e.toggle(this, i, t)
                }
            }(this)).attr({
                "data-readmore-toggle": n.attr("id"),
                "aria-controls": n.attr("id")
            }))
        },
        destroy: function() {
            e(this.element).each(function() {
                var t = e(this);
                t.attr({
                    "data-readmore": null,
                    "aria-expanded": null
                }).css({
                    maxHeight: "",
                    height: ""
                }).next("[data-readmore-toggle]").remove(), t.removeData()
            })
        }
    }, e.fn.readmore = function(i) {
        var o = arguments,
            a = this.selector;
        return "object" == typeof(i = i || {}) ? this.each(function() {
            if (e.data(this, "plugin_" + t)) {
                var o = e.data(this, "plugin_" + t);
                o.destroy.apply(o)
            }
            i.selector = a, e.data(this, "plugin_" + t, new c(this, i))
        }) : "string" == typeof i && "_" !== i[0] && "init" !== i ? this.each(function() {
            var a = e.data(this, "plugin_" + t);
            a instanceof c && "function" == typeof a[i] && a[i].apply(a, Array.prototype.slice.call(o, 1))
        }) : void 0
    }
});

//JQuery Countdown
! function(t) {
    "use strict";
    "function" == typeof define && define.amd ? define(["jquery"], t) : t(jQuery)
}(function(t) {
    "use strict";
    var e = [],
        s = [],
        i = {
            precision: 100,
            elapse: !1,
            defer: !1
        };
    s.push(/^[0-9]*$/.source), s.push(/([0-9]{1,2}\/){2}[0-9]{4}( [0-9]{1,2}(:[0-9]{2}){2})?/.source), s.push(/[0-9]{4}([\/\-][0-9]{1,2}){2}( [0-9]{1,2}(:[0-9]{2}){2})?/.source), s = new RegExp(s.join("|"));
    var n = {
        Y: "years",
        m: "months",
        n: "daysToMonth",
        d: "daysToWeek",
        w: "weeks",
        W: "weeksToMonth",
        H: "hours",
        M: "minutes",
        S: "seconds",
        D: "totalDays",
        I: "totalHours",
        N: "totalMinutes",
        T: "totalSeconds"
    };

    function o(t, e) {
        var s = "s",
            i = "";
        return t && (1 === (t = t.replace(/(:|;|\s)/gi, "").split(/\,/)).length ? s = t[0] : (i = t[0], s = t[1])), Math.abs(e) > 1 ? s : i
    }
    var a = function(s, n, o) {
        this.el = s, this.$el = t(s), this.interval = null, this.offset = {}, this.options = t.extend({}, i), this.instanceNumber = e.length, e.push(this), this.$el.data("countdown-instance", this.instanceNumber), o && ("function" == typeof o ? (this.$el.on("update.countdown", o), this.$el.on("stoped.countdown", o), this.$el.on("finish.countdown", o)) : this.options = t.extend({}, i, o)), this.setFinalDate(n), !1 === this.options.defer && this.start()
    };
    t.extend(a.prototype, {
        start: function() {
            null !== this.interval && clearInterval(this.interval);
            var t = this;
            this.update(), this.interval = setInterval(function() {
                t.update.call(t)
            }, this.options.precision)
        },
        stop: function() {
            clearInterval(this.interval), this.interval = null, this.dispatchEvent("stoped")
        },
        toggle: function() {
            this.interval ? this.stop() : this.start()
        },
        pause: function() {
            this.stop()
        },
        resume: function() {
            this.start()
        },
        remove: function() {
            this.stop.call(this), e[this.instanceNumber] = null, delete this.$el.data().countdownInstance
        },
        setFinalDate: function(t) {
            this.finalDate = function(t) {
                if (t instanceof Date) return t;
                if (String(t).match(s)) return String(t).match(/^[0-9]*$/) && (t = Number(t)), String(t).match(/\-/) && (t = String(t).replace(/\-/g, "/")), new Date(t);
                throw new Error("Couldn't cast `" + t + "` to a date object.")
            }(t)
        },
        update: function() {
            if (0 !== this.$el.closest("html").length) {
                var e, s = void 0 !== t._data(this.el, "events"),
                    i = new Date;
                e = this.finalDate.getTime() - i.getTime(), e = Math.ceil(e / 1e3), e = !this.options.elapse && e < 0 ? 0 : Math.abs(e), this.totalSecsLeft !== e && s && (this.totalSecsLeft = e, this.elapsed = i >= this.finalDate, this.offset = {
                    seconds: this.totalSecsLeft % 60,
                    minutes: Math.floor(this.totalSecsLeft / 60) % 60,
                    hours: Math.floor(this.totalSecsLeft / 60 / 60) % 24,
                    days: Math.floor(this.totalSecsLeft / 60 / 60 / 24) % 7,
                    daysToWeek: Math.floor(this.totalSecsLeft / 60 / 60 / 24) % 7,
                    daysToMonth: Math.floor(this.totalSecsLeft / 60 / 60 / 24 % 30.4368),
                    weeks: Math.floor(this.totalSecsLeft / 60 / 60 / 24 / 7),
                    weeksToMonth: Math.floor(this.totalSecsLeft / 60 / 60 / 24 / 7) % 4,
                    months: Math.floor(this.totalSecsLeft / 60 / 60 / 24 / 30.4368),
                    years: Math.abs(this.finalDate.getFullYear() - i.getFullYear()),
                    totalDays: Math.floor(this.totalSecsLeft / 60 / 60 / 24),
                    totalHours: Math.floor(this.totalSecsLeft / 60 / 60),
                    totalMinutes: Math.floor(this.totalSecsLeft / 60),
                    totalSeconds: this.totalSecsLeft
                }, this.options.elapse || 0 !== this.totalSecsLeft ? this.dispatchEvent("update") : (this.stop(), this.dispatchEvent("finish")))
            } else this.remove()
        },
        dispatchEvent: function(e) {
            var s, i = t.Event(e + ".countdown");
            i.finalDate = this.finalDate, i.elapsed = this.elapsed, i.offset = t.extend({}, this.offset), i.strftime = (s = this.offset, function(t) {
                var e, i, a = t.match(/%(-|!)?[A-Z]{1}(:[^;]+;)?/gi);
                if (a)
                    for (var h = 0, l = a.length; h < l; ++h) {
                        var r = a[h].match(/%(-|!)?([a-zA-Z]{1})(:[^;]+;)?/),
                            c = (e = r[0], i = void 0, i = e.toString().replace(/([.?*+^$[\]\\(){}|-])/g, "\\$1"), new RegExp(i)),
                            f = r[1] || "",
                            u = r[3] || "",
                            p = null;
                        r = r[2], n.hasOwnProperty(r) && (p = n[r], p = Number(s[p])), null !== p && ("!" === f && (p = o(u, p)), "" === f && p < 10 && (p = "0" + p.toString()), t = t.replace(c, p.toString()))
                    }
                return t = t.replace(/%%/, "%")
            }), this.$el.trigger(i)
        }
    }), t.fn.countdown = function() {
        var s = Array.prototype.slice.call(arguments, 0);
        return this.each(function() {
            var i = t(this).data("countdown-instance");
            if (void 0 !== i) {
                var n = e[i],
                    o = s[0];
                a.prototype.hasOwnProperty(o) ? n[o].apply(n, s.slice(1)) : null === String(o).match(/^[$A-Z_][0-9A-Z_$]*$/i) ? (n.setFinalDate.call(n, o), n.start()) : t.error("Method %s does not exist on jQuery.countdown".replace(/\%s/gi, o))
            } else new a(this, s[0], s[1])
        })
    }
});

jQuery(document).ready(function($) {

    var $allVideos = $("iframe[src^='//www.youtube.com']"),
        $fluidEl = $(".vnt_the_content");

    $allVideos.each(function() {
        $(this).data('aspectRatio', this.height / this.width).removeAttr('height').removeAttr('width');
    });
    $(window).resize(function() {
        var newWidth = $fluidEl.width();
        $allVideos.each(function() {
            var $el = $(this);
            $el.width(newWidth).height(newWidth * $el.data('aspectRatio'));
        });
    }).resize();

    $(".read-more").on("click", function() {
        var text_more;
        var content_collapse = $(this).data("target");
        var text_close = $("[data-collapse=" + content_collapse + "]").data("text-close");
        if (!$(this).hasClass('collapse-open')) {
            $(this).data("text-more", $(this).html());
            text_more = $(this).data("text-more");
            $(this).addClass('collapse-open');
            $(this).html(text_close);
            $("[data-collapse=" + content_collapse + "]").slideDown(10);
        } else {
            text_more = $(this).data("text-more");
            $(this).html(text_more);
            $(this).removeClass('collapse-open');
            $("[data-collapse=" + content_collapse + "]").slideUp(10);
        }
    });

    if ($(".vnt_the_content")[0]) {
        $('.woocommerce.vnt_the_content').readmore({
            speed: 500,
            collapsedHeight: 600,
            collapsedMoreHeight: 9999,
            moreLink: '<a class="xem_them" href="#"><span>Xem thêm <i title="fa-angle-down" class="fa-angle-down" style=""></i></span></a>',
            evenMoreLink: '<a class="xem_them" href="#"><span>Xem thêm <i title="fa-angle-down" class="fa-angle-down" style=""></i></span></a>',
            lessLink: '<a href="#" class="thu_gon"><span>Thu gọn <i title="fa-angle-up" class="fa-angle-up" style=""></i></span></a>'
        });
    }

    //JS Tab
    var TabBlock = {
        s: {
            animLen: 200
        },
        init: function() {
            TabBlock.bindUIActions(), TabBlock.hideInactive()
        },
        bindUIActions: function() {
            $(".vntabs_nav").on("click", ".vntabs_nav_item", function() {
                TabBlock.switchTab($(this))
            })
        },
        hideInactive: function() {
            var a = $(".vntabs");
            a.each(function(n) {
                var i = $(a[n]),
                    s = i.find(".vntabs_cont"),
                    t = i.find(".vntabs_nav_item.is-active");
                $(s[t.index()]).addClass("active"), $(s[0]).addClass("active")
            });
            var n = $(".vntabs");
            n.each(function(a) {
                var i = $(n[a]).find(".vntabs_nav_item");
                $(i[0]).addClass("is-active")
            })
        },
        switchTab: function(a) {
            var n = a.closest(".vntabs");
            a.hasClass("is-active") || (a.siblings().removeClass("is-active"), a.addClass("is-active"), TabBlock.showPane(a.index(), n))
        },
        showPane: function(a, n) {
            var i = n.find(".vntabs_cont");
            i.removeClass("active"), $(i[a]).addClass("active")
        }
    };
    $(function() {
        TabBlock.init()
    });

    if ($(".vnt_slick")[0]) {
        $('.vnt_slick').slick({
            nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
            prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
            customPaging: function(slider, i) {
                return '<button type="button" role="tab" class="dots"></button>';
            }
        }).slickAnimation();
    }


    if ($(".vntsp_gallery")[0]) {
        $('.vntsp_gallery').slick({
            fade: true,
            asNavFor: '.vntsp_gallery_thumb',
            lazyLoad: 'disable',
            adaptiveHeight: true,
            dots: false,
            dotsClass: 'slick-dots wpgs-dots',
            focusOnSelect: false,
            rtl: false,
            infinite: true,
            draggable: true,
            arrows: true,
            nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
            prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
            speed: 500,
            autoplay: false,
            pauseOnHover: true,
            pauseOnDotsHover: true,
            autoplaySpeed: 4000,
            rows: 0
        });
        $('.vntsp_gallery_thumb').slick({
            slidesToShow: 5,
            slidesToScroll: 1,
            vertical: false,
            verticalSwiping: false,
            rtl: false,
            arrows: true,
            nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
            prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
            speed: 600,
            infinite: true,
            centerMode: false,
            focusOnSelect: true,
            asNavFor: '.vntsp_gallery',
            rows: 0,
            responsive: [{
                    breakpoint: 1025,
                    settings: {
                        variableWidth: false,
                        vertical: true,
                        verticalSwiping: false,
                        variableWidth: false,
                        rtl: false,
                        slidesToShow: 5,
                        slidesToScroll: 1,
                        swipeToSlide: true,

                    }
                },
                {
                    breakpoint: 767,
                    settings: {
                        variableWidth: false,
                        vertical: false,
                        verticalSwiping: false,
                        rtl: false,
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        swipeToSlide: true,
                    }
                }
            ]
        });
        $('.woocommerce-product-gallery').hide();
        $('.woocommerce-product-gallery').css("opacity", "1");
        $('.woocommerce-product-gallery').fadeIn();

        $('.vntsp_gallery_thumb').fancybox({
            selector: '.vntsp_gallery_thumb .slick-slide:not(.slick-cloned) a',
        });

    }

    var vnt_width = $(window).width();

    var HeaderHeight = document.getElementById('main_header').clientHeight;
    $("body").css('padding-top', HeaderHeight + "px");

    $(".btn_search").click(function() {
        $(this).toggleClass("active");
    });
    $(".btn_menu").click(function() {
        $(this).toggleClass("active");
    });

    $('#nav_product').treemenu({
        delay: 200,
        openActive: false,
        activeSelector: 'must-be-opened'
    });

    // 	if ($("body.home")[0]){
    // 		$('.home_mcat').slick({
    // 			slidesToShow: 3,
    // 			slidesToScroll: 2,
    // 			arrows: false,
    // 			dots: true,
    // 			nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
    // 			prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
    // 			speed:600,
    // 			infinite: true,
    // 			focusOnSelect: true,
    // 			rows: 2,
    // 			autoplay: true,
    // 			autoplaySpeed: 6000,
    // 			responsive: [
    // 				{
    // 					breakpoint: 768,
    // 					settings: {	
    // 						slidesToShow: 2,
    // 						slidesToScroll: 2,
    // 					}
    // 				},
    // 				{
    // 					breakpoint: 480,
    // 					settings: {	
    // 						slidesToShow: 1,
    // 						slidesToScroll: 1,
    // 						adaptiveHeight: true
    // 					}
    // 				}
    // 			]
    // 		});
    // 	}

    if ($("#main_footer")[0]) {
        var acc = document.getElementsByClassName("accordion");
        var i;
        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function() {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    }
    if ($("#sidebar_menu_product")[0]) {
        $('#sidebar_nav_product').treemenu({
            delay: 200,
            openActive: false,
            activeSelector: 'must-be-opened'
        });
    }

    if (vnt_width > 1024) {
        //         if ($(".single_gallery")[0]){
        //             var zoomSingle = {
        //                 constrainType:"height",
        //                 constrainSize: 200,
        //                 zoomType: "lens",
        //                 lensShape : "round",
        //                 containLensZoom: true,
        //                 cursor: 'zoom-in',
        //                 scrollZoom: true
        //             };
        //             $(".single_gallery").elevateZoom(zoomSingle);
        //         }


        //         if ($(".slick_zoom")[0]){
        //             var zoomOptions = {
        //                 constrainType:"height",
        //                 constrainSize: 200,
        //                 zoomType: "lens",
        //                 lensShape : "round",
        //                 containLensZoom: true,
        //                 cursor: 'zoom-in',
        //                 scrollZoom: true
        //             };
        //             $(".slick_img .slick-current img").elevateZoom(zoomOptions);
        //             $(".slick_img").on("beforeChange", function (event, slick, currentSlide, nextSlide) {
        //                 $.removeData(currentSlide, "elevateZoom");
        //                 $(".zoomContainer").remove();
        //             });
        //             $(".slick_img").on("afterChange", function () {
        //                 $(".slick_img .slick-current img").elevateZoom(zoomOptions);
        //             });
        //         }


    }
    if (vnt_width < 1025) {
        var HeaderHeight = document.getElementById('main_header').clientHeight;
        $("#menu_header").css('height', "calc(100vh - " + HeaderHeight + "px)");
        $("#menu_header").css('top', +HeaderHeight + "px");


        if ($("body.home")[0]) {
            $('.home_dichvu_cont').slick({
                slidesToShow: 3,
                slidesToScroll: 2,
                arrows: false,
                dots: true,
                nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
                prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
                speed: 600,
                infinite: true,
                focusOnSelect: true,
                rows: 0,
                autoplay: true,
                autoplaySpeed: 6000,
                responsive: [{
                        breakpoint: 768,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 2,
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 1,
                            slidesToScroll: 1,
                            adaptiveHeight: true
                        }
                    }
                ]
            });
        }

        $('#nav_header').treemenu({
            delay: 200,
            openActive: false,
            activeSelector: 'must-be-opened'
        });

    }

    if (vnt_width < 768) {
        if ($("body.home")[0]) {
            $('.home_catsp').slick({
                slidesToShow: 2,
                slidesToScroll: 2,
                dots: true,
                arrows: false,
                nextArrow: '<button type="button" class="slick-next"><i class="sl-arrow-right"></i></button>',
                prevArrow: '<button type="button" class="slick-prev"><i class="sl-arrow-left"></i></button>',
                speed: 600,
                infinite: false,
                focusOnSelect: true,
                rows: 0,
                responsive: [{
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        adaptiveHeight: true
                    }
                }]
            });
        }
    }

    String.prototype.getDecimals || (String.prototype.getDecimals = function() {
        var t = ("" + this).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
        return t ? Math.max(0, (t[1] ? t[1].length : 0) - (t[2] ? +t[2] : 0)) : 0
    }), $(document.body).on("click", ".plus, .minus", function() {
        var t = $(this).closest(".quantity").find(".qty"),
            a = parseFloat(t.val()),
            i = parseFloat(t.attr("max")),
            e = parseFloat(t.attr("min")),
            n = t.attr("step");
        a && "" !== a && "NaN" !== a || (a = 0), "" !== i && "NaN" !== i || (i = ""), "" !== e && "NaN" !== e || (e = 0), "any" !== n && "" !== n && void 0 !== n && "NaN" !== parseFloat(n) || (n = 1), $(this).is(".plus") ? i && a >= i ? t.val(i) : t.val((a + parseFloat(n)).toFixed(n.getDecimals())) : e && a <= e ? t.val(e) : a > 0 && t.val((a - parseFloat(n)).toFixed(n.getDecimals())), t.trigger("change"), jQuery("[name='update_cart']").trigger("click")
    }), $(".dc_add_cart").on("change", "input.qty", function() {
        "0" === this.value && (this.value = "1"), $(this.form).find("[data-quantity]").data("quantity", this.value)
    }), $("form.checkout").on("change", "input.qty", function() {
        "0" === this.value && (this.value = "1"), $(this.form).find("button[data-quantity]").data("quantity", this.value)
    }), jQuery(".input-text.qty").on("change", function() {
        jQuery(this).closest(".dc_add_cart").find("a[data-quantity]").attr("data-quantity", jQuery(this).val())
    });


    (function() {
        var $b = $('[data-countdown-sec]');
        $b.each(function() {
            var $this = $(this);

            function getDateNow() {
                return new Date().getTime() + parseInt($this.data('countdown-sec') + '000');
            }
            $this.countdown(getDateNow())
                .on('update.countdown', function(event) {
                    $this.html(event.strftime('' +
                        '<div class="item_countdown days"><div class="value">%D</div><div class="label">Ngày</div></div>' +
                        '<div class="item_countdown hours"><div class="value">%H</div><div class="label">Giờ</div></div>' +
                        '<div class="item_countdown min"><div class="value">%M</div><div class="label">Phút</div></div>' +
                        '<div class="item_countdown sec"><div class="value">%S</div><div class="label">Giây</div></div>'
                    ));
                })
                .on('finish.countdown', function(event) {
                    $this.countdown(getDateNow());
                });
        });
    }());


});