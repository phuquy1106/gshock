<%@page import="model.bean.Clock"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>







    
    <div class="kc-elm kc-css-801333 vnt_editor">
        <img src="https://gshockvn.net/wp-content/uploads/banner-pc-mtg-b2000ybd.jpeg"></div>




    <section id="main_product_archive" class="kc-elm kc-css-900236 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
        	<%
        		Categories item = (Categories) request.getAttribute("item");
        	%>
            <div class="kc-elm kc-css-751984 vnt_editor">
                <span><span><a href="https://gshockvn.net/">Trang chủ</a> &raquo; <span class="breadcrumb_last" aria-current="page"><%=item.getName() %></span></span>
                </span>
            </div>

            <div class="kc-elm kc-css-720299 vnt_title">

                <h1 class="type"><%=item.getName() %></h1>


            </div>
            <style type="text/css">
                body.kc-css-system .kc-css-85203 {
                    max-width: 1170px;
                    border: 1px solid #dcdcdc;
                    border-radius: 5px 5px 5px 5px;
                    padding: 10px 15px 10px 15px;
                    margin-top: 20px;
                }

                body.kc-css-system .kc-css-448774 .thumb img,
                body.kc-css-system .kc-css-448774 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-448774 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-448774 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-448774 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                body.kc-css-system .kc-css-441933 .thumb img,
                body.kc-css-system .kc-css-441933 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-441933 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-441933 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-441933 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                body.kc-css-system .kc-css-271215 .thumb img,
                body.kc-css-system .kc-css-271215 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-271215 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-271215 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-271215 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                body.kc-css-system .kc-css-576134 .thumb img,
                body.kc-css-system .kc-css-576134 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-576134 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-576134 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-576134 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                body.kc-css-system .kc-css-577071 .thumb img,
                body.kc-css-system .kc-css-577071 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-577071 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-577071 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-577071 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                body.kc-css-system .kc-css-846483 .thumb img,
                body.kc-css-system .kc-css-846483 .thumb svg {
                    max-height: 36px;
                }

                body.kc-css-system .kc-css-846483 .type {
                    width: 100%;
                    font-size: 16px;
                    font-weight: 600;
                    text-align: center;
                    margin-top: 10px;
                }

                body.kc-css-system .kc-css-846483 .sub {
                    font-size: 13px;
                    line-height: 16px;
                }

                body.kc-css-system .kc-css-846483 {
                    display: flex;
                    flex-flow: wrap;
                    justify-content: center;
                }

                @media only screen and (max-width: 479px) {
                    body.kc-css-system .kc-css-448774 .type {
                        font-size: 13px;
                    }
                    body.kc-css-system .kc-css-441933 .type {
                        font-size: 13px;
                    }
                    body.kc-css-system .kc-css-271215 .type {
                        font-size: 13px;
                    }
                    body.kc-css-system .kc-css-576134 .type {
                        font-size: 13px;
                    }
                    body.kc-css-system .kc-css-577071 .type {
                        font-size: 13px;
                    }
                    body.kc-css-system .kc-css-846483 .type {
                        font-size: 13px;
                    }
                }
            </style>
            <div class="kc-elm kc-css-85203 kc_col-sm-12 vnt_slick " data-slick='{"slidesToShow": 6,  "slidesToScroll": 3, "centerMode": false, "variableWidth": false, "dots": false, "arrows": true, "autoplay": true,  "autoplaySpeed": 10000, "infinite": true, "adaptiveHeight": false ,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 5, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 4, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}]}'>
                <%
                	ArrayList<Categories> listCP = (ArrayList<Categories>) request.getAttribute("listCP");
                	if(listCP != null && listCP.size() > 0){
                		int c = 0;
                		for(Categories itemCP: listCP){
                			c++;
                			if(c < 7){
                %>
                <div class="kc-elm kc-css-744250 slick_item">
                    <div class="kc-elm kc-css-448774 vnt_title">

                        <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/genuine-casio-g-shock-limited-quantity-offer-price-netpay-davis-1509-25-davis-1.jpeg" alt="ĐỒNG HỒ G-SHOCK"></div>
                        <div class="type"><%=itemCP.getName() %></div>
                        <span class="sub">100+ sản phẩm</span>
                        <a href="<%=request.getContextPath() %>/cats?id=<%=itemCP.getId() %>" class="link " title=""></a>

                    </div>
                </div>
                <% } } } %>
                
            </div>




            <div class="kc-elm kc-css-498031 vnt_title">

                <i class="icon fa-filter"></i>
                <button type="button" class="link" data-toggle="modal" data-target="#aproduct_filter"></button>

            </div>
            <div id="aproduct_filter" class="kc-elm kc-css-448206 kc_row kc_row_inner">
                <div class="kc-elm kc-css-26183 kc_col-sm-8 kc_column_inner kc_col-sm-8">

                    <div class="kc-elm kc-css-541136 vnt_title">

                        <i class="icon fa-times-octagon"></i>
                        <button type="button" class="link" data-toggle="modal" data-target="#aproduct_filter"></button>

                    </div>
                    <div class="widget woocommerce widget_product_categories kc-elm kc-css-940477 pcat_filter">
                        <h2 class="widgettitle">Bộ sưu tập</h2>
                        <ul class="product-categories">
                            <li class="cat-item cat-item-26"><a href="https://gshockvn.net/danh-muc-san-pham/edifice/">Edifice</a> <span class="count">(37)</span></li>
                            <li class="cat-item cat-item-28"><a href="https://gshockvn.net/danh-muc-san-pham/g-steel/">G-Steel</a> <span class="count">(61)</span></li>
                            <li class="cat-item cat-item-29"><a href="https://gshockvn.net/danh-muc-san-pham/gravity-master/">Gravity Master</a> <span class="count">(19)</span></li>
                            <li class="cat-item cat-item-32"><a href="https://gshockvn.net/danh-muc-san-pham/ga-2100-ap-royal-oak/">GA-2100 AP Royal Oak</a> <span class="count">(101)</span></li>
                            <li class="cat-item cat-item-33"><a href="https://gshockvn.net/danh-muc-san-pham/vintage-casio/">Vintage Casio</a> <span class="count">(0)</span></li>
                            <li class="cat-item cat-item-16 current-cat cat-parent"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/">Đồng hồ nam</a> <span class="count">(299)</span>
                                <ul class='children'>
                                    <li class="cat-item cat-item-27"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/g-shock/">G-Shock</a> <span class="count">(299)</span></li>
                                </ul>
                            </li>
                            <li class="cat-item cat-item-34"><a href="https://gshockvn.net/danh-muc-san-pham/day-vo-ga-2100-ap-royal-oak/">Dây vỏ GA-2100 AP Royal Oak</a> <span class="count">(8)</span></li>
                            <li class="cat-item cat-item-17"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nu/">Đồng hồ nữ</a> <span class="count">(0)</span></li>
                            <li class="cat-item cat-item-19"><a href="https://gshockvn.net/danh-muc-san-pham/phu-kien-nu/">Phụ kiện nữ</a> <span class="count">(5)</span></li>
                            <li class="cat-item cat-item-23"><a href="https://gshockvn.net/danh-muc-san-pham/mudmaster/">Mudmaster</a> <span class="count">(14)</span></li>
                            <li class="cat-item cat-item-24"><a href="https://gshockvn.net/danh-muc-san-pham/baby-g/">Baby-G</a> <span class="count">(105)</span></li>
                        </ul>
                    </div>
                </div>
                <div class="kc-elm kc-css-492227 vnt_editor">
                    <form class="woocommerce-ordering" method="get">
                        <select name="orderby" class="orderby" aria-label="Đơn hàng của cửa hàng">
					<option value="date"  selected='selected'>Sản phẩm mới</option>
					<option value="rating" >Đánh giá cao</option>
					<option value="price" >Giá: Thấp → Cao</option>
					<option value="price-desc" >Giá: Cao → Thấp</option>
			</select>
                        <input type="hidden" name="paged" value="1" />
                    </form>
                </div>
            </div>
            <div class="kc-elm kc-css-803886 vnt_archive vnt_product">
				<%
						ArrayList<Clock> listCT = (ArrayList<Clock>) request.getAttribute("listCT");
						if(listCT != null && listCT.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemCT: listCT){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemCT.getPrice() - ((itemCT.getPrice()*itemCT.getDiscount())/100) ;
					%>
                <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                    <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemCT.getId() %>" title="GA-2100-1A AP ROYAL OAK (DIAMOND)"><img src="<%=request.getContextPath() %>/files/<%=itemCT.getPicture() %>" alt="GA-2100-1A AP ROYAL OAK (DIAMOND)"></a>
                        <a
                            href="<%=request.getContextPath() %>/details?id=<%=itemCT.getId() %>" data-product_id="3529" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=3529" data-product_id="3529" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemCT.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                            </span>
                            </span>
                    </div>
                    <div class="kc-elm title" data-tooltip="GA-2100-1A AP ROYAL OAK (DIAMOND)"><a href="<%=request.getContextPath() %>/details?id=<%=itemCT.getId() %>" title="GA-2100-1A AP ROYAL OAK (DIAMOND)"><%=itemCT.getName() %></a></div>
                    <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemCT.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                        <div
                            class="vntp_sale">-<%=itemCT.getDiscount()%>%</div>
                </div>
            </div>
			<% } } %>
            
        </div>
        <div class="kc-elm vnt_pagenavi"><span aria-current="page" class="page-numbers current">1</span>
            <a class="page-numbers" href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/page/2/">2</a>
            <a class="page-numbers" href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/page/3/">3</a>
            <span class="page-numbers dots">&hellip;</span>
            <a class="page-numbers" href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/page/8/">8</a>
            <a class="next page-numbers" href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/page/2/"><i class="fa-chevron-right"></i></a></div>

        </div>
    </section>


    <section id="pcat_bst" class="kc-elm kc-css-716495 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-994671 vnt_title">

            <h2 class="type">Bộ sưu tập</h2>
            <span class="sub"></span>


        </div>
        <div class="kc-elm kc-css-391273 kc_col-sm-12 vnt_slick " data-slick='{"slidesToShow": 3,  "slidesToScroll": 3, "centerMode": false, "variableWidth": false, "dots": true, "arrows": false, "autoplay": true,  "autoplaySpeed": 10000, "infinite": true, "adaptiveHeight": false ,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 2, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 1, "slidesToScroll": 1, "adaptiveHeight": true}}]}'>
            <div class="kc-elm kc-css-53094 slick_item">
                <div class="kc-elm kc-css-979947 vnt_title">

                    <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/Picture12-370x250xc.png" alt="G-Shock "></div>
                    <div class="type">G-Shock </div> <i class="icon fa-long-arrow-right"></i>
                    <a href="#" class="link " title="G-Shock">G-Shock</a>

                </div>
            </div>
            <div class="kc-elm kc-css-758160 slick_item">
                <div class="kc-elm kc-css-9262 vnt_title">

                    <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/home_EQB-1000-1-370x250xc.jpeg" alt="Edifice "></div>
                    <div class="type">Edifice </div> <i class="icon fa-long-arrow-right"></i>
                    <a href="#" class="link " title="Edifice">Edifice</a>

                </div>
            </div>
            <div class="kc-elm kc-css-930437 slick_item">
                <div class="kc-elm kc-css-390209 vnt_title">

                    <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/gshock-baby-g-370x250xc.jpeg" alt="Baby-G"></div>
                    <div class="type">Baby-G</div> <i class="icon fa-long-arrow-right"></i>
                    <a href="#" class="link " title="Baby-G">Baby-G</a>

                </div>
            </div>
            <div class="kc-elm kc-css-799097 slick_item">
                <div class="kc-elm kc-css-73527 vnt_title">

                    <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/Picture1-1-370x250xc.png" alt="Vintage Casio"></div>
                    <div class="type">Vintage Casio</div> <i class="icon fa-long-arrow-right"></i>
                    <a href="#" class="link " title="Vintage Casio">Vintage Casio</a>

                </div>
            </div>
            <div class="kc-elm kc-css-480482 slick_item">
                <div class="kc-elm kc-css-683255 vnt_title">

                    <div class="thumb"><img class="img_1" src="https://gshockvn.net/wp-content/uploads/G-WATCH-SIGNATURE-370x250xc.png" alt="GA-2100 AP Royal Oak"></div>
                    <div class="type">GA-2100 AP Royal Oak</div> <i class="icon fa-long-arrow-right"></i>
                    <a href="#" class="link " title="GA-2100 AP Royal Oak">GA-2100 AP Royal Oak</a>

                </div>
            </div>
        </div>


    </section>


    <section id="pcat_khachhang" class="kc-elm kc-css-87768 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-376027 vnt_title">

            <h2 class="type">KHÁCH HÀNG CỦA CHÚNG TÔI</h2>
            <span class="sub"></span>
            <div class="cont">Ai nói bạn không thể tỏa sáng?</div>


        </div>
        <div class="kc-elm kc-css-191378 kc_col-sm-12 vnt_slick " data-slick='{"slidesToShow": 5,  "slidesToScroll": 3, "centerMode": false, "variableWidth": false, "dots": true, "arrows": false, "autoplay": true,  "autoplaySpeed": 10000, "infinite": true, "adaptiveHeight": false ,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 4, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 3, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}]}'>
            <div class="kc-elm kc-css-78721 slick_item">
                <div class="kc-elm kc-css-166268 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/eddc4f45d7b618e841a7-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Sự Hài Lòng Của Quý Khách Hàng</div>
                    <div class="desc">Giá cả phải chăng - Tư vấn tận tâm
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/eddc4f45d7b618e841a7.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-727647 slick_item">
                <div class="kc-elm kc-css-250101 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/bedb5e8b421d8d43d40c-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Giao hàng tận nơi !! </div>
                    <div class="desc">
                        <p>Check hàng, hướng dẫn sự dụng chi tiết </p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/bedb5e8b421d8d43d40c.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-913559 slick_item">
                <div class="kc-elm kc-css-193201 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/d958ad2db1bb7ee527aa.jpg" alt="">
                    </div>
                    <div class="title">Mẫu Mã Đa Dạng</div>
                    <div class="desc">
                        <p>Đáp ưng mọi nhu cầu của quý khách hàng </p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/d958ad2db1bb7ee527aa.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-684814 slick_item">
                <div class="kc-elm kc-css-287593 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/ae8833d6a4226b7c3233-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Chính Sách Ưu Đãi Số 1 </div>
                    <div class="desc">
                        <p>Mức giá tuyệt vời cho khách hàng của G-Watch</p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/ae8833d6a4226b7c3233.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-298864 slick_item">
                <div class="kc-elm kc-css-491352 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/0a5ca41d33e9fcb7a5f8-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Độ Hoàn Thiện Sản Phẩm Tuyệt Đối </div>
                    <div class="desc">
                        <p>Cam kết chất lượng vượt trội, bền bỉ</p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/0a5ca41d33e9fcb7a5f8.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-234051 slick_item">
                <div class="kc-elm kc-css-355450 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/a23be679718dbed3e79c-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Độc - Lạ - Chất</div>
                    <div class="desc">Sản phẩm phù hợp với cá tính của riêng bạn
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/a23be679718dbed3e79c.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-799257 slick_item">
                <div class="kc-elm kc-css-340932 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/IMG-7969-scaled-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Sản Phẩm Cực Chất</div>
                    <div class="desc">
                        <p>Chỉ có tại G-Watch</p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/IMG-7969-scaled.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-240427 slick_item">
                <div class="kc-elm kc-css-114557 vnt_image ">
                    <div class="thumb">
                        <img src="https://gshockvn.net/wp-content/uploads/12fd4db3da4715194c56-370x210xc.jpg" alt="">
                    </div>
                    <div class="title">Địa Điểm Mua Hàng Tin Cậy</div>
                    <div class="desc">
                        <p>Showroom tại TP.HCM luôn sẵn lòng phục vụ quý khách hàng </p>
                    </div>
                    <a data-fancybox href="https://gshockvn.net/wp-content/uploads/12fd4db3da4715194c56.jpg" title="" class="link"></a>
                </div>
            </div>
            <div class="kc-elm kc-css-387364 slick_item">
                <div class="item"></div>
            </div>
        </div>


    </section>





   <%@include file="/templates/public/inc/footer.jsp" %>