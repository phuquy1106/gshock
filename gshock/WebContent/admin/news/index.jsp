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
						<h4 class="page-title">Chi Tiết Tin Tức</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<a href="<%=request.getContextPath() %>/admin/news/add" class="btn btn-success btn-md them">Thêm</a>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm chi tiết thành công!</span>");
							        	}
							        	if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa chi tiết thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa chi tiết thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa chi tiết thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên</th>
													<th scope="col">Mô tả</th>
													<th scope="col">Chi tiết</th>
													<th scope="col">Hình ảnh</th>
													<th scope="col">Ngày đăng</th>
													<th scope="col">Chức năng</th>
												</tr>
											</thead>
											<tbody>
											<%
												ArrayList<News> listN = (ArrayList<News>) request.getAttribute("listN");
												if(listN != null && listN.size() > 0){
													for(News itemN : listN){
											%>
												<tr>
													<td><%=itemN.getId() %></td>
													<td><%=itemN.getName() %></td>
													<td>
														<%
															if(itemN.getPreview().length() > 50){
																out.print(itemN.getPreview().substring(0, 50) + "...");
															}else{
																out.print(itemN.getPreview());
															}
														%>
													</td>
													<td>
														<%
															if(itemN.getContent().length() > 50){
																out.print(itemN.getContent().substring(0, 50) + "...");
															}else{
																out.print(itemN.getContent());
															}
														%>
													</td>
													<td>
														<img src="<%=request.getContextPath() %>/files/<%=itemN.getPicture() %>" alt="" style="width: 100px; height: 100px;">
													</td>
													<td><%=itemN.getDate() %></td>
													<td>
														<a href="<%=request.getContextPath() %>/admin/news/edit?id=<%=itemN.getId() %>" title="" class="btn btn-primary sua"> Sửa</a>
                                        				<a href="<%=request.getContextPath() %>/admin/news/del?id=<%=itemN.getId() %>" title="" class="btn btn-danger xoa" onclick="return confirm('Bạn có chắc muốn xóa?')"> Xóa</a>
													</td>
												</tr>
											<% } }else{ %>
												<tr>
													<td align="center" colspan="10">Chưa có tin tức!</td>
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