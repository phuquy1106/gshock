<%@page import="model.bean.Clock"%>
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
						<h4 class="page-title">Chi Tiết Sản Phẩm</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<a href="<%=request.getContextPath() %>/admin/clock/add" class="btn btn-success btn-md them">Thêm</a>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm sản phẩm thành công!</span>");
							        	}
							        	if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa sản phẩm thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa sản phẩm thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa sản phẩm thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên</th>
													<th scope="col">Cửa hàng</th>
													<th scope="col">Mô tả</th>
													<th scope="col">Chi tiết</th>
													<th scope="col">Hình ảnh</th>
													<th scope="col">Giá</th>
													<th scope="col">Số lượng</th>
													<th scope="col">Mã giảm giá</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<Clock> listClock = (ArrayList<Clock>) request.getAttribute("listClock");
												if(listClock != null && listClock.size() > 0){
													for(Clock itemClock : listClock){
											%>
												<tr>
													<td><%=itemClock.getId() %></td>
													<td><%=itemClock.getName() %></td>
													<td><%=itemClock.getCategories().getName() %></td>
													<td>
														<%
															if(itemClock.getPreview().length() > 50){
																out.print(itemClock.getPreview().substring(0, 50) + "...");
															}else{
																out.print(itemClock.getPreview());
															}
														%>
													</td>
													<td>
														<%
															if(itemClock.getDetail().length() > 50){
																out.print(itemClock.getDetail().substring(0, 50) + "...");
															}else{
																out.print(itemClock.getDetail());
															}
														%>
													</td>
													<td>
														<img src="<%=request.getContextPath() %>/files/<%=itemClock.getPicture() %>" alt="" style="width: 100px; height: 100px;">
													</td>
													<td><%=itemClock.getPrice() %></td>
													<td><%=itemClock.getNumber() %></td>
													<td><%=itemClock.getDiscount() %> %</td>
													<td>
														<a href="<%=request.getContextPath() %>/admin/clock/edit?id=<%=itemClock.getId() %>" title="" class="btn btn-primary sua"> Sửa</a>
                                        				<a href="<%=request.getContextPath() %>/admin/clock/del?id=<%=itemClock.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có sản phẩm!</td>
												</tr>
											<% } %>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>