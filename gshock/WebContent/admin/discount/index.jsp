<%@page import="model.bean.Discount"%>
<%@page import="model.bean.Contact"%>
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
						<h4 class="page-title">Chi Tiết Mã Giảm Giá</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<a href="<%=request.getContextPath() %>/admin/disc/add" class="btn btn-success btn-md them">Thêm</a>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
										if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm mã giảm giá thành công!</span>");
							        	}
										if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa mã giảm giá thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa mã giảm giá thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa mã giảm giá thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên</th>
													<th scope="col">Giảm giá (%)</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<Discount> listDc = (ArrayList<Discount>) request.getAttribute("listDc");
												if(listDc != null && listDc.size() > 0){
													for(Discount itemDc : listDc){
											%>
												<tr>
													<td><%=itemDc.getId() %></td>
													<td><%=itemDc.getName() %></td>
													<td><%=itemDc.getNumber() %></td>
													<td>
														<a href="<%=request.getContextPath() %>/admin/disc/edit?id=<%=itemDc.getId() %>" title="" class="btn btn-primary sua"> Sửa</a>
                                        				<a href="<%=request.getContextPath() %>/admin/disc/del?id=<%=itemDc.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có mã giảm giá!</td>
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