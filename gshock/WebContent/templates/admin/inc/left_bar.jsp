<%@page import="model.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="user">
						<%
							User userLogin2 = (User) session.getAttribute("userLogin");
							if(userLogin2 != null){
						%>
						<div class="photo">
							<img src="<%=request.getContextPath() %>/templates/admin/assets/img/profile.jpg">
						</div>
						<div class="info">
							<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									<%=userLogin2.getUsername() %>
									<span class="user-level"><%=userLogin2.getRoles() %></span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample" aria-expanded="true" >
								<ul class="nav">
									<li>
										<a href="#profile">
											<span class="link-collapse">My Profile</span>
										</a>
									</li>
									<li>
										<a href="#edit">
											<span class="link-collapse">Edit Profile</span>
										</a>
									</li>
									<li>
										<a href="#settings">
											<span class="link-collapse">Settings</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<% } %>
					</div>
					<ul class="nav">
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin">
								<i class="la la-dashboard"></i>
								<p>Trang Chủ</p>
								<span class="badge badge-count">5</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="" data-toggle="collapse" href="#category" aria-expanded="true">
								<i class="la la-linux"></i>
								<span>
									<span class="user-level">Sản Phẩm</span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="category" aria-expanded="true" >
								<ul class="nav">
									<li>
										<a href="<%=request.getContextPath()%>/admin/cats">
											<i class="la la-book"></i>
											<span class="link-collapse">Danh Mục</span>
											<span class="badge badge-count">5</span>
										</a>
									</li>
									<li>
										<a href="<%=request.getContextPath()%>/admin/clocks">
											<i class="la la-clipboard"></i>
											<span class="link-collapse">Chi Tiết Sản Phẩm</span>
											<span class="badge badge-count">15</span>
										</a>
									</li>
									<li>
										<a href="<%=request.getContextPath()%>/admin/comments">
											<i class="la la-comment"></i>
											<span class="link-collapse">Bình Luận</span>
											<span class="badge badge-count">8</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin/newss">
								<i class="la la-desktop"></i>
								<p>Tin Tức</p>
								<span class="badge badge-count">23</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin/contacts">
								<i class="la la-envelope-o"></i>
								<p>Liên Hệ</p>
								<span class="badge badge-count">11</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin/users">
								<i class="la la-meh-o"></i>
								<p>Người Dùng</p>
								<span class="badge badge-count">4</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin/deliverys">
								<i class="la la-motorcycle"></i>
								<p>Giao Hàng</p>
								<span class="badge badge-count">5</span>
							</a>
						</li>
						<li class="nav-item">
							<a href="<%=request.getContextPath()%>/admin/discs">
								<i class="la la-credit-card"></i>
								<p>Mã Giảm Giá</p>
								<span class="badge badge-count">16</span>
							</a>
						</li>
					</ul>