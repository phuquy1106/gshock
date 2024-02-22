<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/admin/inc/header.jsp" %>
			<div class="sidebar">
				<div class="scrollbar-inner sidebar-wrapper">
					<%@include file="/templates/admin/inc/left_bar.jsp" %>
				</div>
			</div>
			<div class="main-panel">
				<div class="content">
							<div class="kc-elm kc-css-411740 vnt_the_content">
		                		<div class="woocommerce" style="margin-left: 33%; margin-bottom: 250px">
				                    <div class="woocommerce-notices-wrapper"></div>
				
				                    <h2>Đăng nhập</h2>
				
				                    <form class="woocommerce-form woocommerce-form-login login" method="post" action="" style="border: 1px solid black; padding: 20px; width: 282px">
				
				
				                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
				                            <label for="username">Tên tài khoản hoặc địa chỉ email&nbsp;<span class="required">*</span></label>
				                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="username" autocomplete="username" value="" /> </p>
				                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
				                            <label for="password">Mật khẩu&nbsp;<span class="required">*</span></label>
				                            <input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password" id="password" autocomplete="current-password" />
				                        </p>
				
				
				                        <p class="form-row">
				                            
				                            <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="9f88b52c03" /><input type="hidden" name="_wp_http_referer" value="/tai-khoan/" /> <button type="submit" class="woocommerce-button button woocommerce-form-login__submit"
				                                name="login" value="Đăng nhập">Đăng nhập</button>
				                        </p>
				
				
				                    </form>
		
		
		                </div>
		            </div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>