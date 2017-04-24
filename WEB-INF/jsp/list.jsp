<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0048)http://localhost:8080/mango/product/list/1.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-4" data-genuitec-path="/shop_ssh/WebRoot/WEB-INF/jsp/list.jsp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>蔬菜 - Powered By Mango Team</title>
<meta name="author" content="Mango Team">
<meta name="copyright" content="Mango">
<meta name="keywords" content="蔬菜">
<meta name="description" content="蔬菜">
<link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/product.css" rel="stylesheet" type="text/css">
	<%@include file="header.jsp" %>
	<div class="container productList">
		<div class="span6">
			<div class="hotProductCategory">
				<s:iterator value="categoryList" var="c">
					<dl>
						<dt>
							<a href="${pageContext.request.contextPath}/category_findByCid.action?cid=<s:property value="#c.cid"/>&page=1"><s:property value="#c.cname"/></a>
						</dt>
						<s:iterator value="#c.categorySeconds" var="cs">
							<dd>
								<a><s:property value="#cs.csname"/></a>
							</dd>
						</s:iterator>
					</dl>
				</s:iterator>
			</div>
		</div>
		<div class="span18 last">

			<form id="productForm"
				action="${pageContext.request.contextPath}/image/蔬菜 - Powered By Mango Team.htm" method="get">
				<input type="hidden" id="brandId" name="brandId" value=""> <input
					type="hidden" id="promotionId" name="promotionId" value="">
				<input type="hidden" id="orderType" name="orderType" value="">
				<input type="hidden" id="pageNumber" name="pageNumber" value="1">
				<input type="hidden" id="pageSize" name="pageSize" value="20">

				<div id="result" class="result table clearfix">
					<ul>
						<s:iterator value="pageBean.list" var="p">
							<li><a href="${pageContext.request.contextPath}/product_findByPid.action?pid=<s:property value="#p.pid"/>"> <img src="${pageContext.request.contextPath}/<s:property value="#p.image"/>"
									width="170" height="170" style="display: inline-block;"> 
									<span style='color:green'>
										<s:property value="#p.pname"/> 
									</span> 
										<span class="price">亿家价： ￥<s:property value="#p.shop_price"/>
									</span>
	
							</a></li>
						</s:iterator>
					</ul>
				</div>
				<div class="pagination">
					<s:if test="pageBean.page != 1">
						<a href="${ pageContext.request.contextPath }/category_findByCid.action?cid=<s:property value="cid"/>&page=1" class="firstPage">&nbsp;</a>		
						<a href="${ pageContext.request.contextPath }/category_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page-1"/>" class="previousPage">&nbsp;</a>	
					</s:if>	
					<s:iterator var="i" begin="1" end="pageBean.totalPage" step="1">
						<s:if test="pageBean.page==#i">
							<span class="currentPage"><s:property value="#i"/></span>
						</s:if>
						<s:else>
							<a href="${ pageContext.request.contextPath }/category_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="#i"/>"><s:property value="#i"/></a>
						</s:else>
					</s:iterator>
						
					<s:if test="pageBean.page != pageBean.totalPage">
						<a class="nextPage" href="${ pageContext.request.contextPath }/category_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.page+1"/>">&nbsp;</a>
						<a class="lastPage" href="${ pageContext.request.contextPath }/category_findByCid.action?cid=<s:property value="cid"/>&page=<s:property value="pageBean.totalPage"/>">&nbsp;</a>
					</s:if>	
				</div>
			</form>
		</div>
	</div>
	<div class="container footer">
		<div class="span24">
			<div class="footerAd">
				<img src="${pageContext.request.contextPath}/image/footer.jpg" width="950" height="52" alt="我们的优势"
					title="我们的优势">
			</div>
		</div>
		<div class="span24">
			<ul class="bottomNav">
				<li><a>关于我们</a> |</li>
				<li><a>联系我们</a> |</li>
				<li><a>诚聘英才</a> |</li>
				<li><a>法律声明</a> |</li>
				<li><a>友情链接</a> |</li>
				<li><a target="_blank">支付方式</a> |</li>
				<li><a target="_blank">配送方式</a> |</li>
				<li><a>SHOP++官网</a> |</li>
				<li><a>SHOP++论坛</a></li>
			</ul>
		</div>
		<div class="span24">
			<div class="copyright">Copyright © 2005-2013 Mango商城 版权所有</div>
		</div>
	</div>
</body>
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"6573",secure:"8124"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></html>