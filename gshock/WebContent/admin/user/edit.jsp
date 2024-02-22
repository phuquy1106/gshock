<%@page import="model.bean.User"%>
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
						<h4 class="page-title">Người Dùng</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">Sửa Người Dùng</div>
									</div>
									<%
										String username = request.getParameter("username");
										String fullname = request.getParameter("fullname");
										String roles = request.getParameter("roles");
										User itemU = (User) request.getAttribute("itemU");
										if(itemU != null){
											username = itemU.getUsername();
											fullname = itemU.getFullname();
											roles = itemU.getRoles();
										}
										String err = request.getParameter("err");
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Có lỗi xảy ra!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">User đã tồn tại!</span>");
							        	}
									%>
									<div class="card-body">
										<form action="" role="form" method="post" id="form">
											<div class="form-group">
												<label for="username">Tên User</label>
												<input disabled="disabled" name="username" type="text" class="form-control" id="username" placeholder="Nhập tên user" value="<%if(username != null){out.print(username);}%>">
											</div>
											<div class="form-group">
												<label for="password">Mật Khẩu</label>
												<input name="password" type="password" class="form-control" id="password" placeholder="Nhập password">
											</div>
											<div class="form-group">
												<label for="fullname">Họ Tên</label>
												<input name="fullname" type="text" class="form-control" id="fullname" placeholder="Nhập họ và tên" value="<%if(fullname != null){out.print(fullname);}%>">
											</div>
											<div class="form-group">
												<label for="roles">Chức Vụ</label>
												<select name="roles" class="form-control" id="roles">
													<option <%if(roles != null && roles.equals("User")){out.print("selected");} %> value="User">User</option>
													<option <%if(roles != null && roles.equals("Mod")){out.print("selected");} %> value="Mod">Mod</option>
													<option <%if(roles != null && roles.equals("Admin")){out.print("selected");} %> value="Admin">Admin</option>
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