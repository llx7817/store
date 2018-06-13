<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<input id="user"  userid="${user.id}" user_name="${user.name}"  hidden/>
	<div class="container" style="margin-bottom: 90px;">
		<ul id="myTab" class="nav nav-tabs">
			<li class="active">
				<a href="#home" data-toggle="tab">所有订单	</a>
			</li>
			<li ><a href="#ios" data-toggle="tab">待付款</a></li>
			<li ><a href="#jmeter" data-toggle="tab">待发货</a></li>
			<li ><a href="#ejb" data-toggle="tab">待收货</a></li>
			<li style=" float: right;"><button class="btn btn-info continue_btn" style="margin-right: 8px;">回到首页</button></li>
		</ul>

		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade in active" id="home">
				<div class="orderListTitle">
					<table class="orderListTitleTable">
						<tbody><tr>
							<td>商品</td>
							<td width="100px">单价</td>
							<td width="100px">数量</td>
							<td width="120px">实付款</td>
							<td width="100px">交易操作</td>
							</tr>
						</tbody>
					</table>
				</div>
        	<c:if test="${not empty items}">
				<c:forEach var="itemData" items="${items}" varStatus="status">	
				<div class="orderListItem">
					<div class="orderListItemTitle">
								<span class="ml10 " >${itemData.updateTime}	</span> 
								<span class="ml10">订单号:${itemData.orderNumber}	</span>
						</div>
					<table class="orderListTitleTable">
					<tbody>
						<tr class="">
							<td class="">
								<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}"  alt=""  width="80" height="80"  class="ml10">
<%-- 								<img width="80" height="80"  class="ml10" src="${contextPath}/resources/img/test/1.jpg"> --%>
							</td>
							<td class="">
								<div style="width: 400px;  text-align: left;">
								<a href="${contextPath}/introduction/item?id=${itemData.productId}" >${itemData.name}</a>
								<div class="">
								<img alt="" src="${contextPath}/resources/img/userCart/7day.png"  title="消费者保障服务,承诺7天退货">
								<img alt="" src="${contextPath}/resources/img/userCart/promise.png"  title="消费者保障服务,承诺如实描述">
								</div>
							</div>
							</td>
							<td class="" width="100px">
								<div style="text-decoration: line-through;">¥ ${itemData.originalPrice}</div>
								<div class="">¥ ${itemData.productPrice}</div>
							</td>
							<td class="" width="100px">
									<span class="thick">${itemData.number}</span>
							</td>
							<td class="" width="100px">			
									<div class="thick  totalPrice"  myProductPrice="${itemData.productPrice}" myNumber="${itemData.number}"></div>
								</td>
								<td class="" width="100px">					
										<a href="foreconfirmPay?oid=6680">
											<button class="btn btn-success">${itemData.flag}</button>
										</a>
								</td>		
						</tr>
				</tbody>
			</table>
		</div>
				</c:forEach>
      		</c:if>
      		<c:if test="${empty items}">
	        	<div class="orderListItemTitle" style="text-align:  center;">
	        		订单尚未出现~
	        	</div>
	        </c:if>
		</div>
			<div class="tab-pane fade" id="ios">
				<div class="orderListTitle">
					<table class="orderListTitleTable">
						<tbody><tr>
							<td>商品</td>
							<td width="100px">单价</td>
							<td width="100px">数量</td>
							<td width="120px">实付款</td>
							<td width="100px">交易操作</td>
							</tr>
						</tbody>
					</table>
				</div>
				<c:if test="${not empty items_unpaid}">
				<c:forEach var="itemData" items="${items_unpaid}" varStatus="status">	
				<div class="orderListItem">
					<div class="orderListItemTitle">
								<span class="ml10 " >${itemData.updateTime}	</span> 
								<span class="ml10">订单号:${itemData.orderNumber}	</span>
						</div>
					<table class="orderListTitleTable">
					<tbody>
						<tr class="">
							<td class="">
								<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}"  alt=""  width="80" height="80"  class="ml10">
<%-- 								<img width="80" height="80"  class="ml10" src="${contextPath}/resources/img/test/1.jpg"> --%>
							</td>
							<td class="">
								<div style="width: 400px;  text-align: left;">
								<a href="${contextPath}/introduction/item?id=${itemData.productId}" >${itemData.name}</a>
								<div class="">
								<img alt="" src="${contextPath}/resources/img/userCart/7day.png"  title="消费者保障服务,承诺7天退货">
								<img alt="" src="${contextPath}/resources/img/userCart/promise.png"  title="消费者保障服务,承诺如实描述">
								</div>
							</div>
							</td>
							<td class="" width="100px">
								<div style="text-decoration: line-through;">¥ ${itemData.originalPrice}</div>
								<div class="">¥${itemData.productPrice}</div>
							</td>
							<td class="" width="100px">
									<span class="thick">${itemData.number}</span>
							</td>
							<td class="" width="100px">							
									<div class="thick">¥46.90 </div>
								</td>
								<td class="" width="100px">					
										<a href="foreconfirmPay?oid=6680">
											<button class="btn btn-success">${itemData.flag}</button>
										</a>
								</td>		
						</tr>
				</tbody>
			</table>
		</div>
		</c:forEach>
				</c:if>
	        	<c:if test="${empty items_unpaid }">
		        	<div class="orderListItemTitle" style="text-align:  center;">
		        		订单尚未出现~
		        	</div>
	        	</c:if>
			</div>
			<div class="tab-pane fade" id="jmeter">
				<div class="orderListTitle">
					<table class="orderListTitleTable">
						<tbody><tr>
							<td>商品</td>
							<td width="100px">单价</td>
							<td width="100px">数量</td>
							<td width="120px">实付款</td>
							<td width="100px">交易操作</td>
							</tr>
						</tbody>
					</table>
				</div>
			<c:if test="${not empty items_undelivered}">
				<c:forEach var="itemData" items="${items_undelivered}" varStatus="status">	
				<div class="orderListItem">
					<div class="orderListItemTitle">
								<span class="ml10 " >${itemData.updateTime}	</span> 
								<span class="ml10">订单号:${itemData.orderNumber}	</span>
						</div>
					<table class="orderListTitleTable">
					<tbody>
						<tr class="">
							<td class="">
								<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}"  alt=""  width="80" height="80"  class="ml10">
<%-- 								<img width="80" height="80"  class="ml10" src="${contextPath}/resources/img/test/1.jpg"> --%>
							</td>
							<td class="">
								<div style="width: 400px;  text-align: left;">
								<a href="${contextPath}/introduction/item?id=${itemData.productId}" >${itemData.name}</a>
								<div class="">
								<img alt="" src="${contextPath}/resources/img/userCart/7day.png"  title="消费者保障服务,承诺7天退货">
								<img alt="" src="${contextPath}/resources/img/userCart/promise.png"  title="消费者保障服务,承诺如实描述">
								</div>
							</div>
							</td>
							<td class="" width="100px">
								<div style="text-decoration: line-through;">¥ ${itemData.originalPrice}</div>
								<div class="">¥${itemData.productPrice}</div>
							</td>
							<td class="" width="100px">
									<span class="thick">${itemData.number}</span>
							</td>
							<td class="" width="100px">							
									<div class="thick">¥46.90 </div>
								</td>
								<td class="" width="100px">					
										<a href="foreconfirmPay?oid=6680">
											<button class="btn btn-success">${itemData.flag}</button>
										</a>
								</td>		
						</tr>
				</tbody>
			</table>
		</div>
		</c:forEach>
			</c:if>
        	<c:if test="${empty items_undelivered }">
        		<div class="orderListItemTitle" style="text-align:  center;">
	        		订单尚未出现~
	        	</div>
        	</c:if>
			</div>
			<div class="tab-pane fade" id="ejb">
					<div class="orderListTitle">
					<table class="orderListTitleTable">
						<tbody><tr>
							<td>商品</td>
							<td width="100px">单价</td>
							<td width="100px">数量</td>
							<td width="120px">实付款</td>
							<td width="100px">交易操作</td>
							</tr>
						</tbody>
					</table>
				</div>
				<c:if test="${not empty items_unreceived }">
				<c:forEach var="itemData" items="${items_unreceived}" varStatus="status">	
				<div class="orderListItem">
					<div class="orderListItemTitle">
								<span class="ml10 " >${itemData.updateTime}	</span> 
								<span class="ml10">订单号:${itemData.orderNumber}	</span>
						</div>
					<table class="orderListTitleTable">
					<tbody>
						<tr class="">
							<td class="">
								<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}"  alt=""  width="80" height="80"  class="ml10">
<%-- 								<img width="80" height="80"  class="ml10" src="${contextPath}/resources/img/test/1.jpg"> --%>
							</td>
							<td class="">
								<div style="width: 400px;  text-align: left;">
								<a href="${contextPath}/introduction/item?id=${itemData.productId}" >${itemData.name}</a>
								<div class="">
								<img alt="" src="${contextPath}/resources/img/userCart/7day.png"  title="消费者保障服务,承诺7天退货">
								<img alt="" src="${contextPath}/resources/img/userCart/promise.png"  title="消费者保障服务,承诺如实描述">
								</div>
							</div>
							</td>
							<td class="" width="100px">
								<div style="text-decoration: line-through;">¥ ${itemData.originalPrice}</div>
								<div class="">¥${itemData.productPrice}</div>
							</td>
							<td class="" width="100px">
									<span class="thick">${itemData.number}</span>
							</td>
							<td class="" width="100px">							
									<div class="thick">¥46.90 </div>
								</td>
								<td class="" width="100px">					
										<a href="foreconfirmPay?oid=6680">
											<button class="btn btn-success">${itemData.flag}</button>
										</a>
								</td>		
						</tr>
				</tbody>
			</table>
		</div>
		</c:forEach>
	        	</c:if>
	        	<c:if test="${empty items_unreceived }">
	        		<div class="orderListItemTitle" style="text-align:  center;">
	        		订单尚未出现~
	        		</div>
	        	</c:if>
			</div>
		</div>
	</div>
<script type="text/javascript" src="${contextPath}/resources/js/main/user/userForm.js"></script>
<script type="text/javascript">
</script>

<style type="text/css">
table.orderListTitleTable {
    border: 2px solid #E8E8E8;
    width: 100%;
    margin: 20px 0px;
    background-color: #FFF;
    text-align: center;
}
table.orderListTitleTable td {
    padding: 12px 0px;
}
 .orderListItemTitle{
 	background-color: #FFF;
    border: 2px solid #E8E8E8;
    height: 43px;
    margin-bottom: -22px;
    padding-top: 11px;
}
.ml10 {
    margin-left: 10px;
}
</style>
</body>
</html>