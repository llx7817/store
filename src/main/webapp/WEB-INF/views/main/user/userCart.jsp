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
		<div class=" ">
<!--             <div class="" style="width: 700px;"> -->
<!--                 <div class="flow_progress "> -->
<!--                     <ul> -->
<!--                         <li class="step1">1.查看购物车</li> -->
<!--                         <li class="step2">2.填写核对订单信息</li> -->
<!--                         <li class="step3">3.提交订单成功</li> -->
<!--                     </ul> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="cb"></div> -->
        </div>
		<div class=""><h3>我的购物车</h3></div>
				<!-- 					这是列表  需修改 -->
<!-- 				<table id="myTable" class="table table-bordered table-striped table-hover"></table>  -->
<div class="cartProductList" style=" margin-bottom: 30px;">
		<table class="cartProductTable">
			<thead>
				<tr>
					<th class="selectAndImage">
						<input type="checkbox" id="allCheck"> 
						全选
					</th>
					<th>商品信息</th>
					<th>单价</th>
					<th>数量</th>
					<th width="120px">金额</th>
					<th class="operation">操作</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${not empty items}">
				<c:forEach var="itemData" items="${items}" varStatus="status">	
					<tr  class="cartProductItemTR">
						<td>
							<input type="checkbox" orderId="${itemData.id}" class="checkOrder"> 
							<img src="${contextPath}/file/downloadFromDataBase?id=${itemData.productImgIds}"  alt=""  class="productImg">
<%-- 							<img class="productImg" src="${contextPath}/resources/img/test/1.jpg"> --%>
						</td>
						<td>
							<div style="width: 400px;">
								<a href="${contextPath}/introduction/item?id=${itemData.productId}" >${itemData.name}</a>
								<div class="">
								<img alt="" src="${contextPath}/resources/img/userCart/7day.png"  title="消费者保障服务,承诺7天退货">
								<img alt="" src="${contextPath}/resources/img/userCart/promise.png"  title="消费者保障服务,承诺如实描述">
								</div>
							</div>
							
						</td>
						<td>
							<div style="text-decoration: line-through;">¥ ${itemData.originalPrice}</div>
							<div class="promotionPrice">¥ ${itemData.productPrice}</div>
						</td>
						<td>
							<div class="productNumberChangeDiv">
<!-- 							库存，现货 stock-->
								<span class="hidden itemInventory "  myValue="${itemData.inventory}">${itemData.inventory}</span>
								<span class="hidden itemProductPrice "  myValue="${itemData.productPrice}">${itemData.productPrice}</span>
								<a  class="numberMinus" href="javascript:void(0);">-</a>
								<input class="text-center orderItemNumberSetting"  value="1">
								<a  class="numberPlus" href="javascript:void(0);">+</a>
							</div>					
						
						 </td>
						<td class="totalPriceTd">
							<span class="promotionPrice totalPrice" >
							¥ ${itemData.totalPrice}
							</span>
						
						</td>
						<td>
<!-- 						deleteOrderItem -->
							<a class=" deleteBtn" data-toggle="modal" data-target="#myModal"  href="javascript:void(0);" myid="${itemData.id}">删除</a>
						</td>
					</tr>
				</c:forEach>	
        	</c:if>
        	<c:if test="${empty items }">
        		<tr  class="cartProductItemTR">
        			<th colspan="6" style=" text-align:  center; font-size: 21px;">等待宝贝的加入~</th>
        		</tr>
        	</c:if>		
			</tbody>
		
		</table>
	</div>
		<div class=" ">
            <a class="check_btn fr" href="javascript:void(0);" >&nbsp;去结算&nbsp;&gt;&gt;</a>
            <a class=" continue_btn fl" href="javascript:void(0);"  >继续购物</a>
        </div>
	</div>
			<!-- 按钮触发模态框 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content" style=" width: 65%;">
						<div class="mydiv gray-background "  style="width: 100%;">
							提示  
						</div>
						<div class="mydiv  text-center" style=" height: 130px; width: 100%;">
							您确定需要删除吗？ 
						<div  style="padding: 28px;    text-align: right;">
							<button type="button" class="btn btn-primary  deleteOK">确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
						</div>
				</div>
				</div>
			</div>
<script type="text/javascript" src="${contextPath}/resources/js/main/user/userCart.js"></script>
<script type="text/javascript">
</script>
<style>
.check_btn {
    /* display: block; */
    width: 128px;
    height: 36px;
    line-height: 36px;
    background-color: red;
    font-size: 18px;
    font-weight: bold;
    font-family: "微软雅黑", "宋体";
    color: #fff;
    text-align: center;
}
.continue_btn{
   background-color: white;
    color: #444;
    border: 1px solid #ccc;
    width: 128px;
    height: 36px;
    line-height: 36px;
    font-size: 18px;
/*     font-weight: bold; */
    font-family: "微软雅黑", "宋体";
    text-align: center;
}
 img.productImg {
    padding: 1px;
    border: 1px solid #EEEEEE;
    width: 80px;
    height: 80px;
}
table {
    width: 100%;
}
table.cartProductTable th {
    font-weight: normal;
    /* color: #3C3C3C; */
    padding: 20px 10px; 
}
tr.cartProductItemTR td {
    padding: 20px 10px;
}
tr.cartProductItemTR {
    border: 1px solid #CCCCCC;
}
div.productNumberChangeDiv {
    border: solid 1px #E5E5E5;
    width: 80px;
}
div.productNumberChangeDiv a {
    width: 14px;
    display: inline-block;
    text-align: center;
    color: black;
    text-decoration: none;
}
div.productNumberChangeDiv input {
    border: solid 1px #AAAAAA;
    width: 42px;
    display: inline-block;
}
</style>
</body>
</html>