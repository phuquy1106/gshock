<%@page import="model.bean.News"%>
<%@page import="model.bean.Clock"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>


    <div class="kc_clfw"></div>
    <div class="kc-elm kc-css-256604 kc_col-sm-12 vnt_slick " data-slick='{"slidesToShow": 1,  "slidesToScroll": 1, "centerMode": false, "variableWidth": false, "dots": true, "arrows": true, "autoplay": true,  "autoplaySpeed": 6000, "infinite": true, "adaptiveHeight": true ,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 2, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 1, "slidesToScroll": 1, "adaptiveHeight": true}}]}'>
        <div class="kc-elm kc-css-660617 slick_item">
            <div class="kc-elm kc-css-306089 vnt_image ">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/hong-ho-casio-1-1_auto_x2-scaled.jpg" alt="">
                </div>
                <a href="https://gshockvn.net/cua-hang/" title="" class="link"></a>
            </div>
        </div>
        <div class="kc-elm kc-css-977486 slick_item">
            <div class="kc-elm kc-css-753663 vnt_image ">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/gravitymaster-2_auto_x2-scaled.jpg" alt="">
                </div>
                <a href="https://gshockvn.net/cua-hang/" title="" class="link"></a>
            </div>
        </div>
        <div class="kc-elm kc-css-15423 slick_item">
            <div class="kc-elm kc-css-984818 vnt_image ">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/gravitymaster1_auto_x2-scaled.jpg" alt="">
                </div>
                <a href="https://gshockvn.net/cua-hang/" title="" class="link"></a>
            </div>
        </div>
    </div>




    <section id="home_dichvu" class="kc-elm kc-css-608473 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container home_dichvu_cont vnt_col">

            <div class="kc-elm kc-css-298228 vnt_title">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/vanchuyen.png" alt="Free COD Toàn Quốc"></div>
                <h4 class="type">Free COD Toàn Quốc</h4>
                <span class="sub">Chúng tôi miễn phí vận chuyển với tất cả các đơn hàng trị giá trên 2.000.000Đ</span>

            </div>



            <div class="kc-elm kc-css-687972 vnt_title">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/dienthoai.png" alt="Hỗ Trợ Online 24/24"></div>
                <h4 class="type">Hỗ Trợ Online 24/24</h4>
                <span class="sub">Chúng tôi luôn luôn hỗ trợ khách hàng 24/24 tất cả các ngày trong tuần</span>

            </div>



            <div class="kc-elm kc-css-830078 vnt_title">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/hotro.png" alt="Miễn Phí Đổi Trả"></div>
                <h4 class="type">Miễn Phí Đổi Trả</h4>
                <span class="sub">Đổi mới trong vòng 1 tháng, bảo hành 5 năm, thay pin trọn đời</span>

            </div>



            <div class="kc-elm kc-css-469696 vnt_title">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/quatang.png" alt="Quà Tặng Hấp Dẫn"></div>
                <h4 class="type">Quà Tặng Hấp Dẫn</h4>
                <span class="sub">Chương trình khuyễn mãi cực lớn và hấp dẫn vào mỗi chủ nhật hàng tuần</span>

            </div>


        </div>
    </section>


    <section id="home_danhmuc" class="kc-elm kc-css-468987 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-719214 vnt_title">

            <h2 class="type">DANH MỤC SẢN PHẨM</h2>
            <span class="sub"></span>


        </div>
        <div id="home_catsp" class="kc-elm kc-css-390335 kc_row kc_row_inner home_catsp">

            <div class="kc-elm kc-css-425632 vnt_title home_category">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/DongHo.jpeg" alt="G-Shock "></div>
                <div class="col">
                    <div class="type">G-Shock </div>
                    <span class="sub">Xem thêm</span> <i class="icon fa-long-arrow-right"></i>
                </div>
                <a href="https://gshockvn.net/danh-muc-san-pham/g-shock/" class="link " title=""></a>


            </div>

            <div class="kc-elm kc-css-552086 vnt_title home_category">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/MA_Banner_Edifice_800x700_EFR-569_1.jpeg" alt="Edifice "></div>
                <div class="col">
                    <div class="type">Edifice </div>
                    <span class="sub">Xem thêm</span> <i class="icon fa-long-arrow-right"></i>
                </div>
                <a href="https://gshockvn.net/danh-muc-san-pham/edifice/" class="link " title=""></a>


            </div>

            <div class="kc-elm kc-css-159769 vnt_title home_category">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/gshock-baby-g.jpeg" alt="Baby-G"></div>
                <div class="col">
                    <div class="type">Baby-G</div>
                    <span class="sub">Xem thêm</span> <i class="icon fa-long-arrow-right"></i>
                </div>
                <a href="https://gshockvn.net/danh-muc-san-pham/baby-g/" class="link " title=""></a>


            </div>

            <div class="kc-elm kc-css-536470 vnt_title home_category">

                <div class="thumb"><img class="img_1" src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/Picture1-1.png" alt="Vintage Casio"></div>
                <div class="col">
                    <div class="type">Vintage Casio</div>
                    <span class="sub">Xem thêm</span> <i class="icon fa-long-arrow-right"></i>
                </div>
                <a href="https://gshockvn.net/danh-muc-san-pham/vintage-casio/" class="link " title=""></a>


            </div>
        </div>


    </section>



    <div class="kc-elm kc-css-76422 vnt_title">

        <h2 class="type">Top Sản phẩm bán chạy</h2>
        <span class="sub"></span>


    </div>




    <section id="home_topsp" class="kc-elm kc-css-511986 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
            <div class="kc-elm kc-css-908998 vntabs tabs_topsp">
                <ul class="vntabs_nav ">
                	<%
                		ArrayList<Clock> listDMBC = (ArrayList<Clock>) request.getAttribute("listDMBC");
                		if(listDMBC != null && listDMBC.size() > 0){
                			for(Clock itemDMBC: listDMBC){
                	%>
                    <li class="vntabs_item vntabs_nav_item">
                        <div class="title"><%=itemDMBC.getCategories().getName() %> </div>
                    </li>
                    <% } } %>
                </ul>
                <div class="kc-elm vntabs_content">
                    <div class="kc-elm kc-css-551015 vntabs_cont">
                        <div class="kc-elm kc-css-687750 vnt_archive vnt_product">
							<%
								ArrayList<Clock> listBCA = (ArrayList<Clock>) request.getAttribute("listBCA");
								int i = 0;
								if(listBCA != null && listBCA.size() > 0){
									int a = 0;
									for(Clock itemBCA: listBCA){
										i++;
										a = itemBCA.getPrice() - ((itemBCA.getPrice()*itemBCA.getDiscount())/100) ;
							%>
                            <div class="kc-elm product item item_<%=i %> odd ">
                                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemBCA.getId() %>" title="GST-B100-1ADR"><img src="<%=request.getContextPath() %>/files/<%=itemBCA.getPicture() %>" alt="GST-B100-1ADR"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemBCA.getId() %>"
                                        data-product_id="967" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=967" data-product_id="967" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                                    <%if( itemBCA.getDiscount() > 0){ %>
                                    <span
                                        class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemBCA.getPrice() - a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                        </span>
                                        </span>
                                        <% } %>
                                </div>
                                <div class="kc-elm title" data-tooltip="GST-B100-1ADR"><a href="<%=request.getContextPath() %>/details?id=<%=itemBCA.getId() %>" title="GST-B100-1ADR"><%=itemBCA.getName() %></a></div>
                                <div class="price"><%if( itemBCA.getDiscount() > 0){ %><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemBCA.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del><%} %> <ins><span class="woocommerce-Price-amount amount"><bdi><%=a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                                    <%if( itemBCA.getDiscount() > 0){ %>
                                    <div
                                        class="vntp_sale">-<%=itemBCA.getDiscount()%>%</div>
                                        <% } %>
                            </div>
                        </div>
                        <% } } %>

        </div>
		<% if(i > 8){ %>
        <div class="kc-elm kc-css-142397 vnt_title">

            <div class="type">Xem thêm</div><i class="icon fa-long-arrow-right"></i>
            <a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/g-shock/" class="link " title="G-Shock">G-Shock</a>

        </div>
        <% } %>
        </div>
        <div class="kc-elm kc-css-614448 vntabs_cont">
            <div class="kc-elm kc-css-25802 vnt_archive vnt_product">

                <%
								ArrayList<Clock> listBCB = (ArrayList<Clock>) request.getAttribute("listBCB");
								i = 0;
								if(listBCB != null && listBCB.size() > 0){
									int a = 0;
									for(Clock itemBCB: listBCB){
										i++;
										a = itemBCB.getPrice() - ((itemBCB.getPrice()*itemBCB.getDiscount())/100) ;
							%>
                            <div class="kc-elm product item item_<%=i %> odd ">
                                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemBCB.getId() %>" title="GST-B100-1ADR"><img src="<%=request.getContextPath() %>/files/<%=itemBCB.getPicture() %>" alt="GST-B100-1ADR"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemBCB.getId() %>"
                                        data-product_id="967" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=967" data-product_id="967" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                                    <%if( itemBCB.getDiscount() > 0){ %>
                                    <span
                                        class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemBCB.getPrice() - a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                        </span>
                                        </span>
                                        <% } %>
                                </div>
                                <div class="kc-elm title" data-tooltip="GST-B100-1ADR"><a href="<%=request.getContextPath() %>/details?id=<%=itemBCB.getId() %>" title="GST-B100-1ADR"><%=itemBCB.getName() %></a></div>
                                <div class="price"><%if( itemBCB.getDiscount() > 0){ %><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemBCB.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del><% } %> <ins><span class="woocommerce-Price-amount amount"><bdi><%=a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                                    <%if( itemBCB.getDiscount() > 0){ %>
                                    <div
                                        class="vntp_sale">-<%=itemBCB.getDiscount()%>%</div>
                                        <% } %>
                            </div>
                        </div>
                        <% } } %>
            </div>
			<% if(i > 8){ %>
            <div class="kc-elm kc-css-712775 vnt_title">

                <div class="type">Xem thêm</div><i class="icon fa-long-arrow-right"></i>
                <a href="https://gshockvn.net/danh-muc-san-pham/ga-2100-ap-royal-oak/" class="link " title="GA-2100 AP Royal Oak">GA-2100 AP Royal Oak</a>

            </div>
            <% } %>
        </div>
        <div class="kc-elm kc-css-52757 vntabs_cont">
            <div class="kc-elm kc-css-839201 vnt_archive vnt_product">

                <%
								ArrayList<Clock> listBCC = (ArrayList<Clock>) request.getAttribute("listBCC");
								i = 0;
								if(listBCC != null && listBCC.size() > 0){
									int a = 0;
									for(Clock itemBCC: listBCC){
										i++;
										a = itemBCC.getPrice() - ((itemBCC.getPrice()*itemBCC.getDiscount())/100) ;
							%>
                            <div class="kc-elm product item item_<%=i %> odd ">
                                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemBCC.getId() %>" title="GST-B100-1ADR"><img src="<%=request.getContextPath() %>/files/<%=itemBCC.getPicture() %>" alt="GST-B100-1ADR"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemBCC.getId() %>"
                                        data-product_id="967" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=967" data-product_id="967" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                                    <%if( itemBCC.getDiscount() > 0){ %>
                                    <span
                                        class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemBCC.getPrice() - a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                        </span>
                                        </span>
                                        <% } %>
                                </div>
                                <div class="kc-elm title" data-tooltip="GST-B100-1ADR"><a href="<%=request.getContextPath() %>/details?id=<%=itemBCC.getId() %>" title="GST-B100-1ADR"><%=itemBCC.getName() %></a></div>
                                <div class="price"><%if( itemBCC.getDiscount() > 0){ %><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemBCC.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del><% } %> <ins><span class="woocommerce-Price-amount amount"><bdi><%=a %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                                    <%if( itemBCC.getDiscount() > 0){ %>
                                    <div
                                        class="vntp_sale">-<%=itemBCC.getDiscount()%>%</div>
                                        <% } %>
                            </div>
                        </div>
                        <% } } %>
        </div>
		<% if(i > 8){ %>
        <div class="kc-elm kc-css-121116 vnt_title">

            <div class="type">Xem thêm</div><i class="icon fa-long-arrow-right"></i>
            <a href="https://gshockvn.net/danh-muc-san-pham/baby-g/" class="link " title="Baby-G">Baby-G</a>

        </div>
        <% } %>
        </div>
        </div>
        </div>


        </div>
    </section>


    <section id="home_flash_sale" class="kc-elm kc-css-392683 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-740946 vnt_title">

            <h2 class="type">FLASH SALE HÀNG TUẦN</h2>
            <span class="sub"></span>


        </div>
        <div class="kc-elm kc-css-519744 products vnt_slick vnt_archive vnt_product product_slider flex_true" data-slick='{"centerMode": false, "variableWidth": false, "slidesToShow": 1, "slidesToScroll": 1, "dots": true, "arrows": false, "autoplay": true,  "autoplaySpeed": 10000, "infinite": true,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 1, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 1, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 1, "slidesToScroll": 1}}]}'>
			
            
			
			<%
						ArrayList<Clock> listFS = (ArrayList<Clock>) request.getAttribute("listFS");
						if(listFS != null && listFS.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemFS: listFS){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemFS.getPrice() - ((itemFS.getPrice()*itemFS.getDiscount())/100) ;
								
					%>
            <div class="kc-elm product item item_2 even ">
                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemFS.getId() %>" title="MSG-S200-7ADR"><img src="<%=request.getContextPath() %>/files/<%=itemFS.getPicture() %>" alt="MSG-S200-7ADR"></a>
                    <a
                        href="<%=request.getContextPath() %>/details?id=<%=itemFS.getId() %>" data-product_id="1929" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=1929" data-product_id="1929" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemFS.getPrice() - b%><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                        </span>
                        </span>
                </div>
                <div class="col">
                    <div class="kc-elm title" data-tooltip="MSG-S200-7ADR"><a href="<%=request.getContextPath() %>/details?id=<%=itemFS.getId() %>" title="MSG-S200-7ADR"><%=itemFS.getName() %></a></div>
                    <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemFS.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                        <div
                            class="vntp_sale">-<%=itemFS.getDiscount()%>%</div>
                </div>
                <a href="javascript:void(0)" data-product_id="1929" class="dat_hang ajax_add_to_cart" onclick="return getTorder(<%=itemFS.getId() %>)">Đặt hàng</a>
            </div>
        </div>
		<% } } %>
        
        </div>
			<script type="text/javascript">
				function getTorder(id){
					$.ajax({
						url: '<%=request.getContextPath()%>/torderdetail',
						type: 'POST',
						cache: false,
						data: {
							aid:id
						},
						success: function(data){
							$(".num").html(data);
						},
						error: function (){
							alert('Có lỗi xảy ra');
						}
					});
					return false;
				}
			</script>

    </section>


    <section id="home_danhmuc1" class="kc-elm kc-css-318809 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-314684 vnt_title">

            <h2 class="type">Đồng hồ G-Shock</h2>
            <span class="sub"></span>
            <a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/g-shock/" class="link " title="G-Shock">G-Shock</a>

        </div>
        <div class="kc-elm kc-css-997858 kc_row kc_row_inner">
            <div class="kc-elm kc-css-683267 kc_col-sm-6 kc_column_inner kc_col-sm-6">
                <div class="kc-elm kc-css-383943 vnt_archive vnt_product">
					<%
						ArrayList<Clock> listSPG = (ArrayList<Clock>) request.getAttribute("listSPG");
						if(listSPG != null && listSPG.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemSPG: listSPG){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemSPG.getPrice() - ((itemSPG.getPrice()*itemSPG.getDiscount())/100) ;
								if(a < 3){
					%>
                    <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                        <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>" title="GA-2100-1A AP ROYAL OAK (DIAMOND)"><img src="<%=request.getContextPath() %>/files/<%=itemSPG.getPicture() %>" alt="GA-2100-1A AP ROYAL OAK (DIAMOND)"></a>
                            <a
                                href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>" data-product_id="3529" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=3529" data-product_id="3529" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemSPG.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                </span>
                                </span>
                        </div>
                        <div class="kc-elm title" data-tooltip="GA-2100-1A AP ROYAL OAK (DIAMOND)"><a href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>" title="GA-2100-1A AP ROYAL OAK (DIAMOND)"><%=itemSPG.getName() %></a></div>
                        <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemSPG.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                            <div
                                class="vntp_sale">-<%=itemSPG.getDiscount()%>%</div>
                    </div>
                </div>

            <% } } } %>
        </div>
        </div>
        <div class="kc-elm kc-css-786034 kc_col-sm-6 kc_column_inner kc_col-sm-6">
            <div class="kc-elm kc-css-689019 vnt_image hover_zoom">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/Picture1-2.png" alt="">
                </div>
                <div class="kc-elm ovelay">
                    <div class="ovelay_cont">40% OFF</div>
                </div>
                <a href="" title="" class="link"></a>
            </div>
        </div>
        </div>
        <div class="kc-elm kc-css-981936 products vnt_slick vnt_archive vnt_product product_slider flex_true" data-slick='{"centerMode": false, "variableWidth": false, "slidesToShow": 4, "slidesToScroll": 2, "dots": true, "arrows": false, "autoplay": false,   "infinite": true,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 3, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 3, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}]}'>
			<%
						if(listSPG != null && listSPG.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemSPG: listSPG){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemSPG.getPrice() - ((itemSPG.getPrice()*itemSPG.getDiscount())/100) ;
								if(a > 2){
					%>
            <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>" title="GA-2100HC-2A"><img src="<%=request.getContextPath() %>/files/<%=itemSPG.getPicture() %>" alt="GA-2100HC-2A"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>"
                        data-product_id="3504" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=3504" data-product_id="3504" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemSPG.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                    </span>
                    </span>
                </div>
                <div class="kc-elm title" data-tooltip="GA-2100HC-2A"><a href="<%=request.getContextPath() %>/details?id=<%=itemSPG.getId() %>" title="GA-2100HC-2A"><%=itemSPG.getName() %></a></div>
                <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemSPG.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                    <div
                        class="vntp_sale">-<%=itemSPG.getDiscount()%>%</div>
            </div>
        </div>
<% } } } %>
        
        </div>


    </section>


    <section id="home_danhmuc2" class="kc-elm kc-css-302218 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-697542 vnt_title">

            <h2 class="type">Đồng hồ Baby-G</h2>
            <span class="sub"></span>
            <a href="https://gshockvn.net/danh-muc-san-pham/baby-g/" class="link " title="Baby-G">Baby-G</a>

        </div>
        <div class="kc-elm kc-css-968217 kc_row kc_row_inner">
            <div class="kc-elm kc-css-76877 kc_col-sm-6 kc_column_inner kc_col-sm-6">
                <div class="kc-elm kc-css-755104 vnt_image hover_zoom">
                    <div class="thumb">
                        <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/DongHo.jpeg" alt="">
                    </div>
                </div>
            </div>
            <div class="kc-elm kc-css-706634 kc_col-sm-6 kc_column_inner kc_col-sm-6">
                <div class="kc-elm kc-css-180559 vnt_archive vnt_product">
					<%
						ArrayList<Clock> listSPB = (ArrayList<Clock>) request.getAttribute("listSPB");
						if(listSPB != null && listSPB.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemSPB: listSPB){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemSPB.getPrice() - ((itemSPB.getPrice()*itemSPB.getDiscount())/100) ;
								if(a < 3){
					%>
                    <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                        <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>" title="BA-130-7A1DR"><img src="<%=request.getContextPath() %>/files/<%=itemSPB.getPicture() %>" alt="BA-130-7A1DR"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>"
                                data-product_id="2177" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=2177" data-product_id="2177" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                            <span
                                class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemSPB.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                </span>
                                </span>
                        </div>
                        <div class="kc-elm title" data-tooltip="BA-130-7A1DR"><a href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>" title="BA-130-7A1DR"><%=itemSPB.getName() %></a></div>
                        <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemSPB.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                            <div
                                class="vntp_sale">-<%=itemSPB.getDiscount()%>%</div>
                    </div>
                </div>
				<% } } } %>
        </div>
        </div>
        </div>
        <div class="kc-elm kc-css-85340 products vnt_slick vnt_archive vnt_product product_slider flex_true" data-slick='{"centerMode": false, "variableWidth": false, "slidesToShow": 4, "slidesToScroll": 2, "dots": true, "arrows": false, "autoplay": false,   "infinite": true,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 3, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 3, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}]}'>
			<%
						if(listSPB != null && listSPB.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemSPB: listSPB){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemSPB.getPrice() - ((itemSPB.getPrice()*itemSPB.getDiscount())/100) ;
								if(a > 2){
					%>
            <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>" title="BA-130-1ADR"><img src="<%=request.getContextPath() %>/files/<%=itemSPB.getPicture() %>" alt="BA-130-1ADR"></a>
                    <a
                        href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>" data-product_id="2172" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=2172" data-product_id="2172" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemSPB.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                        </span>
                        </span>
                </div>
                <div class="kc-elm title" data-tooltip="BA-130-1ADR"><a href="<%=request.getContextPath() %>/details?id=<%=itemSPB.getId() %>" title="BA-130-1ADR"><%=itemSPB.getName() %></a></div>
                <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemSPB.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                    <div
                        class="vntp_sale">-<%=itemSPB.getDiscount()%>%</div>
            </div>
        </div>
		<% } } } %>
        
        </div>
        <div class="kc-elm kc-css-666202 vnt_editor">
            <script>
                jQuery(document).ready(function($) {
                    $('.home_mcat').slick({
                        rows: 2,
                        dots: true,
                        arrows: false,
                        infinite: true,
                        speed: 300,
                        slidesToShow: 2,
                        slidesToScroll: 2
                    });
                });
            </script>
        </div>


    </section>


    <section id="home_danhmuc3" class="kc-elm kc-css-741686 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-896181 vnt_title">

            <h2 class="type">Đồng hồ mới về</h2>
            <span class="sub"></span>
            <a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nu/" class="link " title="Đồng hồ nữ">Đồng hồ nữ</a>

        </div>
        <div class="kc-elm kc-css-101607 kc_row kc_row_inner">
            <div class="kc-elm kc-css-790867 kc_col-sm-6 kc_column_inner kc_col-sm-6">
                <div class="kc-elm kc-css-245435 vnt_archive vnt_product home_danhmuc_phukien">
					<%
						ArrayList<Clock> listMV = (ArrayList<Clock>) request.getAttribute("listMV");
						if(listMV != null && listMV.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemMV: listMV){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								b = itemMV.getPrice() - ((itemMV.getPrice()*itemMV.getDiscount())/100) ;
								if(a < 13){
					%>
                    <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                        <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemMV.getId() %>" title="BA-130-7A1DR"><img src="<%=request.getContextPath() %>/files/<%=itemMV.getPicture() %>" alt="BA-130-7A1DR"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemMV.getId() %>"
                                data-product_id="2177" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=2177" data-product_id="2177" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                            <span
                                class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemMV.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                </span>
                                </span>
                        </div>
                        <div class="kc-elm title" data-tooltip="BA-130-7A1DR"><a href="<%=request.getContextPath() %>/details?id=<%=itemMV.getId() %>" title="BA-130-7A1DR"><%=itemMV.getName() %></a></div>
                        <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemMV.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                            <div
                                class="vntp_sale">-<%=itemMV.getDiscount()%>%</div>
                    </div>
                </div>
				<% } } } %>
        </div>
        <div class="kc-elm kc-css-960096 vnt_editor">
            <script>
                jQuery(document).ready(function($) {
                    $('.home_danhmuc_phukien').slick({
                        rows: 2,
                        dots: true,
                        arrows: false,
                        infinite: true,
                        speed: 300,
                        slidesToShow: 2,
                        slidesToScroll: 2
                    });
                });
            </script>
        </div>
        </div>
        <div class="kc-elm kc-css-964907 kc_col-sm-6 kc_column_inner kc_col-sm-6">
            <div class="kc-elm kc-css-147149 vnt_image hover_zoom">
                <div class="thumb">
                    <img src="<%=request.getContextPath() %>/templates/public/wp-content/uploads/GBA-400-1A9DR-4.jpeg" alt="">
                </div>
            </div>
        </div>
        </div>


    </section>


    <section id="home_tinbai" class="kc-elm kc-css-620935 kc_row vnt_section hide_col_cont">

        <div class="kc-elm kc-css-318252 vnt_title">

            <h2 class="type">TIN TỨC</h2>
            <span class="sub"></span>
            <a href="https://gshockvn.net/category/tin-tuc/" class="link " title="Tin tức">Tin tức</a>

        </div>
        <div class="kc-elm kc-css-228787 vnt_archive post">
			<%
						ArrayList<News> listN = (ArrayList<News>) request.getAttribute("listN");
						if(listN != null && listN.size() > 0){
							int a = 0;
							String odd = "";
							for(News itemN: listN){
								a++;
								if(a % 2 == 0){
									odd = "even";
								}else{
									odd = "odd";
								}
								if(a < 4){
					%>
            <div class="kc-elm item item_<%=a %> <%=odd%>">
                <a class="kc-elm thumb" href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả"><img src="<%=request.getContextPath() %>/files/<%=itemN.getPicture() %>" alt="Cách phối dây da đơn giản mà cực kỳ hiệu quả"></a>
                <div class="kc-elm title"><a href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả"><%=itemN.getName() %></a></div>
                <div class="cat"><a class="cat_item" href="https://gshockvn.net/category/tin-tuc/" alt="Tin tức">Tin tức</a> </div><span class="date"><%=itemN.getDate() %></span>
                <div class="kc-elm desc"><%
															if(itemN.getPreview().length() > 50){
																out.print(itemN.getPreview().substring(0, 50) + "...");
															}else{
																out.print(itemN.getPreview());
															}
														%></div>
                <div class="kc-elm more"><a href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả">Xem thêm</a> <i class="fa-long-arrow-right"></i></div>
            </div>
<% } } } %>
        </div>



    </section>



<%@include file="/templates/public/inc/footer.jsp" %>