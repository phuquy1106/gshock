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
						<h4 class="page-title">Danh Mục</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<a href="<%=request.getContextPath() %>/admin/cat/add" class="btn btn-success btn-md them">Thêm</a>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm danh mục thành công!</span>");
							        	}
							        	if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa danh mục thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa danh mục thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa danh mục thất bại!</span>");
							        	}
									%>
										<table class="table table-striped mt-4">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên danh mục</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<Categories> listCat = (ArrayList<Categories>) request.getAttribute("listCat");
												if(listCat != null && listCat.size() > 0){
													for(Categories items: listCat){
											%>
												<tr>
													<td><%=items.getId() %></td>
													<td><%=items.getName() %></td>
													<td>
														<a href="<%=request.getContextPath() %>/admin/cat/edit?id=<%=items.getId() %>" title="" class="btn btn-primary sua"> Sửa</a>
                                        				<a href="<%=request.getContextPath() %>/admin/cat/del?id=<%=items.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="3">Không có cửa hàng nào</td>
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