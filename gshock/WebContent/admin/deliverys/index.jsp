<%@page import="model.bean.Torder_detail"%>
<%@page import="model.bean.Torders"%>
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
						<h4 class="page-title">Chi Tiết Đơn Hàng</h4>
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<a href="<%=request.getContextPath() %>/admin/delivery/print" class="btn btn-success btn-md them">In</a>
									</div>
									<%
										String msg = request.getParameter("msg");
										String err = request.getParameter("err");
							        	if("1".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Thêm sản phẩm thành công!</span>");
							        	}
							        	if("2".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Sửa sản phẩm thành công!</span>");
							        	}
							        	if("3".equals(msg)){
							        		out.print("<span style=\"background: green ; color: yellow; font-weight: bold; padding: 5px;\">Xóa sản phẩm thành công!</span>");
							        	}
							        	if("1".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Id không tồn tại!</span>");
							        	}
							        	if("2".equals(err)){
							        		out.print("<span style=\"background: yellow ; color: red; font-weight: bold; padding: 5px;\">Xóa sản phẩm thất bại!</span>");
							        	}
									%>
										<table class="table table-striped">
											<thead>
												<tr>
													<th scope="col">#</th>
													<th scope="col">Tên</th>
													<th scope="col">Số điện thoại</th>
													<th scope="col">Sản phẩm</th>
													<th scope="col">Tổng tiền</th>
													<th scope="col">Hình thức</th>
													<th scope="col">Trạng thái</th>
												</tr>
											</thead>
											<tbody>
												<%
													ArrayList<Torders> listĐH = (ArrayList<Torders>) request.getAttribute("listĐH");
													if(listĐH != null && listĐH.size() > 0){
														for(Torders itemĐH: listĐH){
												%>
												<tr>
													<td><%=itemĐH.getId() %></td>
													<td><%=itemĐH.getFullname() %></td>
													<td><%=itemĐH.getPhone() %></td>
													<td>
														<% 
															ArrayList<Torder_detail> listCTĐH = (ArrayList<Torder_detail>) request.getAttribute("listCTĐH");
														%>
														<ul>
															<%
																int b = 0;
						                                		int sum = 0;
																for(Torder_detail itemCTĐH: listCTĐH){
																	if(itemCTĐH.getTorders().getId() == itemĐH.getId()){
																		b = itemCTĐH.getClock().getPrice() - ((itemCTĐH.getClock().getPrice()*itemCTĐH.getClock().getDiscount())/100) ;
															%>
															<li><%=itemCTĐH.getClock().getName() %> X <%=itemCTĐH.getNumber() %></li>
															<% sum += b *itemCTĐH.getNumber(); %> 
															<% } } %>
														</ul>
													</td>
													<td><%=sum %>đ</td>
													<td><%=itemĐH.getPayment() %></td>
													<td class="giaohang<%=itemĐH.getId()%>">
														<% if(itemĐH.getResult() == 0){ %>
														<a href="javascript:void(0)" title="" class="btn btn-primary sua" onclick="return getGiaoHang(<%=itemĐH.getId() %>)"> Giao Hàng</a>
														<% }else{ %>
														Đã Giao Hàng
														<% } %>
													</td>
												</tr>
												<% } }else{ %>
												<tr>
													<td align="center" colspan="6">Chưa có đơn hàng!</td>
												</tr>
												<% } %>
											</tbody>
										</table>
										<script type="text/javascript">
											function getGiaoHang(id){
												$.ajax({
													url: '<%=request.getContextPath()%>/admin/deliverys',
													type: 'POST',
													cache: false,
													data: {
														aid:id
													},
													success: function(data){
														$(".giaohang"+id).html(data);
													},
													error: function (){
														alert('Có lỗi xảy ra');
													}
												});
												return false;
											}
										</script>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
<%@include file="/templates/admin/inc/footer.jsp" %>