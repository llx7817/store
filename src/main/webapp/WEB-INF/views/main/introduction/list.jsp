<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../../common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>


</head>
<body>
<input id="user"  userid="${user.id}" user_name="${user.name}"  hidden/>
	<div class="container">
<!-- 		<div class=""> -->
<%-- 			${item.productCategory.name} >  ${item.name} --%>
<!-- 		</div> -->
		<div class="product_box blank-container">
		 	<div class="img_preview fl" style="display: inline;">
		 		<div class="big_img">
		 		<img src="${contextPath}/file/downloadFromDataBase?id=${item.productImgIds}"  alt=""  width="430" height="430" style="display: block;">
<%-- 					<img alt="" src="${contextPath}/resources/img/test/1.jpg" width="430" height="430" style="display: block;" class="">		 		</div> --%>
			</div>
			</div>
			<div class="fl" style="">
<!-- 				<input type="hidden" id="goodsId" value="17630"> -->
<!-- 	            <input type="hidden" id="productId" value="24508"> -->
<!-- 	            <input type="hidden" id="brandId" value="1064"> -->
<!-- 	            <input type="hidden" id="catId" value="5356"> -->
					<div class="pd_title">
		                <h3>${item.name}</h3>
		            </div>
<!-- 		              <input type="hidden" id="disId" value="320105000000"> -->
<!--            			 <input type="hidden" id="followPrice" value="78"> -->
				<div style="margin-top: 33px; margin-bottom: 36px;">
					<div class="originalDiv">
						<span class="text-blank">价&nbsp;&nbsp;格</span>
						<span >¥</span>
						<span style="text-decoration: line-through;" >${item.originalPrice}</span>
					</div>        
					<div class="promotionDiv">
						<span class="text-blank" >促销价 </span>
						<span class="promotionPrice">¥</span>
						<span class="promotionPrice"  style="font-size: 30px;">${item.promotionPrice}</span>				
					</div>        
					<div class="productNumber">
				<span class="text-blank">数&nbsp;&nbsp;量</span>
				<span>
					<span class="productNumberSettingSpan">
					<input class="productNumberSetting" type="text" value="1" id="product_Number">
					</span>
					<span class="arrow">
						<a href="#" class="increaseNumber">
						<span class="updown">
								<img alt="" src="${contextPath}/resources/img/introduction/increase.png"  >
						</span>
						</a>
						<span class="updownMiddle"> </span>
						<a href="#" class="decreaseNumber">
						<span class="updown">
								<img alt="" src="${contextPath}/resources/img/introduction/decrease.png"  >
						</span>
						</a>
						
					</span>
					件
				</span>
				<span>&nbsp;库存${item.inventory}件</span>
			</div>
				<div class="margin-top-16px">
						<span class="text-blank" >配送至 </span>
						<span class="">浙江杭州</span>				
					</div>  
				<div class="margin-top-16px">
						<span class="text-blank" >服&nbsp;&nbsp;务 </span>
						<span class="">由“官方自营店”直接销售和发货，并提供售后服务</span>				
				</div>  
				<div class="margin-top-16px">
						<span class="text-blank" >温馨提示</span>
						<span class="">
						<img alt="" src="${contextPath}/resources/img/introduction/mian-yun-fei.jpg"  >
						<img alt="" src="${contextPath}/resources/img/introduction/zhang-ping-bao-zhang.jpg"  >
						</span>		免运费&nbsp;&nbsp;正品保障		
				</div>  
			</div>  
            <div class="by_cart ">
                <a class="collect_product ml20" product_id=""distinct_id="320105000000">立即购买</a>
                <a class="mycart mr20 addCartBtn" product_id="${item.id}"  href="javascript:void(0);">加入购物车</a>
				<div class="alert alert-warning" >
					<a href="#" class="close" data-dismiss="alert">
						&times;
					</a>
					宝贝已经加入购物车！
				</div>
            </div>
			</div>
		</div>
	
<!-- 			分割线		 -->
<!-- 			<hr /> -->
			<h3  style="text-align: center;"   >商品详情</h3>
			<div class="horizontal-line"></div>
<!-- 			商品详细介绍，主要是以图片的方式 -->
			<div class="product_detail">
<!-- 			商品详情 -->
				<div class="details_box" style="display: block;margin-left: 86px;">
                        <ul class="product_introduce ">
                            <li title="${item.name}">商品名称：${item.name}</li>
<%--                             <li>商品标签：${item.productLabel.name}</li> --%>
<%--                             <li>店铺：<a href="${contextPath}/main/list">官方自营店</a></li> --%>
<%--                             <li>时间：${item.updateTime}</li> --%>
                            <li>分类：${item.productCategory.name}</li>
                            <c:forEach var="itemData" items="${productParameterList}" varStatus="status">	
									  	 <li title="${itemData.value}">${itemData.name}：${itemData.value}  </li>	
							</c:forEach>
                        </ul><!--/pro_introduce-->
				</div>
<!-- 				<div class="horizontal-line"></div> -->
				<div class="details_img">
					<input id="detailIds"  value="${item.detailIds}"  hidden/>
					<div id="detailImgs" class="" style="">
					<!-- 			图片的位置 -->
					</div>
				</div>
			</div>
<!-- 			<div class="horizontal-line"></div> -->
<!-- 			<div class="slogen"> -->
<!-- 			<ul> -->
<!-- 				<li > -->
<%-- 				      <img alt="" src="${contextPath}/resources/img/slogen/1.jpg"  height="50"> --%>
<!-- 				</li> -->
<!-- 				<li> -->
<%-- 				      <img alt="" src="${contextPath}/resources/img/slogen/2.jpg"  height="50"> --%>
<!-- 				</li> -->
<!-- 				<li> -->
<%-- 				      <img alt="" src="${contextPath}/resources/img/slogen/3.jpg"  height="50"> --%>
<!-- 				</li> -->
<!-- 				<li> -->
<%-- 				      <img alt="" src="${contextPath}/resources/img/slogen/4.jpg"  height="50"> --%>
<!-- 				</li> -->
<!-- 			</ul> -->
<!-- 			</div> -->
	</div>
		



	
<script type="text/javascript" src="${contextPath}/resources/js/main/introduction/list.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
/* 鼠标指针悬停放大效果 */
.enlarge-img{  
    cursor: pointer;  
    transition: all 0.6s;  
}  
.enlarge-img:hover{  
    transform: scale(1.2);  
}  

/***/
.product_box {
    min-height: 490px;
    background: #fff;
    padding: 20px;
}
.img_preview {
    width: 500px;
}

.product_info {
/*     width: 700px; */
}
.store-prompt em {
    font-size: 14px;
    font-weight: 700;
    color: #666;
    margin-right: 15px;
}
.thumb_scroll_wp{
    width: 295px;
    margin: 0 auto;
    overflow: hidden;   
}
.thumb_scroll_wp2{
/*     padding: 0px; */
/*     border: 1px solid #df1738; */
}
.thumb_scroll_wp li {
    float: left;
    margin: 0 3.5px;
}

.product_introduce {
/*     border: 1px solid #eee; */
/*     border-top: none; */
/* border-bottom: 1px solid #ccc; */
    padding: 5px 10px;
}
.product_introduce li {
    float: left;
    width: 268px;
    margin-right: 20px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    padding: 5px 0;
}
/* 立即购买 按钮*/
.collect_product {
    float: left;
    border-radius: 3px;
    width: 118px;
    height: 38px;
    overflow: hidden;
    white-space: nowrap;
    background: #fcdde2;
    border: 1px solid #f58b9d;
    color: #df1738;
    font-size: 18px;
    text-align: center;
    line-height: 38px;
    cursor: pointer;
}


.text-blank{
	display: inline-block; 
	width: 68px;
}


div.productNumber span.updown {
    border: 1px solid #999;
    display: block;
    width: 20px;
    height: 14px;
    text-align: center;
    padding-top: 4px;
}
 span.productNumberSettingSpan {
    border: 1px solid #999;
    display: inline-block;
    width: 43px;
    height: 32px;
    padding: 7px 0;
}
input.productNumberSetting {
    border: 0px;
    height: 80%;
    width: 80%;
}
div.productNumber span.arrow {
    display: inline-block;
    width: 22px;
    height: 32px;
    vertical-align: top;
}
div.productNumber span.updownMiddle {
    height: 4px;
    display: block;
}
div.productNumber span.updown img {
    display: inline-block;
    vertical-align: top;
}
.margin-top-16px{
    margin-top: 16px;
 }
</style>

</body>
</html>