<%@page import="model.bean.Comment"%>
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
						<h4 class="page-title">Chi Tiết Bình Luận</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa bình luận thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa bình luận thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Sản phẩm</th>
													<th scope="col">Họ tên</th>
													<th scope="col">Email</th>
													<th scope="col">Đánh Giá(<i class="la la-star-o"></i>)</th>
													<th scope="col">Nội dung</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<Comment> listCmt = (ArrayList<Comment>) request.getAttribute("listCmt");
												if(listCmt != null && listCmt.size() > 0){
													for(Comment itemCmt : listCmt){
											%>
												<tr>
													<td><%=itemCmt.getId() %></td>
													<td><%=itemCmt.getClock().getName() %></td>
													<td><%=itemCmt.getName() %></td>
													<td><%=itemCmt.getEmail() %></td>
													<td><%=itemCmt.getStar() %></td>
													<td><%=itemCmt.getContent() %></td>
													<td>
                                        				<a href="<%=request.getContextPath() %>/admin/comment/del?id=<%=itemCmt.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có bình luận!</td>
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