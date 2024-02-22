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
						<h4 class="page-title">Tin Tức</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<div class="card-title">Thêm Tin Tức</div>
									</div>
									<%
										String name = request.getParameter("name");
										String preview = request.getParameter("preview");
										String content = request.getParameter("content");
										String err = request.getParameter("err");
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Có lỗi xảy ra!</span>");
							        	}
									%>
									<div class="card-body">
										<form action="" role="form" method="post" enctype="multipart/form-data" id="form">
											<div class="form-group">
												<label for="name">Tên Tin Tức</label>
												<input name="name" type="text" class="form-control" id="name" placeholder="Nhập tên tin tức" value="<%if(name != null){out.print(name);}%>">
											</div>
											<div class="form-group">
												<label for="preview">Mô tả</label>
												<textarea name="preview" class="form-control" id="preview" rows="3">
													<%if(preview != null){out.print(preview);}%>
												</textarea>
											</div>
											<div class="form-group">
												<label for="content">Chi Tiết</label>
												<textarea name="content" class="form-control" id="content" rows="7">
													<%if(content != null){out.print(content);}%>
												</textarea>
											</div>
											<div class="form-group">
												<label for="picture">Hình Ảnh</label>
												<input name="picture" type="file" class="form-control-file" id="picture">
											</div>
											<div class="card-action">
												<button type="submit" class="btn btn-success">Thêm</button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>