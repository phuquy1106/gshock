<%@page import="model.bean.Clock"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>

    
    <section id="main_product_archive" class="kc-elm kc-css-128228 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
        	<%
        		ArrayList<Clock> listTK = (ArrayList<Clock>) request.getAttribute("listTK");
        		String s = (String) request.getAttribute("s");
        	%>
            <div class="kc-elm kc-css-677618 vnt_editor">
                <span><span><a href="https://gshockvn.net/">Trang chủ</a> &raquo; <span class="breadcrumb_last" aria-current="page">Bạn đã tìm <%=s %></span></span>
                </span>
            </div>

            <div class="kc-elm kc-css-646792 vnt_title">

                <h1 class="type">Tìm kiếm từ khóa: <%=s %></h1>


            </div>

            <div class="kc-elm kc-css-43475 vnt_title">

                <i class="icon fa-filter"></i>
                <button type="button" class="link" data-toggle="modal" data-target="#aproduct_filter"></button>

            </div>
            <div id="aproduct_filter" class="kc-elm kc-css-169533 kc_row kc_row_inner">
                <div class="kc-elm kc-css-800261 kc_col-sm-8 kc_column_inner kc_col-sm-8">

                    <div class="kc-elm kc-css-399283 vnt_title">

                        <i class="icon fa-times-octagon"></i>
                        <button type="button" class="link" data-toggle="modal" data-target="#aproduct_filter"></button>

                    </div>
                    <div class="widget woocommerce widget_product_categories kc-elm kc-css-933812 pcat_filter">
                        <h2 class="widgettitle">Bộ sưu tập</h2>
                        <ul class="product-categories">
                            <li class="cat-item cat-item-19"><a href="https://gshockvn.net/danh-muc-san-pham/phu-kien-nu/">Phụ kiện nữ</a> <span class="count">(5)</span></li>
                            <li class="cat-item cat-item-23"><a href="https://gshockvn.net/danh-muc-san-pham/mudmaster/">Mudmaster</a> <span class="count">(14)</span></li>
                            <li class="cat-item cat-item-24"><a href="https://gshockvn.net/danh-muc-san-pham/baby-g/">Baby-G</a> <span class="count">(105)</span></li>
                            <li class="cat-item cat-item-26"><a href="https://gshockvn.net/danh-muc-san-pham/edifice/">Edifice</a> <span class="count">(37)</span></li>
                            <li class="cat-item cat-item-28"><a href="https://gshockvn.net/danh-muc-san-pham/g-steel/">G-Steel</a> <span class="count">(61)</span></li>
                            <li class="cat-item cat-item-29"><a href="https://gshockvn.net/danh-muc-san-pham/gravity-master/">Gravity Master</a> <span class="count">(19)</span></li>
                            <li class="cat-item cat-item-32"><a href="https://gshockvn.net/danh-muc-san-pham/ga-2100-ap-royal-oak/">GA-2100 AP Royal Oak</a> <span class="count">(101)</span></li>
                            <li class="cat-item cat-item-33"><a href="https://gshockvn.net/danh-muc-san-pham/vintage-casio/">Vintage Casio</a> <span class="count">(0)</span></li>
                            <li class="cat-item cat-item-16 cat-parent"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/">Đồng hồ nam</a> <span class="count">(299)</span>
                                <ul class='children'>
                                    <li class="cat-item cat-item-27"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nam/g-shock/">G-Shock</a> <span class="count">(299)</span></li>
                                </ul>
                            </li>
                            <li class="cat-item cat-item-34"><a href="https://gshockvn.net/danh-muc-san-pham/day-vo-ga-2100-ap-royal-oak/">Dây vỏ GA-2100 AP Royal Oak</a> <span class="count">(8)</span></li>
                            <li class="cat-item cat-item-17"><a href="https://gshockvn.net/danh-muc-san-pham/dong-ho-nu/">Đồng hồ nữ</a> <span class="count">(0)</span></li>
                        </ul>
                    </div>
                </div>
                <div class="kc-elm kc-css-383393 vnt_editor">
                    <form class="woocommerce-ordering" method="get">
                        <select name="orderby" class="orderby" aria-label="Đơn hàng của cửa hàng">
					<option value="relevance"  selected='selected'>Độ liên quan</option>
					<option value="date" >Sản phẩm mới</option>
					<option value="rating" >Đánh giá cao</option>
					<option value="price" >Giá: Thấp → Cao</option>
					<option value="price-desc" >Giá: Cao → Thấp</option>
			</select>
                        <input type="hidden" name="paged" value="1" />
                        <input type="hidden" name="s" value="ga" /><input type="hidden" name="post_type" value="product" /><input type="hidden" name="dgwt_wcas" value="1" /></form>
                </div>
            </div>
            <div class="kc-elm kc-css-776276 vnt_archive vnt_product">
				<% 
					if(listTK != null && listTK.size() > 0){
					int a = 0;
					int b = 0;
					String odd = "";
					for(Clock itemTK: listTK){
						a++;
						if(a % 2 == 0){
							odd = "even";
						}else{
							odd = "odd";
						}
						b = itemTK.getPrice() - ((itemTK.getPrice()*itemTK.getDiscount())/100) ;
				%>
                <div class="kc-elm product item item_<%=a %> <%=odd %> ">
                    <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemTK.getId() %>" title="GA-110-1A"><img src="<%=request.getContextPath() %>/files/<%=itemTK.getPicture() %>" alt="GA-110-1A"></a>
                        <a
                            href="<%=request.getContextPath() %>/details?id=<%=itemTK.getId() %>" data-product_id="1533" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=1533" data-product_id="1533" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a><span class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemTK.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                            </span>
                            </span>
                    </div>
                    <div class="kc-elm title" data-tooltip="GA-110-1A"><a href="<%=request.getContextPath() %>/details?id=<%=itemTK.getId() %>" title="GA-110-1A"><%=itemTK.getName() %></a></div>
                    <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemTK.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                        <div
                            class="vntp_sale">-<%=itemTK.getDiscount()%>%</div>
                </div>
            </div>


        <% } } %>
        </div>
        <div class="kc-elm vnt_pagenavi"><span aria-current="page" class="page-numbers current">1</span>
            <a class="page-numbers" href="https://gshockvn.net/page/2/?s=ga&#038;post_type=product&#038;dgwt_wcas=1#038;post_type=product&#038;dgwt_wcas=1">2</a>
            <a class="page-numbers" href="https://gshockvn.net/page/3/?s=ga&#038;post_type=product&#038;dgwt_wcas=1#038;post_type=product&#038;dgwt_wcas=1">3</a>
            <span class="page-numbers dots">&hellip;</span>
            <a class="page-numbers" href="https://gshockvn.net/page/14/?s=ga&#038;post_type=product&#038;dgwt_wcas=1#038;post_type=product&#038;dgwt_wcas=1">14</a>
            <a class="next page-numbers" href="https://gshockvn.net/page/2/?s=ga&#038;post_type=product&#038;dgwt_wcas=1#038;post_type=product&#038;dgwt_wcas=1"><i class="fa-chevron-right"></i></a></div>

        </div>
    </section>

  <%@include file="/templates/public/inc/footer.jsp" %>