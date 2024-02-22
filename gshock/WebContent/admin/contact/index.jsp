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
						<h4 class="page-title">Chi Tiết Liên Hệ</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa liên hệ thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa liên hệ thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Full name</th>
													<th scope="col">Số điện thoại</th>
													<th scope="col">Email</th>
													<th scope="col">Nội dung</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<Contact> listCt = (ArrayList<Contact>) request.getAttribute("listCt");
												if(listCt != null && listCt.size() > 0){
													for(Contact itemCt : listCt){
											%>
												<tr>
													<td><%=itemCt.getId() %></td>
													<td><%=itemCt.getFullname() %></td>
													<td><%=itemCt.getPhone() %></td>
													<td><%=itemCt.getEmail() %></td>
													<td><%=itemCt.getContent() %></td>
													<td>
                                        				<a href="<%=request.getContextPath() %>/admin/contact/del?id=<%=itemCt.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có liên hệ!</td>
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