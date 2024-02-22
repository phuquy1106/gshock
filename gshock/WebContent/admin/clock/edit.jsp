<%@page import="model.bean.Clock"%>
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
						<h4 class="page-title">Sản Phẩm</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">Sửa Sản Phẩm</div>
									</div>
									<%
										String name = request.getParameter("name");
										String preview = request.getParameter("preview");
										String detail = request.getParameter("detail");
										String price = request.getParameter("price");
										String number = request.getParameter("number");
										String discount = request.getParameter("discount");
										String idcat = request.getParameter("cat");
										Clock itemClock = (Clock) request.getAttribute("itemClock");
										if(itemClock != null){
											name = itemClock.getName();
											preview = itemClock.getPreview();
											detail = itemClock.getDetail();
											price = String.valueOf(itemClock.getPrice());
											number = String.valueOf(itemClock.getNumber());
											discount = String.valueOf(itemClock.getDiscount());
											idcat = String.valueOf(itemClock.getCategories().getId());
										}
										String err = request.getParameter("err");
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Có lỗi xảy ra!</span>");
							        	}
									%>
									<div class="card-body">
										<form action="" role="form" method="post" enctype="multipart/form-data" id="form">
											<div class="form-group">
												<label for="name">Tên Sản Phẩm</label>
												<input name="name" type="text" class="form-control" id="name" placeholder="Nhập tên sản phẩm" value="<%if(name != null){out.print(name);}%>">
											</div>
											<div class="form-group">
												<label for="cat">Cửa Hàng</label>
												<select name="cat" class="form-control" id="cat">
												<%
													ArrayList<Categories> listCat = (ArrayList<Categories>) request.getAttribute("listCat");
														if(listCat != null && listCat.size() > 0 ){
															for(Categories itemCat: listCat){
												%>
													<option <%if(idcat != null && idcat.equals(String.valueOf(itemCat.getId()))){out.print("selected");} %> value="<%=itemCat.getId()%>"><%=itemCat.getName() %></option>
												<% } } %>
												</select>
											</div>
											<div class="form-group">
												<label for="preview">Mô tả</label>
												<textarea name="preview" class="form-control" id="preview" rows="3">
													<%if(preview != null){out.print(preview);}%>
												</textarea>
											</div>
											<div class="form-group">
												<label for="detail">Chi Tiết</label>
												<textarea name="detail" class="form-control" id="detail" rows="7">
													<%if(detail != null){out.print(detail);}%>
												</textarea>
											</div>
											<div class="form-group">
												<label for="picture">Hình Ảnh</label>
												<input name="picture" type="file" class="form-control-file" id="picture">
											</div>
											<div class="form-group">
												<label for="pictures">Hình Ảnh Mô Tả</label>
												<input name="pictures[]" type="file" class="form-control-file" id="pictures" multiple="multiple">
											</div>
											<div class="form-group">
												<label for="price">Giá</label>
												<input name="price" type="number" class="form-control" id="price" placeholder="Nhập Giá" value="<%if(price != null){out.print(Integer.parseInt(price));}%>">
											</div>
											<div class="form-group">
												<label for="number">Số Lượng</label>
												<input name="number" type="number" class="form-control" id="number" placeholder="Nhập Số Lượng Sản Phẩm" value="<%if(number != null){out.print(Integer.parseInt(number));}%>">
											</div>
											<div class="form-group">
												<label for="discount">Giảm Giá %</label>
												<select name="discount" class="form-control" id="discount">
													<option <%if(discount != null && discount.equals(String.valueOf(0))){out.print("selected");} %> value="0">0</option>
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