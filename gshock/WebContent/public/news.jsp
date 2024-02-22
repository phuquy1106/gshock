<%@page import="model.bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/public/inc/header.jsp" %>


    
    <div class="kc-elm kc-css-679416 vnt_image ">
        <div class="thumb">
            <img src="https://gshockvn.net/wp-content/uploads/img_banner_brea_blog.jpg" alt="">
        </div>
    </div>



    <section id="main_archive" class="kc-elm kc-css-281955 kc_row vnt_section hide_col">
        <div class="kc-row-container kc-container vnt_col">
            <div class="kc-elm kc-css-931145 vnt_editor">
                <span><span><a href="https://gshockvn.net/">Trang chủ</a> &raquo; <span class="breadcrumb_last" aria-current="page">Tin tức</span></span>
                </span>
            </div>

            <div class="kc-elm kc-css-481086 vnt_title">

                <h1 class="type">Tin tức</h1>


            </div>
            <div class="kc-elm kc-css-936714 vnt_archive post">
				<%
					ArrayList<News> listNews = (ArrayList<News>) request.getAttribute("listNews");
					if(listNews != null && listNews.size() > 0){
						int a = 0;
						String odd = "";
						for(News itemNews: listNews){
							a++;
							if(a % 2 == 0){
								odd = "even";
							}else{
								odd = "odd";
							}
				%>
                <div class="kc-elm item item_<%=a %> <%=odd%>">
                    <a class="kc-elm thumb" href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả"><img src="<%=request.getContextPath() %>/files/<%=itemNews.getPicture() %>" alt="Cách phối dây da đơn giản mà cực kỳ hiệu quả"></a>
                    <div class="col">
                        <div class="kc-elm title"><a href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả"><%=itemNews.getName() %></a></div>
                        <div class="cat"><a class="cat_item" href="https://gshockvn.net/category/tin-tuc/" alt="Tin tức">Tin tức</a> </div><span class="date"><%=itemNews.getDate() %></span>
                        <div class="kc-elm desc"><%
															if(itemNews.getContent().length() > 200){
																out.print(itemNews.getContent().substring(0, 200) + "...");
															}else{
																out.print(itemNews.getContent());
															}
														%></div>
                        <div class="kc-elm more"><a href="https://gshockvn.net/cach-phoi-day-da-don-gian-ma-cuc-ky-hieu-qua/" title="Cách phối dây da đơn giản mà cực kỳ hiệu quả">Xem thêm</a> <i class="fa-long-arrow-right"></i></div>
                    </div>
                </div>
				<% } } %>
                


        </div>
    </section>



  <%@include file="/templates/public/inc/footer.jsp" %>