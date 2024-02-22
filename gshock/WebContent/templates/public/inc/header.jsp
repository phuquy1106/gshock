
<%@page import="model.bean.Torder_detail"%>
<%@page import="model.bean.Torders"%>
<%@page import="model.dao.TordersDAO"%>
<%@page import="model.dao.Torder_detailDAO"%>
<%@page import="model.dao.CategoriesDAO"%>
<%@page import="model.bean.Categories"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0" />
    <meta name='robots' content='index, follow, max-image-preview:large, max-snippet:-1, max-video-preview:-1' />

    <!-- This site is optimized with the Yoast SEO plugin v19.8 - https://yoast.com/wordpress/plugins/seo/ -->
    <title>G-Watch</title>
    <meta name="description" content="CUNG CẤP CÁC LOẠI ĐỒNG HỒ CHÍNH HÃNG CASIO. ĐẶC BIỆT CÁC DÒNG CASIO GSHOCK. VỚI GIÁ THÀNH TỐT NHẤT THỊ TRƯỜNG." />
    <link rel="canonical" href="https://gshockvn.net/" />
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="Trang chủ - G-Watch" />
    <meta property="og:description" content="CUNG CẤP CÁC LOẠI ĐỒNG HỒ CHÍNH HÃNG CASIO. ĐẶC BIỆT CÁC DÒNG CASIO GSHOCK. VỚI GIÁ THÀNH TỐT NHẤT THỊ TRƯỜNG." />
    <meta property="og:url" content="https://gshockvn.net/" />
    <meta property="og:site_name" content="G-Watch" />
    <meta property="article:modified_time" content="2021-12-27T05:52:43+00:00" />
    <meta property="og:image" content="<%=request.getContextPath() %>/templates/public/wp-content/uploads/GBA-400-1A9DR-4.jpeg" />
    <meta property="og:image:width" content="500" />
    <meta property="og:image:height" content="375" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:label1" content="Ước tính thời gian đọc" />
    <meta name="twitter:data1" content="1 phút" />
    <script type="application/ld+json" class="yoast-schema-graph">
        {
            "@context": "https://schema.org",
            "@graph": [{
                "@type": "WebPage",
                "@id": "https://gshockvn.net/",
                "url": "https://gshockvn.net/",
                "name": "Trang chủ - G-Watch",
                "isPartOf": {
                    "@id": "https://gshockvn.net/#website"
                },
                "about": {
                    "@id": "https://gshockvn.net/#organization"
                },
                "primaryImageOfPage": {
                    "@id": "https://gshockvn.net/#primaryimage"
                },
                "image": {
                    "@id": "https://gshockvn.net/#primaryimage"
                },
                "thumbnailUrl": "<%=request.getContextPath() %>/templates/public/wp-content/uploads/GBA-400-1A9DR-4.jpeg",
                "datePublished": "2021-11-23T18:24:33+00:00",
                "dateModified": "2021-12-27T05:52:43+00:00",
                "description": "CUNG CẤP CÁC LOẠI ĐỒNG HỒ CHÍNH HÃNG CASIO. ĐẶC BIỆT CÁC DÒNG CASIO GSHOCK. VỚI GIÁ THÀNH TỐT NHẤT THỊ TRƯỜNG.",
                "breadcrumb": {
                    "@id": "https://gshockvn.net/#breadcrumb"
                },
                "inLanguage": "vi",
                "potentialAction": [{
                    "@type": "ReadAction",
                    "target": ["https://gshockvn.net/"]
                }]
            }, {
                "@type": "ImageObject",
                "inLanguage": "vi",
                "@id": "https://gshockvn.net/#primaryimage",
                "url": "<%=request.getContextPath() %>/templates/public/wp-content/uploads/GBA-400-1A9DR-4.jpeg",
                "contentUrl": "<%=request.getContextPath() %>/templates/public/wp-content/uploads/GBA-400-1A9DR-4.jpeg",
                "width": 500,
                "height": 375
            }, {
                "@type": "BreadcrumbList",
                "@id": "https://gshockvn.net/#breadcrumb",
                "itemListElement": [{
                    "@type": "ListItem",
                    "position": 1,
                    "name": "Trang chủ"
                }]
            }, {
                "@type": "WebSite",
                "@id": "https://gshockvn.net/#website",
                "url": "https://gshockvn.net/",
                "name": "G-Watch",
                "description": "ĐỒNG HỒ CHÍNH HÃNG - G WATCH",
                "publisher": {
                    "@id": "https://gshockvn.net/#organization"
                },
                "potentialAction": [{
                    "@type": "SearchAction",
                    "target": {
                        "@type": "EntryPoint",
                        "urlTemplate": "https://gshockvn.net/?s={search_term_string}"
                    },
                    "query-input": "required name=search_term_string"
                }],
                "inLanguage": "vi"
            }, {
                "@type": "Organization",
                "@id": "https://gshockvn.net/#organization",
                "name": "G-Watch",
                "url": "https://gshockvn.net/",
                "sameAs": [],
                "logo": {
                    "@type": "ImageObject",
                    "inLanguage": "vi",
                    "@id": "https://gshockvn.net/#/schema/logo/image/",
                    "url": "<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-1.png",
                    "contentUrl": "<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-1.png",
                    "width": 443,
                    "height": 156,
                    "caption": "G-Watch"
                },
                "image": {
                    "@id": "https://gshockvn.net/#/schema/logo/image/"
                }
            }]
        }
    </script>
    <!-- / Yoast SEO plugin. -->


    <link rel='dns-prefetch' href='//pc.baokim.vn' />
    <link rel='dns-prefetch' href='//fonts.googleapis.com' />
    <link rel='dns-prefetch' href='//s.w.org' />
    <link rel='stylesheet' id='wc-blocks-vendors-style-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-vendors-style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='wc-blocks-style-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/packages/woocommerce-blocks/build/wc-blocks-style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='fibosearchsearch-indexcss-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/ajax-search-for-woocommerce/build/blocks/search/index.css' type='text/css' media='all' />
    <link rel='stylesheet' id='fibosearchsearch-nav-indexcss-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/ajax-search-for-woocommerce/build/blocks/search-nav/index.css' type='text/css' media='all' />
    <style id='global-styles-inline-css' type='text/css'>
        body {
            --wp--preset--color--black: #000000;
            --wp--preset--color--cyan-bluish-gray: #abb8c3;
            --wp--preset--color--white: #ffffff;
            --wp--preset--color--pale-pink: #f78da7;
            --wp--preset--color--vivid-red: #cf2e2e;
            --wp--preset--color--luminous-vivid-orange: #ff6900;
            --wp--preset--color--luminous-vivid-amber: #fcb900;
            --wp--preset--color--light-green-cyan: #7bdcb5;
            --wp--preset--color--vivid-green-cyan: #00d084;
            --wp--preset--color--pale-cyan-blue: #8ed1fc;
            --wp--preset--color--vivid-cyan-blue: #0693e3;
            --wp--preset--color--vivid-purple: #9b51e0;
            --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
            --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
            --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
            --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
            --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
            --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
            --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
            --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
            --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
            --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
            --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
            --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
            --wp--preset--duotone--dark-grayscale: url('#wp-duotone-dark-grayscale');
            --wp--preset--duotone--grayscale: url('#wp-duotone-grayscale');
            --wp--preset--duotone--purple-yellow: url('#wp-duotone-purple-yellow');
            --wp--preset--duotone--blue-red: url('#wp-duotone-blue-red');
            --wp--preset--duotone--midnight: url('#wp-duotone-midnight');
            --wp--preset--duotone--magenta-yellow: url('#wp-duotone-magenta-yellow');
            --wp--preset--duotone--purple-green: url('#wp-duotone-purple-green');
            --wp--preset--duotone--blue-orange: url('#wp-duotone-blue-orange');
            --wp--preset--font-size--small: 13px;
            --wp--preset--font-size--medium: 20px;
            --wp--preset--font-size--large: 36px;
            --wp--preset--font-size--x-large: 42px;
        }

        .has-black-color {
            color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-color {
            color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-color {
            color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-color {
            color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-color {
            color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-color {
            color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-color {
            color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-color {
            color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-color {
            color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-color {
            color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-color {
            color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-color {
            color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-background-color {
            background-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-background-color {
            background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-background-color {
            background-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-background-color {
            background-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-background-color {
            background-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-background-color {
            background-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-background-color {
            background-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-background-color {
            background-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-background-color {
            background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-background-color {
            background-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-border-color {
            border-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-border-color {
            border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-border-color {
            border-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-border-color {
            border-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-border-color {
            border-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-border-color {
            border-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-border-color {
            border-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-border-color {
            border-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-border-color {
            border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-border-color {
            border-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
            background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
        }

        .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
            background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
        }

        .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-orange-to-vivid-red-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
        }

        .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
            background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
        }

        .has-cool-to-warm-spectrum-gradient-background {
            background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
        }

        .has-blush-light-purple-gradient-background {
            background: var(--wp--preset--gradient--blush-light-purple) !important;
        }

        .has-blush-bordeaux-gradient-background {
            background: var(--wp--preset--gradient--blush-bordeaux) !important;
        }

        .has-luminous-dusk-gradient-background {
            background: var(--wp--preset--gradient--luminous-dusk) !important;
        }

        .has-pale-ocean-gradient-background {
            background: var(--wp--preset--gradient--pale-ocean) !important;
        }

        .has-electric-grass-gradient-background {
            background: var(--wp--preset--gradient--electric-grass) !important;
        }

        .has-midnight-gradient-background {
            background: var(--wp--preset--gradient--midnight) !important;
        }

        .has-small-font-size {
            font-size: var(--wp--preset--font-size--small) !important;
        }

        .has-medium-font-size {
            font-size: var(--wp--preset--font-size--medium) !important;
        }

        .has-large-font-size {
            font-size: var(--wp--preset--font-size--large) !important;
        }

        .has-x-large-font-size {
            font-size: var(--wp--preset--font-size--x-large) !important;
        }
    </style>
    <link rel='stylesheet' id='contact-form-7-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/contact-form-7/includes/css/styles.css' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-layout-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/assets/css/woocommerce-layout.css' type='text/css' media='all' />
    <link rel='stylesheet' id='woocommerce-smallscreen-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)' />
    <link rel='stylesheet' id='woocommerce-general-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/assets/css/woocommerce.css' type='text/css' media='all' />
    <style id='woocommerce-inline-inline-css' type='text/css'>
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
    <link rel='stylesheet' id='dgwt-wcas-style-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/ajax-search-for-woocommerce/assets/css/style.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='select2-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce/assets/css/select2.css' type='text/css' media='all' />
    <link rel='stylesheet' id='xoo-wsc-fonts-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce-side-cart-premium/assets/css/xoo-wsc-fonts.css' type='text/css' media='all' />
    <link rel='stylesheet' id='xoo-wsc-style-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/woocommerce-side-cart-premium/assets/css/xoo-wsc-style.css' type='text/css' media='all' />
    <style id='xoo-wsc-style-inline-css' type='text/css'>
        a.xoo-wsc-ft-btn:nth-child(3) {
            grid-column: 1/-1;
        }

        .xoo-wsc-sp-left-col img {
            max-width: 80px;
        }

        .xoo-wsc-sp-right-col {
            font-size: 14px;
        }

        .xoo-wsc-sp-container {
            background-color: #eee;
        }

        .xoo-wsc-footer {
            background-color: #ffffff;
            color: #000000;
            padding: 10px 20px;
        }

        .xoo-wsc-footer,
        .xoo-wsc-footer a,
        .xoo-wsc-footer .amount {
            font-size: 15px;
        }

        .xoo-wsc-ft-buttons-cont {
            grid-template-columns: 2fr 2fr;
        }

        .xoo-wsc-basket {
            bottom: 12px;
            right: 0px;
            background-color: #ffffff;
            color: #000000;
            box-shadow: 0 1px 4px 0;
        }

        .xoo-wsc-items-count {
            top: -15px;
            left: -15px;
        }

        .xoo-wsc-items-count,
        .xoo-wsc-sc-count {
            background-color: #000000;
            color: #ffffff;
        }

        .xoo-wsc-container,
        .xoo-wsc-slider {
            max-width: 350px;
            right: -350px;
            top: 0;
            bottom: 0;
            bottom: 0;
        }

        .xoo-wsc-cart-active .xoo-wsc-container,
        .xoo-wsc-slider-active .xoo-wsc-slider {
            right: 0;
        }

        .xoo-wsc-cart-active .xoo-wsc-basket {
            right: 350px;
        }

        .xoo-wsc-slider {
            right: -350px;
        }

        span.xoo-wsch-close {
            font-size: 16px;
            right: 10px;
        }

        .xoo-wsch-top {
            justify-content: center;
        }

        .xoo-wsch-text {
            font-size: 20px;
        }

        .xoo-wsc-header {
            color: #000000;
            background-color: #ffffff;
        }

        .xoo-wsc-sb-bar>span {
            background-color: #1e73be;
        }

        .xoo-wsc-body {
            background-color: #ffffff;
        }

        .xoo-wsc-body,
        .xoo-wsc-body span.amount,
        .xoo-wsc-body a {
            font-size: 16px;
            color: #000000;
        }

        .xoo-wsc-product {
            padding: 20px 15px;
        }

        .xoo-wsc-img-col {
            width: 35%;
        }

        .xoo-wsc-sum-col {
            width: 65%;
        }

        .xoo-wsc-sum-col {
            justify-content: center;
        }

        /***** Quantity *****/

        .xoo-wsc-qty-box {
            max-width: 75px;
        }

        .xoo-wsc-qty-box.xoo-wsc-qtb-square {
            border-color: #000000;
        }

        input[type="number"].xoo-wsc-qty {
            border-color: #000000;
            background-color: #ffffff;
            color: #000000;
            height: 28px;
            line-height: 28px;
        }

        input[type="number"].xoo-wsc-qty,
        .xoo-wsc-qtb-square {
            border-width: 1px;
            border-style: solid;
        }

        .xoo-wsc-chng {
            background-color: #ffffff;
            color: #000000;
        }
    </style>
    <link rel='stylesheet' id='bk-popup-css' href='https://pc.baokim.vn/css/bk.css' type='text/css' media='all' />
    <link rel='stylesheet' id='montserrat-css' href='//fonts.googleapis.com/css?family=Montserrat%3A200%2C300%2Cregular%2Citalic%2C500%2C600%2C700%2C800&#038;subset=vietnamese' type='text/css' media='all' />
    <link rel='stylesheet' id='kc-general-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/kingcomposer/assets/frontend/css/kingcomposer.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='kc-animate-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/kingcomposer/assets/css/animate.css' type='text/css' media='all' />
    <link rel='stylesheet' id='kc-icon-1-css' href='<%=request.getContextPath() %>/templates/public/wp-content/themes/vnthemes/css/fontawesome.pro.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='kc-icon-2-css' href='<%=request.getContextPath() %>/templates/public/wp-content/plugins/kingcomposer/assets/css/icons.css' type='text/css' media='all' />
    <script type='text/javascript' src='<%=request.getContextPath() %>/templates/public/wp-includes/js/jquery/jquery.min.js' id='jquery-core-js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/templates/public/wp-includes/js/jquery/jquery-migrate.min.js' id='jquery-migrate-js'></script>
    <script type='text/javascript' src='<%=request.getContextPath() %>/templates/public/wp-content/themes/vnthemes/js/jquery.datetimepicker.js' id='datepicker-js'></script>
    <link rel="https://api.w.org/" href="https://gshockvn.net/wp-json/" />
    <link rel="alternate" type="application/json" href="https://gshockvn.net/wp-json/wp/v2/pages/2" />
    <link rel='shortlink' href='https://gshockvn.net/' />
    <link rel="alternate" type="application/json+oembed" href="https://gshockvn.net/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fgshockvn.net%2F" />
    <link rel="alternate" type="text/xml+oembed" href="https://gshockvn.net/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fgshockvn.net%2F&#038;format=xml" />
    <script type="text/javascript">
        var kc_script_data = {
            ajax_url: "https://gshockvn.net/wp-admin/admin-ajax.php"
        }
    </script>
    <style>
        .dgwt-wcas-ico-magnifier,
        .dgwt-wcas-ico-magnifier-handler {
            max-width: 20px
        }

        .dgwt-wcas-search-wrapp {
            max-width: 600px
        }
    </style>
    <noscript><style>.woocommerce-product-gallery{ opacity: 1 !important; }</style></noscript>
    <link rel="icon" href="<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-32x32.png" sizes="32x32" />
    <link rel="icon" href="<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-192x192.png" sizes="192x192" />
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-180x180.png" />
    <link rel="stylesheet" href="<%=request.getContextPath() %>/templates/public/css/ready.css">
    <meta name="msapplication-TileImage" content="<%=request.getContextPath() %>/templates/public/wp-content/uploads/cropped-Picture1-270x270.png" />
    <script type="text/javascript"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/templates/public/js/jquery-2.1.1.min.js"></script>
    
    <style type="text/css" id="kc-css-general">
        .kc-off-notice {
            display: inline-block !important;
        }

        .kc-container {
            max-width: 1170px;
        }
    </style>
    <style type="text/css" id="kc-css-render">
        @media only screen and (min-width:1000px) and (max-width:5000px) {
            body.kc-css-system .kc-css-453792 {
                width: 25%;
            }
            body.kc-css-system .kc-css-104572 {
                width: 25%;
            }
            body.kc-css-system .kc-css-903547 {
                width: 25%;
            }
            body.kc-css-system .kc-css-847895 {
                width: 25%;
            }
            body.kc-css-system .kc-css-212197 {
                width: 100%;
            }
            body.kc-css-system .kc-css-683267 {
                width: 50%;
            }
            body.kc-css-system .kc-css-786034 {
                width: 50%;
            }
            body.kc-css-system .kc-css-76877 {
                width: 50%;
            }
            body.kc-css-system .kc-css-706634 {
                width: 50%;
            }
            body.kc-css-system .kc-css-790867 {
                width: 50%;
            }
            body.kc-css-system .kc-css-964907 {
                width: 50%;
            }
        }

        body.kc-css-system .kc-css-256604 .slick-dots {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            bottom: 20px;
        }

        body.kc-css-system .kc-css-256604 .slick-dots li {
            width: 15px;
            height: 5px;
            margin-right: 3px;
            margin-left: 3px;
            border-radius: 3px 3px 3px 3px;
            background: #ffffff;
        }

        body.kc-css-system .kc-css-256604 .slick-dots li:hover,
        body.kc-css-system .kc-css-256604 .slick-dots .slick-active {
            background: #f97e6c;
        }

        body.kc-css-system .kc-css-256604 .slick-dots .dots {
            display: none;
        }

        body.kc-css-system .kc-css-306089 .thumb img {
            display: block;
        }

        body.kc-css-system .kc-css-306089 {
            display: flex;
            justify-content: center;
        }

        body.kc-css-system .kc-css-753663 .thumb img {
            display: block;
        }

        body.kc-css-system .kc-css-753663 {
            display: flex;
            justify-content: center;
        }

        body.kc-css-system .kc-css-984818 .thumb img {
            display: block;
        }

        body.kc-css-system .kc-css-984818 {
            display: flex;
            justify-content: center;
        }

        body.kc-css-system .kc-css-608473 {
            background: #f5f5f5;
            padding-top: 30px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-608473>.kc-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 50px;
        }

        body.kc-css-system .kc-css-298228 .thumb img,
        body.kc-css-system .kc-css-298228 .thumb svg {
            max-height: 50px;
        }

        body.kc-css-system .kc-css-298228 .type {
            width: 100%;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-298228 .sub {
            width: 100%;
            font-size: 12px;
            line-height: 16px;
            text-align: center;
        }

        body.kc-css-system .kc-css-298228 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-687972 .thumb img,
        body.kc-css-system .kc-css-687972 .thumb svg {
            max-height: 50px;
        }

        body.kc-css-system .kc-css-687972 .type {
            width: 100%;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-687972 .sub {
            width: 100%;
            font-size: 12px;
            line-height: 16px;
            text-align: center;
        }

        body.kc-css-system .kc-css-687972 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-830078 .thumb img,
        body.kc-css-system .kc-css-830078 .thumb svg {
            max-height: 50px;
        }

        body.kc-css-system .kc-css-830078 .type {
            width: 100%;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-830078 .sub {
            width: 100%;
            font-size: 12px;
            line-height: 16px;
            text-align: center;
        }

        body.kc-css-system .kc-css-830078 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-469696 .thumb img,
        body.kc-css-system .kc-css-469696 .thumb svg {
            max-height: 50px;
        }

        body.kc-css-system .kc-css-469696 .type {
            width: 100%;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-469696 .sub {
            width: 100%;
            font-size: 12px;
            line-height: 16px;
            text-align: center;
        }

        body.kc-css-system .kc-css-469696 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-468987 {
            display: flex;
            padding-top: 50px;
            padding-bottom: 20px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-719214 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-719214 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-719214 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-390335 {
            display: block;
            width: 100%;
            max-width: 1170px;
            margin-top: 15px;
            margin-right: 0px;
            margin-left: 0px;
            padding-right: 15px;
            padding-left: 15px;
            flex-flow: wrap;
            columns: 2;
        }

        body.kc-css-system .kc-css-425632 {
            height: 360px;
            order: 1;
        }

        body.kc-css-system .kc-css-552086 {
            height: 530px;
            order: 3;
        }

        body.kc-css-system .kc-css-159769 {
            height: 530px;
            order: 2;
        }

        body.kc-css-system .kc-css-536470 {
            height: 360px;
            order: 4;
        }

        body.kc-css-system .kc-css-76422 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-76422 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-76422 {
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-511986 {
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-908998 .vntabs_item:hover {
            color: #ffffff;
            background: #000000;
        }

        body.kc-css-system .kc-css-908998 .vntabs_item.is-active {
            color: #ffffff;
            background: #000000;
        }

        body.kc-css-system .kc-css-908998 .vntabs_item {
            font-size: 18px;
            border-radius: 4px 4px 4px 4px;
            padding: 8px 15px 8px 15px;
            margin-right: 1.5px;
            margin-left: 1.5px;
        }

        body.kc-css-system .kc-css-908998 .vntabs_content {
            padding-top: 20px;
        }

        body.kc-css-system .kc-css-687750 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-687750 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-687750 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-687750 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-687750 {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            grid-row-gap: 30px;
        }

        body.kc-css-system .kc-css-142397 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-142397 .type {
            color: #000000;
            font-size: 14px;
            font-weight: 600;
            margin-right: 5px;
        }

        body.kc-css-system .kc-css-142397:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-142397 {
            display: flex;
            margin-top: 20px;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-25802 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-25802 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-25802 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-25802 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-25802 {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            grid-row-gap: 30px;
        }

        body.kc-css-system .kc-css-712775 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-712775 .type {
            color: #000000;
            font-size: 14px;
            font-weight: 600;
            margin-right: 5px;
        }

        body.kc-css-system .kc-css-712775:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-712775 {
            display: flex;
            margin-top: 20px;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-839201 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-839201 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-839201 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-839201 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-839201 {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            grid-row-gap: 30px;
        }

        body.kc-css-system .kc-css-121116 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-121116 .type {
            color: #000000;
            font-size: 14px;
            font-weight: 600;
            margin-right: 5px;
        }

        body.kc-css-system .kc-css-121116:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-121116 {
            display: flex;
            margin-top: 20px;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-392683 {
            background: transparent url(<%=request.getContextPath() %>/templates/public/wp-content/uploads/bg-flash-sale.webp) center center/cover no-repeat scroll;
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-740946 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-740946 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-740946 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-519744 .thumb {
            width: 300px;
            margin-right: 30px;
        }

        body.kc-css-system .kc-css-519744 .col {
            padding-top: 15px;
            padding-right: 15px;
            flex: 1;
        }

        body.kc-css-system .kc-css-519744 .title {
            font-size: 18px;
            font-weight: 600;
        }

        body.kc-css-system .kc-css-519744 .price {
            display: flex;
            float: left;
            width: 100%;
            color: #ee1a26;
            font-size: 20px;
            font-weight: 600;
            margin-top: 15px;
            margin-bottom: 15px;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-519744 .price del {
            color: #444444;
            font-size: 14px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-519744 .item {
            display: flex;
            flex-flow: wrap;
        }

        body.kc-css-system .kc-css-519744 {
            width: 100%;
            max-width: 768px;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-519744 .slick-dots {
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-318809 {
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-314684 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-314684 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-314684 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-997858 {
            max-width: 1170px;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-383943 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-383943 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-383943 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-383943 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-383943 {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 15px;
        }

        body.kc-css-system .kc-css-981936 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
        }

        body.kc-css-system .kc-css-981936 .price {
            display: flex;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-981936 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-981936 .item {
            display: flex;
            background: #ffffff;
            padding: 5px 5px 5px 5px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-981936 {
            max-width: 1170px;
            padding-right: 15px;
            padding-left: 15px;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-981936 .slick-list {
            margin-right: -10px;
            margin-left: -10px;
        }

        body.kc-css-system .kc-css-981936 .slick-slide {
            margin: 10px 10px 10px 10px;
        }

        body.kc-css-system .kc-css-981936 .slick-dots {
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-29553 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-29553 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-29553 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-29553 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-302218 {
            background: #fcf9f4;
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-697542 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-697542 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-697542 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-968217 {
            display: flex;
            max-width: 1170px;
            margin-top: 30px;
            flex-flow: wrap;
        }

        body.kc-css-system .kc-css-180559 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-180559 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-180559 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-180559 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-180559 {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 15px;
        }

        body.kc-css-system .kc-css-85340 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
        }

        body.kc-css-system .kc-css-85340 .price {
            display: flex;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-85340 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-85340 .item {
            display: flex;
            background: #ffffff;
            padding: 5px 5px 5px 5px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-85340 {
            max-width: 1170px;
            padding-right: 15px;
            padding-left: 15px;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-85340 .slick-list {
            margin-right: -10px;
            margin-left: -10px;
        }

        body.kc-css-system .kc-css-85340 .slick-slide {
            margin: 10px 10px 10px 10px;
        }

        body.kc-css-system .kc-css-85340 .slick-dots {
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-393344 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-393344 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-393344 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-393344 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-741686 {
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-896181 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-896181 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-896181 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-101607 {
            display: flex;
            width: 100%;
            max-width: 1170px;
            margin-top: 30px;
            flex-flow: wrap;
        }

        body.kc-css-system .kc-css-245435 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-245435 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-245435 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-245435 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-620935 {
            display: flex;
            padding-top: 50px;
            padding-bottom: 50px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-318252 .type {
            width: 100%;
            font-size: 36px;
            line-height: 42px;
            font-weight: 700;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-318252 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-318252 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-228787 .title {
            width: 100%;
            font-size: 18px;
            font-weight: 700;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-228787 .desc {
            width: 100%;
            font-size: 14px;
            line-height: 20px;
            margin-top: 5px;
        }

        body.kc-css-system .kc-css-228787 .more a {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-228787 .more a:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-228787 .more {
            font-size: 12px;
            font-weight: 700;
        }

        body.kc-css-system .kc-css-228787 .cat {
            background: #ee1a26;
            font-size: 12px;
            font-weight: 700;
            text-transform: uppercase;
            padding-right: 5px;
            padding-left: 5px;
            margin-right: 15px;
        }

        body.kc-css-system .kc-css-228787 .cat_item {
            color: #ffffff;
        }

        body.kc-css-system .kc-css-228787 .item {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-228787 {
            display: grid;
            width: 100%;
            max-width: 1170px;
            padding-right: 15px;
            padding-left: 15px;
            margin-top: 20px;
            grid-template-columns: repeat(3, 1fr);
            grid-gap: 20px;
        }

        @media only screen and (max-width:900px) {
            body.kc-css-system .kc-css-608473>.kc-container {
                display: block;
            }
            body.kc-css-system .kc-css-687750 .item {
                width: calc(100vw/3 - 21px);
            }
            body.kc-css-system .kc-css-687750 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-25802 .item {
                width: calc(100vw/3 - 21px);
            }
            body.kc-css-system .kc-css-25802 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-839201 .item {
                width: calc(100vw/3 - 21px);
            }
            body.kc-css-system .kc-css-839201 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-383943 .item {
                width: calc(25vw - 22px);
            }
            body.kc-css-system .kc-css-383943 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-29553 .item {
                width: calc(25vw - 22px);
            }
            body.kc-css-system .kc-css-29553 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-180559 .item {
                width: calc(25vw - 22px);
            }
            body.kc-css-system .kc-css-180559 {
                overflow-x: auto;
            }
            body.kc-css-system .kc-css-393344 .item {
                width: calc(25vw - 22px);
            }
            body.kc-css-system .kc-css-393344 {
                overflow-x: auto;
            }
        }

        @media only screen and (max-width:1024px) {
            body.kc-css-system .kc-css-256604 .slick-list {
                margin-right: -1px;
                margin-left: -1px;
            }
            body.kc-css-system .kc-css-256604 .slick-slide {
                margin-right: 1px;
                margin-left: 1px;
            }
            body.kc-css-system .kc-css-608473>.kc-container {
                display: block;
            }
            body.kc-css-system .kc-css-997858 {
                margin-right: 0px;
                margin-left: 0px;
            }
            body.kc-css-system .kc-css-968217 {
                margin-right: 0px;
                margin-left: 0px;
            }
            body.kc-css-system .kc-css-101607 {
                margin-right: 0px;
                margin-left: 0px;
            }
        }

        @media only screen and (max-width:767px) {
            body.kc-css-system .kc-css-719214 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-719214 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-390335 {
                columns: auto;
            }
            body.kc-css-system .kc-css-425632 {
                height: 220px;
            }
            body.kc-css-system .kc-css-552086 {
                height: 220px;
            }
            body.kc-css-system .kc-css-159769 {
                height: 220px;
            }
            body.kc-css-system .kc-css-536470 {
                height: 220px;
            }
            body.kc-css-system .kc-css-76422 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-76422 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-908998 .vntabs_item {
                font-size: 14px;
            }
            body.kc-css-system .kc-css-687750 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-25802 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-839201 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-740946 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-740946 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-519744 .thumb {
                width: 100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-519744 .thumb img {
                display: block;
                margin-right: auto;
                margin-left: auto;
            }
            body.kc-css-system .kc-css-519744 .col {
                display: flex;
                flex-flow: wrap;
                justify-content: center;
            }
            body.kc-css-system .kc-css-519744 .title {
                text-align: center;
            }
            body.kc-css-system .kc-css-519744 .price {
                justify-content: center;
            }
            body.kc-css-system .kc-css-314684 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-314684 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-997858 {
                display: flex;
                margin-top: 15px;
                flex-flow: wrap;
            }
            body.kc-css-system .kc-css-383943 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-786034 {
                margin-bottom: 15px;
                order: -1;
            }
            body.kc-css-system .kc-css-29553 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-697542 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-697542 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-968217 {
                margin-top: 15px;
            }
            body.kc-css-system .kc-css-76877 {
                margin-bottom: 15px;
            }
            body.kc-css-system .kc-css-180559 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-393344 .item {
                width: calc(50vw - 22.5px);
            }
            body.kc-css-system .kc-css-896181 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-896181 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-790867 {
                margin-top: 15px;
            }
            body.kc-css-system .kc-css-964907 {
                order: -1;
            }
            body.kc-css-system .kc-css-318252 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-318252 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-228787 .item {
                width: calc(50vw - 25px);
            }
            body.kc-css-system .kc-css-228787 {
                overflow-x: auto;
            }
        }

        @media only screen and (max-width:479px) {
            body.kc-css-system .kc-css-256604 .slick-list {
                margin-right: 0px;
                margin-left: 0px;
            }
            body.kc-css-system .kc-css-256604 .slick-slide {
                margin-right: 0px;
                margin-left: 0px;
            }
            body.kc-css-system .kc-css-228787 .item {
                width: 68vw;
            }
        }
    </style>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/public/wp-content/themes/vnthemes/style.css" media="screen" />


</head>


<body class="home page-template-default page page-id-2 wp-custom-logo kc-elm theme-vnthemes kingcomposer kc-css-system woocommerce-no-js woocommerce vnthemes qvp-enabled">


    <style type="text/css">
        @media only screen and (min-width: 1000px) and (max-width: 5000px) {
            body.kc-css-system .kc-css-299681 {
                width: 15%;
            }
            body.kc-css-system .kc-css-243795 {
                width: 60%;
            }
            body.kc-css-system .kc-css-745639 {
                width: 25%;
            }
        }

        body.kc-css-system .kc-css-842145 {
            background: #000000;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 99;
        }

        body.kc-css-system .kc-css-842145>.kc-container {
            display: flex;
            padding-right: 0px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-133662 .thumb img {
            max-height: 60px;
        }

        body.kc-css-system .kc-css-133662 {
            margin-right: auto;
            width: auto;
        }

        body.kc-css-system .kc-css-427078 .vnt_nav {
            display: flex;
        }

        body.kc-css-system .kc-css-427078 .vnt_nav>li {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-427078 .vnt_nav>li>a {
            color: #ffffff;
            line-height: 70px;
            font-weight: 500;
            display: block;
            width: 100%;
            height: 70px;
            padding-right: 15px;
            padding-left: 15px;
        }

        body.kc-css-system .kc-css-427078 .vnt_nav>li>a:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-427078 .vnt_nav>li.current-menu-item>a,
        body.kc-css-system .kc-css-427078 .vnt_nav>li.current-menu-ancestor>a {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-427078 .sub-menu li:hover>a {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-427078 .sub-menu li.current-menu-item>a,
        body.kc-css-system .kc-css-427078 .sub-menu li.current-menu-ancestor>a {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-427078 {
            width: auto;
        }

        body.kc-css-system .kc-css-44370 {
            background: #f8f8f8;
            position: absolute;
            display: flex;
            padding: 10px 10px 10px 10px;
            flex-flow: wrap;
            justify-content: center;
            top: 100%;
            left: 0;
        }

        body.kc-css-system .kc-css-745639 {
            display: flex;
            margin-left: auto;
            flex-flow: wrap;
            width: auto;
        }

        body.kc-css-system .kc-css-677951 .thumb img,
        body.kc-css-system .kc-css-677951 .thumb svg {
            display: block;
            height: 25px;
        }

        body.kc-css-system .kc-css-677951 {
            width: auto;
        }

        body.kc-css-system .kc-css-817499 .thumb img,
        body.kc-css-system .kc-css-817499 .thumb svg {
            display: block;
            height: 25px;
        }

        body.kc-css-system .kc-css-817499 {
            margin-right: 20px;
            margin-left: 20px;
            width: auto;
        }

        body.kc-css-system .kc-css-493724 .thumb img,
        body.kc-css-system .kc-css-493724 .thumb svg {
            display: block;
            height: 25px;
        }

        body.kc-css-system .kc-css-493724 {
            width: auto;
        }

        body.kc-css-system .kc-css-321065 .thumb img,
        body.kc-css-system .kc-css-321065 .thumb svg {
            display: block;
            height: 25px;
        }

        body.kc-css-system .kc-css-321065 {
            display: none;
            width: auto;
        }

        @media only screen and (max-width: 1024px) {
            body.kc-css-system .kc-css-842145 {
                padding-top: 15px;
                padding-bottom: 15px;
            }
            body.kc-css-system .kc-css-427078 .vnt_nav {
                flex-flow: wrap;
            }
            body.kc-css-system .kc-css-427078 .vnt_nav>li {
                width: 100%;
                border-top: 1px solid #303030;
                ;
            }
            body.kc-css-system .kc-css-427078 .vnt_nav>li>a {
                line-height: 50px;
                height: 50px;
            }
            body.kc-css-system .kc-css-427078 .toggler {
                color: #ffffff;
                font-size: 18px;
                display: flex;
                width: 50px;
                height: 50px;
                border-left: 1px solid #303030;
                ;
                justify-content: center;
                align-items: center;
            }
            body.kc-css-system .kc-css-427078 {
                background: #000000;
                position: fixed;
                ;
                overflow-y: auto;
            }
            body.kc-css-system .kc-css-493724 {
                display: none;
            }
            body.kc-css-system .kc-css-321065 {
                display: flex;
            }
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-133662 .thumb img {
                max-height: 50px;
            }
        }

        @media only screen and (max-width: 479px) {
            body.kc-css-system .kc-css-677951 .thumb img,
            body.kc-css-system .kc-css-677951 .thumb svg {
                height: 20px;
            }
            body.kc-css-system .kc-css-817499 .thumb img,
            body.kc-css-system .kc-css-817499 .thumb svg {
                height: 20px;
            }
            body.kc-css-system .kc-css-817499 {
                margin-right: 15px;
                margin-left: 15px;
            }
            body.kc-css-system .kc-css-321065 .thumb img,
            body.kc-css-system .kc-css-321065 .thumb svg {
                height: 20px;
            }
        }
    </style>
    <section id="main_header" class="kc-elm kc-css-842145 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
            <div class="kc-elm kc-css-133662 vnt_image ">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/LOGO-GWACH-e1638010196607.png" alt="">
                </div>
                <a href="<%=request.getContextPath() %>" title="Trang chủ" class="link"><span class="link_title">Trang chủ</span></a>
            </div>

            <div id="menu_header" class="kc-elm kc-css-427078 vnt_menu">
                <ul id="nav_header" class="vnt_nav ">
                    <li id="menu-item-261" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-2 current_page_item menu-item-261"><a class="menu_link" href="<%=request.getContextPath() %>" aria-current="page">Trang chủ</a></li>
                    <li id="menu-item-262" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-262"><a class="menu_link link_section" href="#">Sản phẩm </a>
                        <style type="text/css">
                            body.kc-css-system .kc-css-658506 {
                                background: rgba(5, 5, 6, 0.60);
                                padding-top: 15px;
                                padding-bottom: 15px;
                            }

                            body.kc-css-system .kc-css-7603 .title {
                                color: #ffffff;
                            }

                            body.kc-css-system .kc-css-7603 .title a {
                                color: #ffffff;
                            }

                            body.kc-css-system .kc-css-7603 .item:hover .title {
                                color: #ee1a26;
                            }

                            body.kc-css-system .kc-css-7603 {
                                display: grid;
                                grid-template-columns: repeat(6, 1fr);
                                grid-gap: 10px;
                            }

                            @media only screen and (max-width: 1024px) {
                                body.kc-css-system .kc-css-658506 {
                                    background: #191919;
                                    padding-top: 0px;
                                    padding-bottom: 0px;
                                }
                                body.kc-css-system .kc-css-658506>.kc-container {
                                    padding-right: 0px;
                                    padding-left: 0px;
                                }
                                body.kc-css-system .kc-css-7603 .title {
                                    line-height: 50px;
                                }
                                body.kc-css-system .kc-css-7603 .item {
                                    border-top: 1px solid #303030;
                                    ;
                                    padding-left: 45px;
                                }
                                body.kc-css-system .kc-css-7603 {
                                    grid-template-columns: repeat(3, 1fr);
                                    grid-gap: 0;
                                }
                            }

                            @media only screen and (max-width: 767px) {
                                body.kc-css-system .kc-css-7603 {
                                    grid-template-columns: repeat(2, 1fr);
                                }
                            }

                            @media only screen and (max-width: 479px) {
                                body.kc-css-system .kc-css-7603 {
                                    grid-template-columns: 1fr;
                                }
                            }
                        </style>
                        <section id="menu_sanpham" class="kc-elm kc-css-658506 kc_row vnt_section hide_col">
                            <div class="kc-row-container kc-container vnt_col">
                                <div class="kc-elm kc-css-7603 vnt_list">
									<%
										CategoriesDAO categoriesDAO = new CategoriesDAO();
										ArrayList<Categories> listCatT = categoriesDAO.getItems();
										if(listCatT != null && listCatT.size() > 0){
											int v = 0;
											for(Categories itemCatT: listCatT){
												v++;
									%>
                                    <div class="item item_<%=v %> current">
                                        <div class="title"><%=itemCatT.getName() %></div><a href="<%=request.getContextPath() %>/cats?id=<%=itemCatT.getId() %>" title="Đồng hồ nam" class="link"><%=itemCatT.getName() %></a> </div>
                                	<% } } %>
                                </div>
	

                            </div>
                        </section>

                    </li>
                    <li id="menu-item-272" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-272"><a class="menu_link" href="<%=request.getContextPath()%>/newss">Tin tức</a></li>
                    <li id="menu-item-270" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-270"><a class="menu_link" href="https://gshockvn.net/lien-he/">Liên hệ</a></li>
                    <li id="menu-item-271" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-271"><a class="menu_link" href="https://gshockvn.net/gioi-thieu/">Giới thiệu</a></li>
                </ul>
            </div>
            <div id="header_search" class="kc-elm kc-css-44370 vnt_element">
                <div class="kc-elm kc-css-462941 vnt_editor">
                    <div class="dgwt-wcas-search-wrapp dgwt-wcas-no-submit woocommerce dgwt-wcas-style-solaris js-dgwt-wcas-layout-classic dgwt-wcas-layout-classic js-dgwt-wcas-mobile-overlay-disabled">
                        <form class="dgwt-wcas-search-form" role="search" action="<%=request.getContextPath() %>/timkiem" method="post">
                            <div class="dgwt-wcas-sf-wrapp">
                                <svg class="dgwt-wcas-ico-magnifier" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 51.539 51.361" xml:space="preserve">
		             <path 						   d="M51.539,49.356L37.247,35.065c3.273-3.74,5.272-8.623,5.272-13.983c0-11.742-9.518-21.26-21.26-21.26 S0,9.339,0,21.082s9.518,21.26,21.26,21.26c5.361,0,10.244-1.999,13.983-5.272l14.292,14.292L51.539,49.356z M2.835,21.082 c0-10.176,8.249-18.425,18.425-18.425s18.425,8.249,18.425,18.425S31.436,39.507,21.26,39.507S2.835,31.258,2.835,21.082z"/>
				</svg>
                                <label class="screen-reader-text" for="dgwt-wcas-search-input-1">Tìm kiếm sản phẩm</label>

                                <input id="dgwt-wcas-search-input-1" type="search" class="dgwt-wcas-search-input" name="s" value="" placeholder="Tên / Mã sản phẩm" autocomplete="off" />
                                <div class="dgwt-wcas-preloader"></div>

                                <div class="dgwt-wcas-voice-search"></div>


                                <input type="hidden" name="post_type" value="product" />
                                <input type="hidden" name="dgwt_wcas" value="1" />


                            </div>
                        </form>
                    </div>
                </div>
            </div>



            <div class="kc-elm kc-css-745639 kc_col-sm-3 kc_column kc_col-sm-3">

                <div class="kc-elm kc-css-677951 vnt_title btn_search">

                    <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/search.png" alt="Search Icon"></div>
                    <button type="button" class="link" data-toggle="modal" data-target="#header_search"></button>

                </div>

                <div class="kc-elm kc-css-817499 vnt_title">
					<!-- tài khoản -->
                </div>

                <div class="kc-elm kc-css-493724 vnt_title gio_hang">

                    <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/cart.png" alt="Giỏ hàng"></div>
                    <%
                    	 int numb = 0;
                   		 ArrayList<Torder_detail> torderds = (ArrayList<Torder_detail>) session.getAttribute("torderd");
                   		 if(torderds != null && torderds.size() > 0){
                   			for (int i = 0; i < torderds.size(); i++) {
                   				numb += torderds.get(i).getNumber();
                   			} 
                   		 }
                    %>
                    <span class="num"><%=numb %></span>
                    <a href="<%=request.getContextPath() %>/torders" class="link " title="Thanh toán">Thanh toán</a>

                </div>

                <div class="kc-elm kc-css-321065 vnt_title btn_menu">

                    <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/menu-icon.png" alt="Menu Icon"></div>
                    <button type="button" class="link" data-toggle="modal" data-target="#menu_header"></button>

                </div>
            </div>


        </div>
    </section>
    <style type="text/css">
        @media only screen and (min-width: 1000px) and (max-width: 5000px) {
            body.kc-css-system .kc-css-26183 {
                width: 70%;
            }
            body.kc-css-system .kc-css-939157 {
                width: 30%;
            }
        }

        body.kc-css-system .kc-css-900236 {
            padding-top: 30px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-751984 {
            text-align: center;
        }

        body.kc-css-system .kc-css-720299 .type {
            font-size: 30px;
            line-height: 42px;
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-720299 {
            
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-498031 .icon {
            color: #ffffff;
            font-size: 24px;
        }

        body.kc-css-system .kc-css-498031 {
            position: fixed;
            display: none;
            width: 36px;
            height: 36px;
            background: #f97e6c;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            justify-content: center;
            align-items: center;
            top: 40%;
            right: 0;
            z-index: 10;
        }

        body.kc-css-system .kc-css-448206 {
            background: #f7f7f7;
            display: flex;
            width: 100%;
            margin-top: 30px;
            margin-right: 0px;
            margin-left: 0px;
            padding-right: 15px;
            border-radius: 4px 4px 4px 4px;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-26183 {
            display: flex;
            width: 100%;
            padding-left: 0px;
            flex: 1;
        }

        body.kc-css-system .kc-css-541136 .icon {
            color: #dd3333;
            font-size: 24px;
        }

        body.kc-css-system .kc-css-541136 {
            position: absolute;
            display: none;
            width: 36px;
            height: 36px;
            justify-content: center;
            align-items: center;
            top: 10px;
            right: 10px;
            z-index: 10;
        }

        body.kc-css-system .kc-css-940477 .widgettitle:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-940477 .widgettitle {
            font-size: 16px;
            line-height: 46px;
            font-weight: 600;
            padding-top: 0px;
            padding-bottom: 0px;
            margin: 0px 0px 0px 0px;
        }

        body.kc-css-system .kc-css-940477 {
            margin-right: 30px;
            padding-right: 15px;
            padding-left: 15px;
            width: auto;
        }

        body.kc-css-system .kc-css-137267 .widgettitle:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-137267 .widgettitle {
            font-size: 16px;
            line-height: 46px;
            font-weight: 600;
            padding-top: 0px;
            padding-bottom: 0px;
            margin: 0px 0px 0px 0px;
        }

        body.kc-css-system .kc-css-137267 {
            display: none;
            margin-right: 30px;
            padding-right: 15px;
            padding-left: 15px;
            width: auto;
        }

        body.kc-css-system .kc-css-492227 {
            width: auto;
        }

        body.kc-css-system .kc-css-803886 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-803886 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-803886 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-803886 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-803886 {
            display: grid;
            margin-top: 30px;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            grid-row-gap: 30px;
        }

        body.kc-css-system .kc-css-716495 {
            display: flex;
            padding-top: 30px;
            padding-bottom: 30px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-994671 .type {
            width: 100%;
            font-size: 30px;
            line-height: 42px;
            font-weight: 600;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-994671 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-994671 .cont {
            width: 100%;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-994671 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-391273 {
            width: 100%;
            max-width: 1170px;
            padding-right: 15px;
            padding-left: 15px;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-391273 .slick-list {
            margin-right: -10px;
            margin-left: -10px;
        }

        body.kc-css-system .kc-css-391273 .slick-slide {
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-979947 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-979947 .thumb {
            width: 100%;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-979947 .thumb img,
        body.kc-css-system .kc-css-979947 .thumb svg {
            display: block;
        }

        body.kc-css-system .kc-css-979947:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-979947 .type {
            font-weight: 600;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-979947 {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-9262 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-9262 .thumb {
            width: 100%;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-9262 .thumb img,
        body.kc-css-system .kc-css-9262 .thumb svg {
            display: block;
        }

        body.kc-css-system .kc-css-9262:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-9262 .type {
            font-weight: 600;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-9262 {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-390209 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-390209 .thumb {
            width: 100%;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-390209 .thumb img,
        body.kc-css-system .kc-css-390209 .thumb svg {
            display: block;
        }

        body.kc-css-system .kc-css-390209:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-390209 .type {
            font-weight: 600;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-390209 {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-73527 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-73527 .thumb {
            width: 100%;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-73527 .thumb img,
        body.kc-css-system .kc-css-73527 .thumb svg {
            display: block;
        }

        body.kc-css-system .kc-css-73527:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-73527 .type {
            font-weight: 600;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-73527 {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-683255 .icon {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-683255 .thumb {
            width: 100%;
            margin-bottom: 10px;
        }

        body.kc-css-system .kc-css-683255 .thumb img,
        body.kc-css-system .kc-css-683255 .thumb svg {
            display: block;
        }

        body.kc-css-system .kc-css-683255:hover .type {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-683255 .type {
            font-weight: 600;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-683255 {
            display: flex;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-87768 {
            background: #fcf8f4;
            padding-top: 50px;
            padding-bottom: 50px;
        }

        body.kc-css-system .kc-css-376027 .type {
            width: 100%;
            font-size: 30px;
            line-height: 42px;
            font-weight: 600;
            text-transform: uppercase;
            text-align: center;
        }

        body.kc-css-system .kc-css-376027 .sub {
            width: 90px;
            height: 2px;
            background: #ee1a26;
            margin-top: 15px;
        }

        body.kc-css-system .kc-css-376027 .cont {
            width: 100%;
            text-align: center;
            margin-top: 10px;
        }

        body.kc-css-system .kc-css-376027 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-191378 {
            margin-top: 20px;
        }

        body.kc-css-system .kc-css-191378 .slick-list {
            margin-right: -8px;
            margin-left: -8px;
        }

        body.kc-css-system .kc-css-191378 .slick-slide {
            margin-right: 8px;
            margin-left: 8px;
        }

        body.kc-css-system .kc-css-166268 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-166268 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-250101 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-250101 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-287593 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-287593 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-491352 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-491352 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-355450 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-355450 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-340932 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-340932 .desc {
            text-align: center;
        }

        body.kc-css-system .kc-css-114557 .title {
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-114557 .desc {
            text-align: center;
        }

        @media only screen and (max-width: 900px) {
            body.kc-css-system .kc-css-803886 .item {
                width: calc(100vw/3 - 21px);
            }
            body.kc-css-system .kc-css-803886 {
                overflow-x: auto;
            }
        }

        @media only screen and (max-width: 1024px) {
            body.kc-css-system .kc-css-498031 {
                display: flex;
            }
            body.kc-css-system .kc-css-541136 {
                display: flex;
            }
            body.kc-css-system .kc-css-87768 {
                padding-right: 10px;
                padding-left: 10px;
            }
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-720299 .type {
                font-size: 24px;
                line-height: 30px;
            }
            body.kc-css-system .kc-css-448206 {
                margin-top: 0px;
                padding-right: 0px;
                padding-bottom: 15px;
                flex-flow: wrap;
            }
            body.kc-css-system .kc-css-26183 {
                padding-right: 0px;
                flex-flow: wrap;
                flex: inherit;
            }
            body.kc-css-system .kc-css-940477 {
                width: 100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-137267 {
                width: 100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-492227 {
                padding-left: 15px;
                margin-top: 15px;
            }
            body.kc-css-system .kc-css-803886 .item {
                width: 100%;
            }
            body.kc-css-system .kc-css-803886 {
                grid-template-columns: repeat(2, 1fr);
            }
            body.kc-css-system .kc-css-994671 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-994671 .sub {
                margin-top: 5px;
            }
            body.kc-css-system .kc-css-376027 .type {
                font-size: 24px;
            }
            body.kc-css-system .kc-css-376027 .sub {
                margin-top: 5px;
            }
        }

        @media only screen and (max-width: 479px) {
            body.kc-css-system .kc-css-376027 .type {
                font-size: 20px;
            }
        }
    </style>
    
        <style type="text/css">
            @media only screen and (min-width: 1000px) and (max-width: 5000px) {
                body.kc-css-system .kc-css-483988 {
                    width: 50%;
                }
                body.kc-css-system .kc-css-630873 {
                    width: 50%;
                }
                body.kc-css-system .kc-css-65068 {
                    width: 100%;
                }
            }

            body.kc-css-system .kc-css-327134 {
                margin-top: 15px;
                margin-bottom: 15px;
            }

            body.kc-css-system .kc-css-327134>.kc-container {
                background: #ffffff;
                padding-right: 0px;
                padding-left: 0px;
            }

            body.kc-css-system .kc-css-483988 {
                position: relative;
            }

            body.kc-css-system .kc-css-304239 {
                position: relative;
                margin-top: 15px;
            }

            body.kc-css-system .kc-css-254845 {
                font-size: 12px;
                font-weight: 600;
            }

            body.kc-css-system .kc-css-599149 .type {
                color: #054f56;
                font-size: 30px;
                line-height: 36px;
                font-weight: 700;
            }

            body.kc-css-system .kc-css-66721 .thumb {
                margin-right: 5px;
            }

            body.kc-css-system .kc-css-66721 .title {
                font-size: 12px;
                font-weight: 500;
            }

            body.kc-css-system .kc-css-66721 .item {
                display: flex;
                align-items: center;
            }

            body.kc-css-system .kc-css-66721 {
                display: grid;
                grid-template-columns: repeat(2, 1fr);
                grid-gap: 10px;
                border-top: 1px solid #e5e5e5;
                border-bottom: 1px solid #e5e5e5;
                ;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            body.kc-css-system .kc-css-282402 {
                margin-top: 10px;
            }

            body.kc-css-system .kc-css-541547>.kc-container {
                background: #ffffff;
                padding-top: 30px;
                padding-bottom: 30px;
            }

            body.kc-css-system .kc-css-610913 .vntabs_nav {
                display: flex;
                align-items: center;
            }

            body.kc-css-system .kc-css-610913 .vntabs_item:hover {
                color: #ffffff;
                background: #000000;
            }

            body.kc-css-system .kc-css-610913 .vntabs_item.is-active {
                color: #ffffff;
                background: #000000;
            }

            body.kc-css-system .kc-css-610913 .vntabs_item {
                text-align: center;
                border-radius: 5px 5px 5px 5px;
                padding: 10px 20px 10px 20px;
                margin-right: 2px;
                margin-left: 2px;
                justify-content: center;
            }

            body.kc-css-system .kc-css-10501 {
                margin-top: 10px;
                overflow: hidden;
            }

            body.kc-css-system .kc-css-357613 {
                background: #fcf8f4;
                padding-top: 30px;
                padding-bottom: 30px;
            }

            body.kc-css-system .kc-css-661155 .type {
                width: 100%;
                font-size: 30px;
                line-height: 42px;
                font-weight: 600;
                text-transform: uppercase;
                text-align: center;
            }

            body.kc-css-system .kc-css-661155 .sub {
                width: 90px;
                height: 2px;
                background: #f97e6c;
                margin-top: 15px;
            }

            body.kc-css-system .kc-css-661155 .cont {
                width: 100%;
                text-align: center;
                margin-top: 10px;
            }

            body.kc-css-system .kc-css-661155 {
                display: flex;
                flex-flow: wrap;
                justify-content: center;
            }

            body.kc-css-system .kc-css-638453 {
                margin-bottom: 15px;
            }

            body.kc-css-system .kc-css-638453>.kc-container {
                background: #ffffff;
                padding-top: 15px;
                padding-bottom: 15px;
            }

            body.kc-css-system .kc-css-206016 .type {
                width: 100%;
                color: #105056;
                font-size: 18px;
                line-height: 40px;
                font-weight: 700;
                text-transform: uppercase;
            }

            body.kc-css-system .kc-css-206016 .sub {
                width: 60px;
                height: 2px;
                background: #a92c38;
                margin-bottom: -1px;
            }

            body.kc-css-system .kc-css-206016 {
                display: flex;
                border-bottom: 1px solid #dcdcdc;
                ;
                flex-flow: wrap;
            }

            body.kc-css-system .kc-css-17996 .title {
                width: 100%;
                font-size: 16px;
                font-weight: 500;
                text-align: center;
            }

            body.kc-css-system .kc-css-17996 .price {
                display: flex;
                color: #ee1a26;
                font-size: 16px;
                font-weight: 600;
                flex-flow: wrap;
                justify-content: center;
                align-items: center;
            }

            body.kc-css-system .kc-css-17996 .price del {
                color: #aeaeae;
                font-size: 12px;
                font-weight: 400;
                margin-right: 10px;
                margin-left: 10px;
            }

            body.kc-css-system .kc-css-17996 .item {
                display: flex;
                background: #ffffff;
                padding: 5px 5px 5px 5px;
                flex-flow: wrap;
                justify-content: center;
            }

            body.kc-css-system .kc-css-17996 {
                max-width: 1170px;
                padding-right: 15px;
                padding-left: 15px;
                margin-top: 30px;
            }

            body.kc-css-system .kc-css-17996 .slick-list {
                margin-right: -10px;
                margin-left: -10px;
            }

            body.kc-css-system .kc-css-17996 .slick-slide {
                margin: 10px 10px 10px 10px;
            }

            body.kc-css-system .kc-css-17996 .slick-dots {
                margin-top: 15px;
            }

            body.kc-css-system .kc-css-478378 {
                background: rgba(0, 0, 0, 0.50);
                display: flex;
                width: 100%;
                height: 100%;
                margin-right: 0px;
                margin-left: 0px;
                justify-content: center;
                align-items: center;
            }

            body.kc-css-system .kc-css-65068 {
                background: #ffffff;
                position: relative;
                width: 96%;
                max-width: 480px;
                padding: 0px 0px 0px 0px;
                border-radius: 10px 10px 10px 10px;
                max-height: 86vh;
                overflow-y: auto;
            }

            body.kc-css-system .kc-css-317584 .icon {
                color: #dd3333;
                font-size: 24px;
            }

            body.kc-css-system .kc-css-317584 {
                position: absolute;
                display: flex;
                width: 36px;
                height: 36px;
                justify-content: center;
                align-items: center;
                top: 10px;
                right: 10px;
                z-index: 10;
            }

            body.kc-css-system .kc-css-262370 .type {
                color: #ffffff;
                font-size: 16px;
                font-weight: 600;
                text-transform: uppercase;
            }

            body.kc-css-system .kc-css-262370 .sub {
                color: #ffffff;
            }

            body.kc-css-system .kc-css-262370 {
                display: grid;
                background: #000000;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                padding: 10px 50px 10px 15px;
            }

            body.kc-css-system .kc-css-467875 {
                padding: 15px 15px 15px 15px;
            }

            body.kc-css-system .kc-css-84231 {
                padding: 15px 15px 15px 15px;
            }

            @media only screen and (max-width: 1024px) {
                body.kc-css-system .kc-css-327134 {
                    margin-top: 0px;
                    margin-bottom: 0px;
                }
                body.kc-css-system .kc-css-317584 {
                    display: flex;
                }
            }

            @media only screen and (max-width: 767px) {
                body.kc-css-system .kc-css-66721 {
                    grid-template-columns: 1fr;
                }
                body.kc-css-system .kc-css-661155 .type {
                    font-size: 24px;
                }
                body.kc-css-system .kc-css-661155 .sub {
                    margin-top: 5px;
                }
                body.kc-css-system .kc-css-17996 {
                    margin-top: 15px;
                }
            }
        </style>
        
<style type="text/css">
        body.kc-css-system .kc-css-679416 {
            display: flex;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-281955 {
            padding-top: 15px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-931145 {
            text-align: center;
        }

        body.kc-css-system .kc-css-481086 .type {
            font-size: 36px;
            line-height: 42px;
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-481086 {
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-936714 .thumb {
            width: 320px;
            margin-right: 15px;
        }

        body.kc-css-system .kc-css-936714 .title {
            width: 100%;
            font-size: 20px;
            font-weight: 600;
            margin-bottom: 8px;
        }

        body.kc-css-system .kc-css-936714 .desc {
            font-size: 14px;
            line-height: 20px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-936714 .more {
            font-size: 12px;
            font-weight: 600;
        }

        body.kc-css-system .kc-css-936714 .cat {
            background: #ee1a26;
            display: block;
            font-size: 12px;
            font-weight: 600;
            padding-right: 10px;
            padding-left: 10px;
            margin-right: 10px;
        }

        body.kc-css-system .kc-css-936714 .cat_item {
            color: #ffffff;
        }

        body.kc-css-system .kc-css-936714 .col {
            display: flex;
            flex: 1;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-936714 .item {
            display: flex;
            border-bottom: 1px solid #dcdcdc;
            ;
            padding-bottom: 30px;
            margin-bottom: 30px;
            flex-flow: wrap;
        }

        body.kc-css-system .kc-css-936714 {
            margin-top: 30px;
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-481086 .type {
                font-size: 24px;
                line-height: 30px;
            }
            body.kc-css-system .kc-css-936714 .thumb {
                width: 1100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-936714 .col {
                width: 100%;
                margin-top: 15px;
            }
        }
    </style>
    <style type="text/css">
        body.kc-css-system .kc-css-161135 {
            padding-top: 15px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-785453 {
            text-align: center;
        }

        body.kc-css-system .kc-css-700239 .type {
            font-size: 30px;
            line-height: 36px;
            font-weight: 600;
        }

        body.kc-css-system .kc-css-700239 {
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-411740 {
            margin-top: 20px;
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-700239 .type {
                font-size: 24px;
                line-height: 30px;
            }
        }
    </style>
    <style type="text/css">
        body.kc-css-system .kc-css-161135 {
            padding-top: 15px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-785453 {
            text-align: center;
        }

        body.kc-css-system .kc-css-700239 .type {
            font-size: 30px;
            line-height: 36px;
            font-weight: 600;
        }

        body.kc-css-system .kc-css-700239 {
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-411740 {
            margin-top: 20px;
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-700239 .type {
                font-size: 24px;
                line-height: 30px;
            }
        }
    </style>
<style type="text/css">
        @media only screen and (min-width: 1000px) and (max-width: 5000px) {
            body.kc-css-system .kc-css-800261 {
                width: 70%;
            }
            body.kc-css-system .kc-css-505374 {
                width: 30%;
            }
        }

        body.kc-css-system .kc-css-128228 {
            padding-top: 30px;
            padding-bottom: 30px;
        }

        body.kc-css-system .kc-css-677618 {
            text-align: center;
        }

        body.kc-css-system .kc-css-646792 .type {
            font-size: 30px;
            line-height: 42px;
            font-weight: 600;
            text-align: center;
        }

        body.kc-css-system .kc-css-646792 {
            ;
            margin-top: 30px;
        }

        body.kc-css-system .kc-css-43475 .icon {
            color: #ffffff;
            font-size: 24px;
        }

        body.kc-css-system .kc-css-43475 {
            position: fixed;
            display: none;
            width: 36px;
            height: 36px;
            background: #f97e6c;
            border-top-left-radius: 5px;
            border-bottom-left-radius: 5px;
            justify-content: center;
            align-items: center;
            top: 40%;
            right: 0;
            z-index: 10;
        }

        body.kc-css-system .kc-css-169533 {
            background: #f7f7f7;
            display: flex;
            width: 100%;
            margin-top: 30px;
            margin-right: 0px;
            margin-left: 0px;
            padding-right: 15px;
            border-radius: 4px 4px 4px 4px;
            flex-flow: wrap;
            align-items: center;
        }

        body.kc-css-system .kc-css-800261 {
            display: flex;
            width: 100%;
            padding-left: 0px;
            flex: 1;
        }

        body.kc-css-system .kc-css-399283 .icon {
            color: #dd3333;
            font-size: 24px;
        }

        body.kc-css-system .kc-css-399283 {
            position: absolute;
            display: none;
            width: 36px;
            height: 36px;
            justify-content: center;
            align-items: center;
            top: 10px;
            right: 10px;
            z-index: 10;
        }

        body.kc-css-system .kc-css-933812 .widgettitle:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-933812 .widgettitle {
            font-size: 16px;
            line-height: 46px;
            font-weight: 600;
            padding-top: 0px;
            padding-bottom: 0px;
            margin: 0px 0px 0px 0px;
        }

        body.kc-css-system .kc-css-933812 {
            margin-right: 30px;
            padding-right: 15px;
            padding-left: 15px;
            width: auto;
        }

        body.kc-css-system .kc-css-893809 .widgettitle:hover {
            color: #ee1a26;
        }

        body.kc-css-system .kc-css-893809 .widgettitle {
            font-size: 16px;
            line-height: 46px;
            font-weight: 600;
            padding-top: 0px;
            padding-bottom: 0px;
            margin: 0px 0px 0px 0px;
        }

        body.kc-css-system .kc-css-893809 {
            display: none;
            margin-right: 30px;
            padding-right: 15px;
            padding-left: 15px;
            width: auto;
        }

        body.kc-css-system .kc-css-383393 {
            width: auto;
        }

        body.kc-css-system .kc-css-776276 .title {
            width: 100%;
            font-size: 16px;
            font-weight: 500;
            text-align: center;
            margin-top: 10px;
            margin-bottom: 5px;
        }

        body.kc-css-system .kc-css-776276 .price {
            display: flex;
            width: 100%;
            color: #ee1a26;
            font-size: 16px;
            font-weight: 600;
            padding-right: 5px;
            padding-left: 5px;
            flex-flow: wrap;
            justify-content: center;
            align-items: center;
        }

        body.kc-css-system .kc-css-776276 .price del {
            color: #aeaeae;
            font-size: 12px;
            font-weight: 400;
            margin-right: 10px;
            margin-left: 10px;
        }

        body.kc-css-system .kc-css-776276 .item {
            display: flex;
            background: #ffffff;
            padding-bottom: 8px;
            flex-flow: wrap;
            justify-content: center;
        }

        body.kc-css-system .kc-css-776276 {
            display: grid;
            margin-top: 30px;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 15px;
            grid-row-gap: 30px;
        }

        @media only screen and (max-width: 900px) {
            body.kc-css-system .kc-css-776276 .item {
                width: calc(100vw/3 - 21px);
            }
            body.kc-css-system .kc-css-776276 {
                overflow-x: auto;
            }
        }

        @media only screen and (max-width: 1024px) {
            body.kc-css-system .kc-css-43475 {
                display: flex;
            }
            body.kc-css-system .kc-css-399283 {
                display: flex;
            }
        }

        @media only screen and (max-width: 767px) {
            body.kc-css-system .kc-css-646792 .type {
                font-size: 24px;
                line-height: 30px;
            }
            body.kc-css-system .kc-css-169533 {
                margin-top: 0px;
                padding-right: 0px;
                padding-bottom: 15px;
                flex-flow: wrap;
            }
            body.kc-css-system .kc-css-800261 {
                padding-right: 0px;
                flex-flow: wrap;
                flex: inherit;
            }
            body.kc-css-system .kc-css-933812 {
                width: 100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-893809 {
                width: 100%;
                margin-right: 0px;
            }
            body.kc-css-system .kc-css-383393 {
                padding-left: 15px;
                margin-top: 15px;
            }
            body.kc-css-system .kc-css-776276 .item {
                width: 100%;
            }
            body.kc-css-system .kc-css-776276 {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>