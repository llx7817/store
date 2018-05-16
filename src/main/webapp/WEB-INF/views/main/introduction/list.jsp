<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../../../../../common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>主页</title>


</head>
<body>

	<div class="container">
<!-- 		<div class=""> -->
			${item.productCategory.name} >  ${item.name}
<!-- 		</div> -->
		<div class="product_box blank-container">
		 	<div class="img_preview fl" style="display: inline;">
		 		<div class="big_img">
					<img alt="" src="http://img01.51cxg.cn/1509677661368.jpg!352" width="500" height="500" style="display: block;" class="">		 		</div>
		 		<div class="thumb_img blank-container">
		 			<div class="thumb_scroll_wp">
                    <ul class="">
                            <li class="">
<!--                                 <a class="cloud-zoom-gallery" href="http://img01.51cxg.cn/1509677660165.jpg" rel="useZoom:'zoom',smallImage:'http://img01.51cxg.cn/1509677660165.jpg!352'"> -->
                                    <img alt="" src="http://img01.51cxg.cn/1509677660165.jpg!56" width="50" height="50">
<!--                                 </a> -->
                            </li>
                            <li class="">
                                    <img alt="" src="http://img01.51cxg.cn/1509677660465.jpg!56" width="50" height="50">
                            </li>
                            <li class="">
                                    <img alt="" src="http://img01.51cxg.cn/1509677660905.jpg!56" width="50" height="50">
                            </li>
                            <li class="cur">
                                    <img alt="" src="http://img01.51cxg.cn/1509677661368.jpg!56" width="50" height="50">
                            </li>
                    </ul>
                </div>
		 		</div>
			</div>
			
			<div class="fl" style="margin-left: 40px;">
<!-- 				<input type="hidden" id="goodsId" value="17630"> -->
<!-- 	            <input type="hidden" id="productId" value="24508"> -->
<!-- 	            <input type="hidden" id="brandId" value="1064"> -->
<!-- 	            <input type="hidden" id="catId" value="5356"> -->
					<div class="pd_title">
		                <h2>${item.name}</h2>
		<!--                 <strong>2罐起订</strong> -->
		            </div>
<!-- 		              <input type="hidden" id="disId" value="320105000000"> -->
<!--            			 <input type="hidden" id="followPrice" value="78"> -->
		            <dl class="pd_info clearfix mt10">
                <div class="pd-bg clearfix">
                    <div class="cxyj" style="display:none;">
                    <dt>原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</dt>
                        <dd><del class="f14 col6">78.00</del></dd>
                    </div>
                    <dt id="priceflr">促&nbsp;&nbsp;销&nbsp;&nbsp;价：</dt>
                    <dd><span class="main_price"><span>¥ </span>78.00</span><span style="color: red;" id="zk_price">&nbsp;</span><input type="hidden" id="mprice" value="78.00"></dd>
                    <dt>促销信息：</dt>
                    <dd class="product_market "> </dd>
                </div>
                <div class="pl20 pr20 pt10">
                    <dt>配&nbsp;&nbsp;送&nbsp;&nbsp;至：</dt>
                    <dd>
                        <div class="choose_area">
                        
                        </div><!--/choose_area-->
                        <div class="store-prompt"><em>有货</em></div>
                    </dd>
                    <dt>服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</dt>
                    <dd>由“官方自营店”直接销售和发货，并提供售后服务</dd>
                    <dt>温馨提示：</dt>
                    <dd>
                        <div class="wx_prompt clearfix">
                                        <img src="http://img01.51cxg.cn/1479975423637.jpg" height="20px;" width="20px;" style="float:left;">
<!--                                         <a class="fl" target="_blank" href="/help/91">正品保障</a> -->
                                        正品保障
                                        <img src="http://img01.51cxg.cn/1479975373828.jpg" height="20px;" width="20px;" style="float:left;">
<!--                                         <a class="fl" target="_blank" href="/help/91">免运费</a> -->
                                        免运费
                        </div><!--/wx_prompt-->
                    </dd>
                </div>
            </dl>
            <div class="by_cart ">
                <a class="collect_product mr20" product_id=""distinct_id="320105000000">立即购买</a>
                <a class="mycart" product_id="" distinct_id="320105000000" href="javascript:;">加入购物车</a>
            </div>
			</div>
		</div>
	
<!-- 			分割线		 -->
<!-- 			<hr /> -->
			<div class="horizontal-line"></div>
<!-- 			商品详细介绍，主要是以图片的方式 -->
			<div class="product_detail">
<!-- 			商品详情 -->
				<div class="details_box" style="display: block;">
                        <ul class="product_introduce ">
                            <li>商品名称：${item.name}</li>
                            <li>商品标签：${item.productLabel.name}</li>
                            <li>店铺：<a href="${contextPath}/main/list.do">官方自营店</a></li>
                            <li>时间：${item.updateTime}</li>
                            <li>分类：${item.productCategory.name}</li>
                            <c:forEach var="itemData" items="${productParameterList}" varStatus="status">	
									  	 <li>${itemData.name}：${itemData.value}  </li>	
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
			<div class="slogen">
			<ul>
				<li >
				      <img alt="" src="${contextPath}/resources/img/slogen/1.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/2.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/3.jpg"  height="50">
				</li>
				<li>
				      <img alt="" src="${contextPath}/resources/img/slogen/4.jpg"  height="50">
				</li>
			</ul>
			</div>
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
    min-height: 700px;
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
.slogen li {
    float: left;
    width: 262px;
    margin-right: 20px;
}
.product_introduce {
/*     border: 1px solid #eee; */
/*     border-top: none; */
/* border-bottom: 1px solid #ccc; */
    padding: 5px 10px;
}
.product_introduce li {
    float: left;
    width: 250px;
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

.slogen {
    position: relative;
    height: 54px;
    padding: 20px 0;
    margin-bottom: 14px;
    background: #F5F5F5;
    text-align: center;
}
</style>

</body>
</html>