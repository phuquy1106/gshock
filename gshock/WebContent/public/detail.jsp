<%@page import="model.bean.Comment"%>
<%@page import="model.bean.Clock"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>

        <section id="before_single_product" class="kc-elm kc-css-74667 kc_row vnt_section hide_col_cont">
            <div class="kc-elm kc-css-284788 kc_col-sm-12 kc_column kc_col-sm-12">
                <div class="kc-col-container">
                    <div class="woocommerce-notices-wrapper"></div>
                </div>
            </div>


        </section>
		<%
			Clock itemClock = (Clock) request.getAttribute("itemClock");
		%>

        <section id="main_single_product" class="kc-elm kc-css-327134 kc_row product vnt_section hide_col">
            <div class="kc-row-container kc-container vnt_col">
                <div class="kc-elm kc-css-483988 kc_col-sm-6 kc_column kc_col-sm-6">
                    <div class="kc-elm kc-css-304239 vnt_editor product-gallery">


                        <div class="woocommerce-product-gallery images">
                            <div class="vntwp_gallery vntsp_gallery">
                                <div class="woocommerce-product-gallery__image vntp_image"><a class="fancybox" data-fancybox="vntsp_gallery" href="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" data-caption="gst-s110-1adr_master" tabindex="-1"><img width="600" height="600" src="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" class="wp-post-image img-attr " alt="" loading="lazy" title="gst-s110-1adr_master" data-lazy="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" data-large_image="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" srcset="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 600w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 768w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 300w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 100w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 64w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 800w" sizes="(max-width: 600px) 100vw, 600px" data-xooWscFly="fly" /></a></div>
                                <div
                                    class="vntp_image"><a class="fancybox" data-fancybox="vntsp_gallery" href="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr.jpg" data-caption="Dong-Ho-G-Shock-GST-S110-1ADR.jpg" tabindex="-1"><img width="600" height="600" src="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-600x600.jpg" class="img-attr " alt="" loading="lazy" title="Dong-Ho-G-Shock-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-600x600.jpg" data-large_image="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-999x999.jpg" srcset="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-999x999.jpg 999w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr.jpg 1080w" sizes="(max-width: 600px) 100vw, 600px" data-xooWscFly="fly" /></a></div>
                            <div
                                class="vntp_image"><a class="fancybox" data-fancybox="vntsp_gallery" href="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr.jpg" data-caption="Dong-Ho-GST-S110-1ADR.jpg" tabindex="-1"><img width="600" height="600" src="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-600x600.jpg" class="img-attr " alt="" loading="lazy" title="Dong-Ho-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-600x600.jpg" data-large_image="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-999x999.jpg" srcset="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-999x999.jpg 999w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr.jpg 1080w" sizes="(max-width: 600px) 100vw, 600px" data-xooWscFly="fly" /></a></div>
                        <div
                            class="vntp_image"><a class="fancybox" data-fancybox="vntsp_gallery" href="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr.jpg" data-caption="G-Shock-GST-S110-1ADR.jpg" tabindex="-1"><img width="600" height="600" src="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-600x600.jpg" class="img-attr " alt="" loading="lazy" title="G-Shock-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-600x600.jpg" data-large_image="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr.jpg" srcset="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr.jpg 960w" sizes="(max-width: 600px) 100vw, 600px" data-xooWscFly="fly" /></a></div>
                </div>
                <div class="vntwp_gallery vntsp_gallery_thumb">
                    <div class="woocommerce-product-gallery__image vntp_image"><img width="100" height="100" src="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" class="wp-post-image img-attr " alt="" loading="lazy" title="gst-s110-1adr_master" data-lazy="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>"
                            data-large_image="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" srcset="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 100w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 768w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 300w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 600w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 64w, <%=request.getContextPath() %>/files/<%=itemClock.getPicture() %> 800w"
                            sizes="(max-width: 100px) 100vw, 100px" data-xooWscFly="fly" /></div>
                    <div class="vntp_image"><img width="100" height="100" src="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-100x100.jpg" class="img-attr " alt="" loading="lazy" title="Dong-Ho-G-Shock-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-100x100.jpg"
                            data-large_image="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-999x999.jpg" srcset="https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-999x999.jpg 999w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/dong-ho-g-shock-gst-s110-1adr.jpg 1080w"
                            sizes="(max-width: 100px) 100vw, 100px" data-xooWscFly="fly" /></div>
                    <div class="vntp_image"><img width="100" height="100" src="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-100x100.jpg" class="img-attr " alt="" loading="lazy" title="Dong-Ho-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-100x100.jpg"
                            data-large_image="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-999x999.jpg" srcset="https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-999x999.jpg 999w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/dong-ho-gst-s110-1adr.jpg 1080w"
                            sizes="(max-width: 100px) 100vw, 100px" data-xooWscFly="fly" /></div>
                    <div class="vntp_image"><img width="100" height="100" src="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-100x100.jpg" class="img-attr " alt="" loading="lazy" title="G-Shock-GST-S110-1ADR.jpg" data-lazy="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-100x100.jpg"
                            data-large_image="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr.jpg" srcset="https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-100x100.jpg 100w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-768x768.jpg 768w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-300x300.jpg 300w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-600x600.jpg 600w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr-64x64.jpg 64w, https://gshockvn.net/wp-content/uploads/g-shock-gst-s110-1adr.jpg 960w"
                            sizes="(max-width: 100px) 100vw, 100px" data-xooWscFly="fly" /></div>
                </div>
            </div>
    </div>
    </div>


    <div class="kc-elm kc-css-630873 kc_col-sm-6 kc_column kc_col-sm-6">
        <div class="kc-elm kc-css-254845 vnt_editor">
            <span><span><a href="https://gshockvn.net/">Trang chủ</a> &raquo; <span><a href="<%=request.getContextPath()%>/cats?id=<%=itemClock.getCategories().getId()%>"><%=itemClock.getCategories().getName() %></a> &raquo; <span class="breadcrumb_last" aria-current="page"><%=itemClock.getName() %></span></span>
            </span>
            </span>
        </div>

        <div class="kc-elm kc-css-599149 vnt_title">

            <h1 class="type"><%=itemClock.getName() %></h1>


        </div>
        <div class="kc-elm kc-css-410538 vnt_editor">
            <p class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemClock.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=itemClock.getPrice() - ((itemClock.getPrice()*itemClock.getDiscount())/100)%> <span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins></p>
            <div class="woocommerce-product-details__short-description">
                <div class="woocommerce-product-details__short-description">
                    <div class="grid-1 grid--1 narrow-wrap">
                        <div class="narrow-layout">
                            <div class="narrow-contents">
                                <div class="header-grid grid-1 grid-n--1 bg-ultra-light-grey bg--white frame">
                                    <div class="column bg-white">
                                        <h2><b>Bộ sản phẩm gồm:</b></h2>
                                        	<ul>
                                        		<%
                                        			String mota = itemClock.getPreview();
                                        			String[] motas = mota.split("\\.");
                                        			for(int j = 0; j < motas.length-1 ; j++){
                                        				%>
                                        				<li><%=motas[j] %></li>
                                        				<%
                                        			}
                                        		%>
                                        	</ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="kc-elm kc-css-66721 vnt_list">

            <div class="item item_1">
                <div class="thumb"><img src="https://gshockvn.net/wp-content/uploads/giao-hang.png" alt="Giao hàng toàn quốc"></div>
                <div class="title">Giao hàng toàn quốc</div>
            </div>

            <div class="item item_2">
                <div class="thumb"><img src="https://gshockvn.net/wp-content/uploads/thanh-toan.png" alt="Thanh toán khi nhận hàng"></div>
                <div class="title">Thanh toán khi nhận hàng</div>
            </div>

            <div class="item item_3">
                <div class="thumb"><img src="https://gshockvn.net/wp-content/uploads/doi-tra-hang.png" alt="Cam kết đổi/trả hàng miễn phí"></div>
                <div class="title">Cam kết đổi/trả hàng miễn phí</div>
            </div>

            <div class="item item_4">
                <div class="thumb"><img src="https://gshockvn.net/wp-content/uploads/bao-hanh.png" alt="Hàng chính hãng/Bảo hành 10 năm"></div>
                <div class="title">Hàng chính hãng/Bảo hành 10 năm</div>
            </div>
        </div>
        <div class="kc-elm kc-css-282402 vnt_editor single_product_add_cart">


            <form class="cart" action="https://gshockvn.net/san-pham/gst-s110-1adr/" method="post" enctype='multipart/form-data'>

                <div class="quantity">
                    <label class="screen-reader-text" for="quantity_634a237661153">Số lượng</label>
                    <div class="dc_quantity_input">
                        <input class="minus" type="button" value="−">
                        <input type="number" id="quantity_634a237661153" class="input-text qty text" step="1" min="1" max="" name="quantity" value="1" title="SL" size="4" pattern="[0-9]*" inputmode="numeric" aria-labelledby="GST-S110-1ADR số lượng" />
                        <input class="plus" type="button" value="+">
                    </div>
                </div>

                <a href="javascript:void(0)" data-product_id="1929" class="dat_hang ajax_add_to_cart" onclick="return getTorder(<%=itemClock.getId() %>)" style="padding: 10px; border: 1px solid black; margin-left: 20px;background: yellow;">Thêm vào giỏ hàng</a>

            </form>

            <div class="bk-btn" style="margin-top: 10px">

            </div>
			<script type="text/javascript">
				function getTorder(id){
					var quantity = $("#quantity_634a237661153").val();
					$.ajax({
						url: '<%=request.getContextPath()%>/torderdetail',
						type: 'POST',
						cache: false,
						data: {
							aid:id,
							aquantity:quantity
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
        </div>
    </div>


    </div>
    </section>


    <section id="single_content" class="kc-elm kc-css-541547 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
            <div class="kc-elm kc-css-610913 vntabs">
                <ul class="vntabs_nav ">
                    <li class="vntabs_item vntabs_nav_item">
                        <div class="title">Thông tin sản phẩm</div>
                    </li>
                    <li class="vntabs_item vntabs_nav_item">
                        <div class="title">Chính sách vận chuyển</div>
                    </li>
                    <li class="vntabs_item vntabs_nav_item">
                        <div class="title">Đổi trả &amp; Bảo hành</div>
                    </li>
                    <li class="vntabs_item vntabs_nav_item">
                        <div class="title">Hình thức thanh toán</div>
                    </li>
                </ul>
                <div class="kc-elm vntabs_content">
                    <div class="kc-elm kc-css-714457 vntabs_cont">
                        <div class="kc-elm kc-css-10501 woocommerce vnt_the_content">
                            <div class="accordion_content_inner">
                                <div class="grid-1 grid--1 narrow-wrap">
                                    <div class="narrow-layout">
                                        <div class="narrow-contents">
                                            <div class="header-grid grid-1 grid-n--1 bg-ultra-light-grey bg--white frame">
                                                <div class="column bg-white">
                                                    <%
                                                    	String chitiet = itemClock.getDetail();
                                                    	String[] chitiets = chitiet.split("\\.");
                                                    	for(String ct : chitiets){
                                                    		%>
                                                    		<p><%=ct %></p>
                                                    		<%
                                                    	}
                                                    %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="kc-elm kc-css-263157 vntabs_cont">
                        <style type="text/css"></style>
                        <div class="kc-elm kc-css-586820 vnt_editor">


                            Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum
                            porta. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.

                        </div>



                    </div>
                    <div class="kc-elm kc-css-758010 vntabs_cont">
                        <style type="text/css"></style>
                        <div class="kc-elm kc-css-937626 vnt_editor">
                            <p>Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies
                                ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet
                                dui.</p>
                        </div>



                    </div>
                    <div class="kc-elm kc-css-157699 vntabs_cont">
                        <style type="text/css"></style>
                        <div class="kc-elm kc-css-582641 vnt_editor">
                            <p>Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Cras ultricies
                                ligula sed magna dictum porta. Nulla porttitor accumsan tincidunt. Curabitur aliquet quam id dui posuere blandit. Donec rutrum congue leo eget malesuada. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet
                                dui.</p>
                        </div>



                    </div>
                </div>
            </div>


        </div>
    </section>


    <section id="psingle_danhgia" class="kc-elm kc-css-357613 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">

            <div class="kc-elm kc-css-661155 vnt_title">

                <h2 class="type">REVIEWS CỦA KHÁCH HÀNG</h2>
                <span class="sub"></span>


            </div>
            <div class="kc-elm kc-css-887434 vnt_editor">
                <div id="reviews" class="woocommerce-Reviews">
                    <div id="comments">
                        <h2 class="woocommerce-Reviews-title">
                            Đánh giá </h2>

                    </div>

                    <div id="review_form_wrapper">
                        <div id="review_form">
                            <div id="respond" class="comment-respond">
                                    <form action="form-cmt">
                                    	<div class="form-item">
	                                    	<label for="rating">Đánh giá của bạn&nbsp;<span class="required">*</span></label>
	                                    	<select name="rating" id="rating" required>
												<option value="">Xếp hạng&hellip;</option>
												<option value="5">Rất tốt</option>
												<option value="4">Tốt</option>
												<option value="3">Trung bình</option>
												<option value="2">Không tệ</option>
												<option value="1">Rất tệ</option>
											</select>
										</div>
										<div class="form-item">
											<label for="comment">Nhận xét của bạn&nbsp;<span class="required">*</span></label>
											<textarea id="comment" name="comment" cols="45" rows="8" required></textarea>
											<label for="author">Tên&nbsp;<span class="required">*</span></label>
											<input id="author" name="author" type="text" value="" size="30" required />
											<label for="email">Email&nbsp;<span class="required">*</span></label>
											<input id="email" name="email" type="email" value="" size="30" required />
										</div>
										<div class="form-item" style="margin: 20px 0px !important;">
											<a href="javascript:void(0)" title="" class="btn" onclick="return getComment(<%=itemClock.getId() %>)" style=" border: 1px solid black; padding: 10px; background:#D3D3D3;">Bình luận</a>
										</div>
									</form>
                            </div>
                            <!-- #respond -->
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
                <div class="danhgia">
                	<%
                		ArrayList<Comment> listCmt = (ArrayList<Comment>) request.getAttribute("listCmt");
                		if(listCmt != null && listCmt.size() > 0){
                			for(Comment itemCMT: listCmt){
                	%>
                		<h4 style="margin-bottom: 10px "><i class="la la-github-alt"></i> <%=itemCMT.getName() %></h4>
                		<p style="margin: 0px 0px 5px 37px">
                			<% 
                				for(int i = 1; i <= itemCMT.getStar(); i ++){
                					%>
                					<i class="la la-star"></i>
                					<%
                				}
                			
                			%>
                		</p>
                		<p style="margin-left: 37px"><%=itemCMT.getContent() %></p>
                		<p>--------------------------------------------------------------------</p>
                	<% } }else{ %>
                		<span id="reply-title" class="comment-reply-title">Hãy là người đầu tiên nhận xét &ldquo;<%=itemClock.getName() %>&rdquo; <small><a rel="nofollow" id="cancel-comment-reply-link" href="/san-pham/gst-s110-1adr/#respond" style="display:none;">Hủy</a></small></span>
            		<% } %>
            	</div>
            </div>

			<script type="text/javascript">
				function getComment(id){
					var rating = $("#rating").val();
					var comment = $("#comment").val();
					var author = $("#author").val();
					var email = $("#email").val();
					$.ajax({
						url: '<%=request.getContextPath()%>/details',
						type: 'POST',
						cache: false,
						data: {
							aid:id,
							arating:rating,
							acomment:comment,
							aauthor:author,
							aemail:email
						},
						success: function(data){
							$(".danhgia").html(data);
						},
						error: function (){
							alert('Có lỗi xảy ra');
						}
					});
					return false;
				}
			</script>
        </div>
    </section>


    <section id="sanpham_lienquan" class="kc-elm kc-css-638453 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">

            <div class="kc-elm kc-css-206016 vnt_title">

                <h3 class="type">Sản phẩm liên quan</h3>
                <span class="sub"></span>

            </div>
            <div class="kc-elm kc-css-17996 products vnt_slick vnt_archive vnt_product product_slider flex_true" data-slick='{"centerMode": false, "variableWidth": false, "slidesToShow": 4, "slidesToScroll": 2, "dots": true, "arrows": false, "autoplay": false,   "infinite": true,  "rows": 0, "responsive":[{"breakpoint": 1024, "settings":{"slidesToShow": 3, "slidesToScroll": 1}}, {"breakpoint": 767, "settings":{"slidesToShow": 3, "slidesToScroll": 1, "adaptiveHeight": false, "fade": false}}, {"breakpoint": 480, "settings":{"slidesToShow": 2, "slidesToScroll": 1}}]}'>
				<%
						ArrayList<Clock> listClockP = (ArrayList<Clock>) request.getAttribute("listClockP");
						if(listClockP != null && listClockP.size() > 0){
							int a = 0;
							int b = 0;
							String odd = "";
							for(Clock itemClockP: listClockP){
								if(!(itemClockP.getId() == itemClock.getId())){
									a++;
									if(a % 2 == 0){
										odd = "even";
									}else{
										odd = "odd";
									}
									b = itemClockP.getPrice() - ((itemClockP.getPrice()*itemClockP.getDiscount())/100) ;
									if(a < 9){
					%>
                <div class="kc-elm product item item_<%=a %> <%=odd%> ">
                    <div class="kc-elm thumb"><a class="kc-elm permalink" href="<%=request.getContextPath() %>/details?id=<%=itemClockP.getId() %>" title="GA-2100HC-2A"><img src="<%=request.getContextPath() %>/files/<%=itemClockP.getPicture() %>" alt="GA-2100HC-2A"></a><a href="<%=request.getContextPath() %>/details?id=<%=itemClockP.getId() %>"
                            data-product_id="3504" data-action="quick-view" class="wc-quick-view-button no-text button btn alt shortcode"></a><a href="?add-to-cart=3504" data-product_id="3504" class="add_to_cart_button ajax_add_to_cart">Mua ngay</a>
                        <span
                            class="saleup">Giảm <span class="woocommerce-Price-amount amount"><bdi><%=itemClockP.getPrice() - b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                            </span>
                            </span>
                    </div>
                    <div class="kc-elm title" data-tooltip="GA-2100HC-2A"><a href="<%=request.getContextPath() %>/details?id=<%=itemClockP.getId() %>" title="GA-2100HC-2A"><%=itemClockP.getName() %></a></div>
                    <div class="price"><del aria-hidden="true"><span class="woocommerce-Price-amount amount"><bdi><%=itemClockP.getPrice() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></del> <ins><span class="woocommerce-Price-amount amount"><bdi><%=b %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></ins>
                        <div
                            class="vntp_sale">-<%=itemClockP.getDiscount()%>%</div>
                </div>
            </div>
			<% } }}} %>
            
        </div>


        </div>
    </section>


    <section id="after_single_product" class="kc-elm kc-css-765636 kc_row vnt_section hide_col_cont">
        <div class="kc-elm kc-css-732994 kc_col-sm-12 kc_column kc_col-sm-12">
            <div class="kc-col-container">
                <div style="display: none">
                    <p class="bk-product-price">5299000</p>
                    <p class="bk-product-name">GST-S110-1ADR</p>
                    <img width="768" height="768" src="https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-768x768.png" class="bk-product-image wp-post-image" alt="" srcset="https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-768x768.png 768w, https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-300x300.png 300w, https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-600x600.png 600w, https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-100x100.png 100w, https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master-64x64.png 64w, https://gshockvn.net/wp-content/uploads/gst-s110-1adr_master.png 800w"
                        sizes="(max-width: 768px) 100vw, 768px" data-xooWscFly="fly" />
                    <p class="bk-check-out-of-stock">Trong kho</p>
                </div>
                <script src="https://pc.baokim.vn/js/bk_plus_v2.popup.js"></script>
                <style>
                    #bk-btn-paynow,
                    #bk-btn-installment,
                    .bk-btn-paynow,
                    .bk-btn-installment {
                        outline: none;
                    }

                    #bk-modal-close,
                    #bk-modal-notify-close {
                        margin: 0;
                        padding: 0;
                        outline: none;
                    }

                    .bk-btn {
                        width: 100%;
                        margin-top: 10px;
                    }

                    .bk-btn .bk-btn-paynow {
                        width: 49%;
                        line-height: 1.5rem;
                        margin-top: 10px;
                    }

                    .bk-btn .bk-btn-installment {
                        width: 49%;
                        line-height: 1.5rem;
                        margin-right: 0px;
                        margin-top: 10px;
                    }

                    @media only screen and (max-width: 320px) {
                        .bk-btn .bk-btn-paynow {
                            width: 100%;
                        }
                        .bk-btn .bk-btn-installment {
                            width: 100%;
                            margin-right: 0px;
                            margin-top: 0px;
                        }
                    }

                    @media only screen and (max-width:439px) and (min-width:321px) {
                        .bk-btn .bk-btn-paynow {
                            width: 100%;
                        }
                        .bk-btn .bk-btn-installment {
                            width: 100%;
                            margin-right: 0px;
                            margin-top: 0px;
                        }
                    }

                    @media only screen and (min-width: 414px) and (max-width: 667px) {
                        .bk-btn .bk-btn-paynow {
                            width: 100%;
                        }
                        .bk-btn .bk-btn-installment {
                            width: 100%;
                            margin-right: 0px;
                            margin-top: 0px;
                        }
                    }

                    @media only screen and (max-width:767px) and (min-width:576px) {
                        .bk-btn .bk-btn-paynow {
                            width: 100%;
                        }
                        .bk-btn .bk-btn-installment {
                            width: 100%;
                            margin-right: 0px;
                            margin-top: 0px;
                        }
                    }

                    @media only screen and (max-width:1023px) and (min-width:768px) {
                        .bk-btn .bk-btn-paynow {
                            width: 100%;
                        }
                        .bk-btn .bk-btn-installment {
                            width: 100%;
                            margin-right: 0px;
                            margin-top: 0px;
                        }
                    }
                </style>
                <script type="text/javascript">
                    var productQuantityClass = document.getElementsByClassName("product-quantity");
                    for (var i = 0; i < productQuantityClass.length; i++) {
                        if (productQuantityClass[i].querySelector('.input-text')) {
                            productQuantityClass[i].querySelector('.input-text').classList.add("bk-product-qty");
                        }
                    }
                </script>
            </div>
        </div>


    </section>


    <div id="psingle_tragop" class="kc-elm kc-css-478378 kc_row kc_row_inner vnt_modal">
        <div class="kc-elm kc-css-65068 kc_col-sm-12 kc_column_inner kc_col-sm-12">

            <div class="kc-elm kc-css-317584 vnt_title">

                <i class="icon fa-times-octagon"></i>
                <button type="button" class="link" data-toggle="modal" data-target="#psingle_tragop"></button>

            </div>

            <div class="kc-elm kc-css-262370 vnt_title">

                <h3 class="type">TRẢ GÓP 0%</h3><span class="sub">Bằng CMND &amp; GPLX/Hộ Khẩu</span>




            </div>

            <div class="kc-elm kc-css-467875 vnt_title">

                <span class="sub">Chỉ áp dụng cho đơn hàng từ 3.000.000đ trở lên</span>
                <h4 class="type">GST-S110-1ADR</h4>

            </div>
            <div class="kc-elm kc-css-84231 vnt_editor">
                <div role="form" class="wpcf7" id="wpcf7-f2709-o1" lang="vi" dir="ltr">
                    <div class="screen-reader-response">
                        <p role="status" aria-live="polite" aria-atomic="true"></p>
                        <ul></ul>
                    </div>
                    <form action="/san-pham/gst-s110-1adr/#wpcf7-f2709-o1" method="post" class="wpcf7-form init single_tragop" novalidate="novalidate" data-status="init">
                        <div style="display: none;">
                            <input type="hidden" name="_wpcf7" value="2709" />
                            <input type="hidden" name="_wpcf7_version" value="5.6.3" />
                            <input type="hidden" name="_wpcf7_locale" value="vi" />
                            <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f2709-o1" />
                            <input type="hidden" name="_wpcf7_container_post" value="0" />
                            <input type="hidden" name="_wpcf7_posted_data_hash" value="" />
                        </div>
                        <span class="wpcf7-form-control-wrap" data-name="ho-ten"><input type="text" name="ho-ten" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Họ &amp; Tên" /></span>
                        <span class="wpcf7-form-control-wrap" data-name="dia-chi"><input type="text" name="dia-chi" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Địa chỉ" /></span>
                        <span class="wpcf7-form-control-wrap" data-name="dien-thoai"><input type="number" name="dien-thoai" value="" class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number wpcf7-text" min="0210000000" max="0999999999" aria-required="true" aria-invalid="false" placeholder="Số điện thoại" /></span>
                        <span class="wpcf7-form-control-wrap" data-name="so-cmnd"><input type="number" name="so-cmnd" value="" class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number wpcf7-text" min="00000000001" max="99999999999" aria-required="true" aria-invalid="false" placeholder="Căn cước công dân" /></span>
                        <input type="submit" value="Gửi yêu cầu" class="wpcf7-form-control has-spinner wpcf7-submit" />
                        <div class="wpcf7-response-output" aria-hidden="true"></div>
                    </form>
                </div>
            </div>
        </div>
    </div>




    </div>
		
			
 <%@include file="/templates/public/inc/footer.jsp" %>