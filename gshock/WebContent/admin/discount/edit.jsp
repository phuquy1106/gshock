<%@page import="model.bean.Discount"%>
<%@page import="model.bean.Categories"%>
<%@page import="java.util.ArrayList"%>
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
					<div class="container-fluid">
						<h4 class="page-title">Mã Giảm Giá</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">Sửa Mã Giảm Giá</div>
									</div>
									<%
										String name = request.getParameter("name");
										String discount = request.getParameter("discount");
										Discount itemDc = (Discount) request.getAttribute("itemDc");
										if(itemDc != null){
											name = itemDc.getName();
											discount = String.valueOf(itemDc.getNumber());
										}
										String err = request.getParameter("err");
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Có lỗi xảy ra!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Mã giảm giá đã tồn tại!</span>");
							        	}
									%>
									<div class="card-body">
										<form action="" role="form" method="post">
											<div class="form-group">
												<label for="name">Mã Giảm Giá</label>
												<input name="name" type="text" class="form-control" id="name" placeholder="Nhập mã giảm giá" value="<%if(name != null){out.print(name);}%>">
											</div>
											<div class="form-group">
												<label for="discount">Giảm Giá %</label>
												<select name="discount" class="form-control" id="discount">
													<option <%if(discount != null && discount.equals(String.valueOf(5))){out.print("selected");} %> value="5">5</option>
													<option <%if(discount != null && discount.equals(String.valueOf(10))){out.print("selected");} %> value="10">10</option>
													<option <%if(discount != null && discount.equals(String.valueOf(15))){out.print("selected");} %> value="15">15</option>
													<option <%if(discount != null && discount.equals(String.valueOf(20))){out.print("selected");} %> value="20">20</option>
													<option <%if(discount != null && discount.equals(String.valueOf(25))){out.print("selected");} %> value="25">25</option>
													<option <%if(discount != null && discount.equals(String.valueOf(30))){out.print("selected");} %> value="30">30</option>
												</select>
											</div>
											<div class="card-action">
												<button type="submit" class="btn btn-success">Sửa</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>