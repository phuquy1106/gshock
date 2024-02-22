<%@page import="java.util.ArrayList"%>
<%@page import="model.bean.Torder_detail"%>
<%@page import="model.bean.Torders"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Xuất bảng đơn hàng</title>
</head>
<body>
	<div style="margin: 50px auto;">
		<h2>Bảng Đơn Hàng</h2>
		<table>
			<tr>
				<th >#</th>
				<th>Tên người mua</th>
				<th>Số điện thoại</th>
				<th>Email</th>
				<th>Địa chỉ</th>
				<th>Sản phẩm</th>
				<th>Thanh toán</th>
				<th>Tổng tiền</th>
				<th>Nội dung</th>
				<th>Trạng thái</th>
			</tr>
			<%
				ArrayList<Torders> listĐH = (ArrayList<Torders>) request.getAttribute("listĐH");
				if(listĐH != null && listĐH.size() > 0){
					for(Torders itemĐH: listĐH){
			%>
			<tr>
				<td><%=itemĐH.getId() %></td>
				<td><%=itemĐH.getFullname() %></td>
				<td><%=itemĐH.getPhone() %></td>
				<td><%=itemĐH.getEmail() %></td>
				<td><%=itemĐH.getAddress() %></td>
				<td>
					<ul>
						<% 
							ArrayList<Torder_detail> listCTĐH = (ArrayList<Torder_detail>) request.getAttribute("listCTĐH");
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
				<td><%=itemĐH.getPayment() %></td>
				<td><%=sum %>đ</td>
				<td><%=itemĐH.getContent() %></td>
				<td>
				<% if(itemĐH.getResult() == 1){ %>
					Đã giao hàng
				<% }else{ %>
					Chưa giao hàng
				<% } %>
				</td>
			</tr>
			<%} } %>
		</table>
	</div>
	<style type="text/css">
		table,th,td{
			border: 1px solid black;
		}
		td{
			padding: 16px;
		}
		h2{
			margin: 50px auto;
			margin-left: 44%;
		}
	</style>
</body>
</html>