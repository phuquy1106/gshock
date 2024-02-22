<%@page import="model.bean.Province"%>
<%@page import="model.bean.Torder_detail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>


    
    <section id="main_page" class="kc-elm kc-css-161135 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
            <div class="kc-elm kc-css-785453 vnt_editor">
                <span><span><a href="https://gshockvn.net/">Trang chủ</a> &raquo; <span class="breadcrumb_last" aria-current="page">Thanh toán</span></span>
                </span>
            </div>

            <div class="kc-elm kc-css-700239 vnt_title">

                <h1 class="type">Thanh toán</h1>


            </div>
            <%
            	ArrayList<Torder_detail> listTorder = (ArrayList<Torder_detail>) session.getAttribute("torderd");
	           	if(listTorder != null && listTorder.size() > 0){
	        %>
            <div class="kc-elm kc-css-411740 vnt_the_content">
                <div class="woocommerce">
                    <div class="woocommerce-notices-wrapper"></div>
                    <div class="woocommerce-form-coupon-toggle">

                        <div class="woocommerce-info">
                            Bạn có mã ưu đãi? <a href="#" class="showcoupon">Ấn vào đây để nhập mã</a> </div>
                    </div>

                    <form class="checkout_coupon woocommerce-form-coupon" method="post" style="display:none">

                        <p>Nếu bạn có mã giảm giá, vui lòng điền vào phía bên dưới.</p>

                        <p class="form-row form-row-first">
                            <label for="coupon_code" class="screen-reader-text">Ưu đãi:</label>
                            <input type="text" name="coupon_code" class="input-text" placeholder="Mã ưu đãi" id="coupon_code" value="" />
                        </p>

                        <p class="form-row form-row-last">
                            <button type="submit" class="button" name="apply_coupon" value="Áp dụng">Áp dụng</button>
                        </p>

                        <div class="clear"></div>
                    </form>
                    <div class="woocommerce-notices-wrapper"></div>
                    <form name="checkout" method="post" class="checkout woocommerce-checkout" action="">



                        <div class="col2-set" id="customer_details">
                            <div class="col-1">
                                <div class="woocommerce-billing-fields">

                                    <h3>Thông tin thanh toán</h3>



                                    <div class="woocommerce-billing-fields__field-wrapper">
                                        <p class="form-row form-row-first validate-required" id="billing_first_name_field" data-priority="10"><label for="billing_first_name" class="">Tên&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="billing_first_name" id="billing_first_name" placeholder=""  value="" autocomplete="given-name" /></span></p>
                                        <p
                                            class="form-row form-row-last validate-required" id="billing_last_name_field" data-priority="20"><label for="billing_last_name" class="">Họ&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="billing_last_name" id="billing_last_name" placeholder=""  value="" autocomplete="family-name" /></span></p>
                                            <p
                                                class="form-row form-row-first validate-required validate-phone" id="billing_phone_field" data-priority="20"><label for="billing_phone" class="">Số điện thoại&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="tel" class="input-text " name="billing_phone" id="billing_phone" placeholder="Số điện thoại của bạn"  value="" autocomplete="tel" /></span></p>
                                                <p
                                                    class="form-row form-row-last validate-required validate-email" id="billing_email_field" data-priority="21"><label for="billing_email" class="">Địa chỉ email&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="email" class="input-text " name="billing_email" id="billing_email" placeholder="Email của bạn"  value="" autocomplete="email username" /></span></p>
                                                    <p
                                                        class="form-row form-row-first address-field update_totals_on_change validate-required" id="billing_state_field" data-priority="30"><label for="billing_state" class="">Tỉnh/Thành phố&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><select name="billing_state" id="billing_state" class="select " data-allow_clear="true" data-placeholder="Chọn tỉnh/thành phố" onchange="return getHuyen()">
							
							<option value="" >Chọn tỉnh/thành phố</option>
							<%
								ArrayList<Province> listTinh = (ArrayList<Province>) request.getAttribute("listTinh");
                                if(listTinh != null && listTinh.size() > 0 ){
                                	for(Province itemTinh : listTinh){
							%>
							<option value="<%=itemTinh.getName()%>"><%=itemTinh.getName()  %></option>
							<% } } %>
							
						</select></span></p>
                                                        <p class="form-row form-row-last validate-required validate-required" id="billing_city_field" data-priority="40"><label for="billing_city" class="">Quận/Huyện <abbr class="required" title="bắt buộc">*</abbr></label><select name="billing_city" id="billing_city" class="select " data-allow_clear="true" data-placeholder="Chọn quận huyện" onchange="return getXa()">
                    <option value="" selected="selected">Chọn quận huyện</option>
                    </select></p>
                                                        <p class="form-row form-row-first validate-required validate-required" id="billing_address_2_field" data-priority="50"><label for="billing_address_2" class="">Xã/Phường <abbr class="required" title="bắt buộc">*</abbr></label><select name="billing_address_2" id="billing_address_2" class="select " data-allow_clear="true"
                                                                data-placeholder="Chọn xã/phường">
                    <option value=""  selected='selected'>Chọn xã/phường</option>
                </select></p>
                                                        <p class="form-row form-row-last validate-required" id="billing_address_1_field" data-priority="60"><label for="billing_address_1" class="">Địa chỉ&nbsp;<abbr class="required" title="bắt buộc">*</abbr></label><span class="woocommerce-input-wrapper"><input type="text" class="input-text " name="billing_address_1" id="billing_address_1" placeholder="Ví dụ: Số 20, ngõ 90"  value="" autocomplete="address-line1" /></span></p>
                                    </div>
								<script type="text/javascript">
									
									function getHuyen(){
										var name = $("#billing_state").val();
										$.ajax({
											url: '<%=request.getContextPath()%>/diachihuyen',
											type: 'POST',
											cache: false,
											data: {
												aname: name
											},
											success: function(data){
												$("#billing_city").html(data);
											},
											error: function (){
												alert("Có lỗi xảy ra");
											}
										});
										return false;
									}
								</script>
								<script type="text/javascript">
									
									function getXa(){
										var name = $("#billing_city").val();
										$.ajax({
											url: '<%=request.getContextPath()%>/diachixa',
											type: 'POST',
											cache: false,
											data: {
												aname: name
											},
											success: function(data){
												$("#billing_address_2").html(data);
											},
											error: function (){
												alert("Có lỗi xảy ra");
											}
										});
										return false;
									}
								</script>
                                </div>

                            </div>

                            <div class="col-2">
                                <div class="woocommerce-shipping-fields">
                                </div>
                                <div class="woocommerce-additional-fields">



                                    <h3>Thông tin bổ sung</h3>


                                    <div class="woocommerce-additional-fields__field-wrapper">
                                        <p class="form-row notes" id="order_comments_field" data-priority=""><label for="order_comments" class="">Ghi chú đơn hàng&nbsp;<span class="optional">(tuỳ chọn)</span></label><span class="woocommerce-input-wrapper"><textarea name="order_comments" class="input-text " id="order_comments" placeholder="Ghi chú về đơn hàng, ví dụ: thời gian hay chỉ dẫn địa điểm giao hàng chi tiết hơn."  rows="2" cols="5"></textarea></span></p>
                                    </div>


                                </div>
                            </div>
                        </div>




                        <h3 id="order_review_heading">Đơn hàng của bạn</h3>


                        <div id="order_review" class="woocommerce-checkout-review-order">
                            <table class="shop_table woocommerce-checkout-review-order-table">
                                <thead>
                                    <tr>
                                        <th class="product-name">Sản phẩm</th>
                                        <th class="product-total">Tạm tính</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<% 
                                		int b = 0;
                                		int sum = 0;
                                		for(Torder_detail itemTo: listTorder){
                                			b = itemTo.getClock().getPrice() - ((itemTo.getClock().getPrice()*itemTo.getClock().getDiscount())/100) ;
                                	%>
                                    <tr class="cart_item">
                                        <td class="product-name">
                                            <%=itemTo.getClock().getName() %> <strong class="product-quantity">&times;&nbsp;<%=itemTo.getNumber() %></strong> </td>
                                        <td class="product-total">
                                            <span class="woocommerce-Price-amount amount"><bdi><%=b * itemTo.getNumber() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                            </span>
                                        </td>
                                    </tr>
                                    <% sum += b *itemTo.getNumber(); %> 
                                    <% } %>
                                </tbody>
                                <tfoot>
									
                                    <tr class="cart-subtotal">
                                        <th>Tạm tính</th>
                                        <td><span class="woocommerce-Price-amount amount"><bdi><%=sum %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                            </span>
                                        </td>
                                    </tr>


                                    <tr class="order-total">
                                        <th>Tổng</th>
                                        <td><strong><span class="woocommerce-Price-amount amount"><bdi><%=sum %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></strong> </td>
                                    </tr>


                                </tfoot>
                            </table>
                            <div id="payment" class="woocommerce-checkout-payment">
                                <ul class="wc_payment_methods payment_methods methods">
                                    <li class="wc_payment_method payment_method_bacs">
                                        <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="Chuyển khoản" checked='checked' data-order_button_text="" />

                                        <label for="payment_method_bacs">
		Chuyển khoản ngân hàng 	</label>
                                    </li>
                                    <li class="wc_payment_method payment_method_cod">
                                        <input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="Trực tiếp" data-order_button_text="" />

                                        <label for="payment_method_cod">
		Trả tiền mặt khi nhận hàng 	</label>
                                    </li>
                                </ul>
                                <div class="form-row place-order">
                                    <noscript>
			Trình duyệt của bạn không hỗ trợ JavaScript, hoặc nó bị vô hiệu hóa, hãy đảm bảo bạn nhấp vào <em>Cập nhật giỏ hàng</em> trước khi bạn thanh toán. Bạn có thể phải trả nhiều hơn số tiền đã nói ở trên, nếu bạn không làm như vậy.			<br/><button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="Cập nhật tổng">Cập nhật tổng</button>
		</noscript>

                                    <div class="woocommerce-terms-and-conditions-wrapper">
                                        <div class="woocommerce-privacy-policy-text"></div>
                                    </div>


                                    <button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="Đặt hàng" data-value="Đặt hàng">Đặt hàng</button>

                                    <input type="hidden" id="woocommerce-process-checkout-nonce" name="woocommerce-process-checkout-nonce" value="6a74c894d1" /><input type="hidden" name="_wp_http_referer" value="/thanh-toan/" /> </div>
                            </div>
                        </div>


                    </form>

                </div>
            </div>
			<% }else{ %>
			<h6>Chưa có sản phẩm trong giỏ hàng! <a href="<%=request.getContextPath() %>">Tiếp tục mua hàng</a> </h6>
			<% } %>

        </div>
    </section>
<style type="text/css">
	[type="radio"]:not(:checked), [type="radio"]:checked {
  position: inherit !important;
  left: 0 !important;
}
</style>
<%@include file="/templates/public/inc/footer.jsp" %>