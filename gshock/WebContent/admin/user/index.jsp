<%@page import="model.bean.User"%>
<%@page import="model.bean.News"%>
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
						<h4 class="page-title">Chi Tiết Người Dùng</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<%
					                    	User userLog = (User) session.getAttribute("userLogin");
					                    	if("Admin".equals(userLog.getRoles())){
					                    %>
										<a href="<%=request.getContextPath() %>/admin/user/add" class="btn btn-success btn-md them">Thêm</a>
										<% } %>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm người dùng thành công!</span>");
							        	}
							        	if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa người dùng thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa người dùng thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa người dùng thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">User</th>
													<th scope="col">Họ tên</th>
													<th scope="col">Chức vụ</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<User> listU = (ArrayList<User>) request.getAttribute("listU");
												if(listU != null && listU.size() > 0){
													for(User itemU : listU){
											%>
												<tr>
													<td><%=itemU.getId() %></td>
													<td><%=itemU.getUsername() %></td>
													<td><%=itemU.getFullname() %></td>
													<td><%=itemU.getRoles() %></td>
													<td>
														<%
					                                    	if("Admin".equals(userLog.getRoles()) || itemU.getId() == userLog.getId()){
					                                    %>
														<a href="<%=request.getContextPath() %>/admin/user/edit?id=<%=itemU.getId() %>" title="" class="btn btn-primary sua"> Sửa</a>
                                        				<% } %>
                                        				<% if("Admin".equals(userLog.getRoles()) && !"Admin".equals(itemU.getRoles())){ %>
                                        				<a href="<%=request.getContextPath() %>/admin/user/del?id=<%=itemU.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
														<% } %>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có người dùng!</td>
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