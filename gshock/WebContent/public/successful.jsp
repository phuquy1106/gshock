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

                <h1 class="type">Đơn hàng đã nhận</h1>


            </div>
            <div class="kc-elm kc-css-411740 vnt_the_content">
                <div class="woocommerce">
                    <div class="woocommerce-order">

						<%
							ArrayList<Torder_detail> listTorder = (ArrayList<Torder_detail>) request.getAttribute("listTorder");
							if(listTorder != null && listTorder.size() > 0){
						%>	

                        <p class="woocommerce-notice woocommerce-notice--success woocommerce-thankyou-order-received">Cảm ơn bạn. Đơn hàng của bạn đã được nhận.</p>

                        <ul class="woocommerce-order-overview woocommerce-thankyou-order-details order_details">

                            <li class="woocommerce-order-overview__order order">
                                Mã đơn hàng: <strong><%=listTorder.get(0).getTorders().getId() %></strong>
                            </li>

							<% 
                                		int b = 0;
                                		int sum = 0;
                                		for(Torder_detail itemTo1: listTorder){
                                			b = itemTo1.getClock().getPrice() - ((itemTo1.getClock().getPrice()*itemTo1.getClock().getDiscount())/100) ;
                                			sum += b *itemTo1.getNumber();
                                		}
                                		
                            %>

                            <li class="woocommerce-order-overview__total total">
                                Tổng cộng: <strong><span class="woocommerce-Price-amount amount"><bdi><%=sum %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi></span></strong>
                            </li>

                            <li class="woocommerce-order-overview__payment-method method">
                                Phương thức thanh toán: <strong><%=listTorder.get(0).getTorders().getPayment() %></strong>
                            </li>

                        </ul>


                        <section class="woocommerce-order-details">

                            <h2 class="woocommerce-order-details__title">Chi tiết đơn hàng</h2>

                            <table class="woocommerce-table woocommerce-table--order-details shop_table order_details">

                                <thead>
                                    <tr>
                                        <th class="woocommerce-table__product-name product-name">Sản phẩm</th>
                                        <th class="woocommerce-table__product-table product-total">Tổng</th>
                                    </tr>
                                </thead>

                                <tbody>
                                	<%
                                		for(Torder_detail itemTo2: listTorder){
                                			b = itemTo2.getClock().getPrice() - ((itemTo2.getClock().getPrice()*itemTo2.getClock().getDiscount())/100) ;
                                	%>
                                    <tr class="woocommerce-table__line-item order_item">

                                        <td class="woocommerce-table__product-name product-name">
                                            <a href="https://gshockvn.net/san-pham/ga-2100-1a-ap-royal-oak-titanium-black-thunder-purple/"><%=itemTo2.getClock().getName() %></a> <strong class="product-quantity">&times;&nbsp;2</strong>                                            </td>

                                        <td class="woocommerce-table__product-total product-total">
                                            <span class="woocommerce-Price-amount amount"><bdi><%=b * itemTo2.getNumber() %><span class="woocommerce-Price-currencySymbol">&#8363;</span></bdi>
                                            </span>
                                        </td>

                                    </tr>
									<% } %>
                                </tbody>

                                <tfoot>
                                    <tr>
                                        <th scope="row">Tổng số phụ:</th>
                                        <td><span class="woocommerce-Price-amount amount"><%=sum %><span class="woocommerce-Price-currencySymbol">&#8363;</span></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Phương thức thanh toán:</th>
                                        <td><%=listTorder.get(0).getTorders().getPayment() %></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">Tổng cộng:</th>
                                        <td><span class="woocommerce-Price-amount amount"><%=sum %><span class="woocommerce-Price-currencySymbol">&#8363;</span></span>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>

                        </section>


					<% } %>
                    </div>
                </div>
            </div>


        </div>
    </section>


 <%@include file="/templates/public/inc/footer.jsp" %>