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
										<div class="card-title">Thêm Danh Mục</div>
									</div>
									<%
										String name = request.getParameter("name");
							        	String err = request.getParameter("err");
							        
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow; color: red; font-weight: bold; padding: 5px;\">Có lỗi xảy ra!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow; color: red; font-weight: bold; padding: 5px;\">Tên danh mục đã tồn tại!</span>");
							        	}
									%>
									<form action="" method="post">
										<div class="card-body">
											<div class="form-group">
												<label for="name">Tên Cửa Hàng</label>
												<input name="name" type="text" class="form-control" id="text" placeholder="Nhập Tên Cửa Hàng" value="<%if(name != null){out.print(name);}%>">
											</div>
											<div class="card-action">
												<button type="submit" class="btn btn-success">Thêm</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>