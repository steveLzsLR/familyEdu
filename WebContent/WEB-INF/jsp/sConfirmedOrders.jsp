<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人中心-启学家教网</title>
<link href="${pageContext.request.contextPath}/css/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/index.css"
	rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/js/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.validate.js"
	type="text/javascript"></script>
<%
	if (session.getAttribute("user") == null) {
		response.sendRedirect(request.getContextPath()+"/user/login");
	}
%>
<script type="text/javascript">
	jQuery(document).ready(function() {
		$("#comment").validate();
		jQuery(".commentBtn").click(function() {
			jQuery("#comment").attr("action", $(this).attr('name'));
		});

	});
</script>
<style type="text/css">
label.error{
	color:#c00;
}
</style>
</head>
<body>
	<div id='site-nav'>
		<div class='wrapper' id="hasUserWrapper">
			<ul class='status-info'>
				<li>
					<div class='main-link-div'>
						<a class='main-link' href='${pageContext.request.contextPath}/'> <i
							class='glyphicon glyphicon-home'></i> 首页
						</a>
					</div>
				</li>
				<li>
					<div class='main-link-div'>
						<a class='login-link' href='${pageContext.request.contextPath}/user/myFamilyEduS'>
							个人中心 </a>
					</div>
				</li>
				<li>
					<div class='main-link-div'></div>
				</li>
				<li>客服QQ: 1226468643</li>
			</ul>
			<ul class='tag-info'>
				<li><a class='login-link' href='${pageContext.request.contextPath}/user/myFamilyEduS'>
						<i class='glyphicon glyphicon-user'></i> ${ sessionScope.user.username}
				</a> <a class='register-link' href='${pageContext.request.contextPath}/user/loginout'> 退出 </a></li>
			</ul>
		</div>
	</div>
	<div id='p_header'>
		<div class='p_wrapper'>
			<div class='p_logo'>
				<a href='/FamilyEdu/'> <img alt="启学家教网" class="header-logo-img2"
					src="${pageContext.request.contextPath}/image/logo2.png" />
				</a>
			</div>
			<img alt="用户头像" class="p_title_img"
				src="${pageContext.request.contextPath}${sessionScope.user.userImage}" />
			<div class='p_title'>个人主页</div>
		</div>
	</div>

	<div class='p_main'>
		<div class='p_wrapper'>
			<div class='p_menu'>
				<div class='p_block'>
					<div class='p_block_title'>
						<h4>我的信息</h4>
					</div>
				</div>
				<div class='p_block'>
					<ul class='nav'>
						<li><a href='${pageContext.request.contextPath}/user/myFamilyEduS'> <i
								class='glyphicon glyphicon-user'></i> 用户中心
						</a></li>
						<li><a href='${pageContext.request.contextPath}/user/myFamilyEduS/base'> <span
								class='pnav-left'> 基本信息 </span>
						</a></li>
						<li><a href='${pageContext.request.contextPath}/user/myFamilyEduS/student'> <span
								class='pnav-left'> 学生信息</span>
						</a></li>
						<li><a href='${pageContext.request.contextPath}/user/myFamilyEduS/userPassword'>
								<i class='pnav-left'></i> 密码修改
						</a></li>
					</ul>
				</div>
				<div class='p_block'>
					<div class='p_block_title'>
						<h4>我的订单</h4>
					</div>
				</div>
				<div class='p_block'>
					<ul class='nav'>
						<li><a href='javascript:void(0);'> <i
								class='glyphicon glyphicon glyphicon-pencil'></i> 生成订单
						</a><a href='${pageContext.request.contextPath}/user/myFamilyEduS/order?page=1'
							> <i
								class='glyphicon glyphicon-align-justify'></i> 全部订单
						</a> <a  href='${pageContext.request.contextPath}/user/myFamilyEduS/order/unconfirmed?page=1'> <i
								class='glyphicon glyphicon-time'></i> 待确认的订单
						</a> <a class='p_active' href='${pageContext.request.contextPath}/user/myFamilyEduS/order/confirmed?page=1'> <i
								class='glyphicon glyphicon glyphicon-check'></i> 已确认的订单
						</a>
					</ul>
				</div>
				<div class='p_block'></div>
			</div>

			<div class='p_content' style="min-height:280px; height: 425px;">
				<div class='p_block'>
					<div class='p_block_title p_content_block_title'>
						<h4>
							<i class='glyphicon glyphicon-align-justify'></i> 全部订单
						</h4>
					</div>
				</div>
				<div class="p_block">
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="text-align: center;">课程名称</th>
								<th style="text-align: center;">家教姓名</th>
								<th style="text-align: center;">家教联系方式</th>
								<th style="text-align: center;">试讲日期</th>
								<th style="text-align: center;">学生名称</th>
								<th style="text-align: center;">状态</th>
								<th style="text-align: center;">订单详情</th>
								<th style="text-align: center;" colspan="1">操作</th>
							</tr>
						</thead>
						<c:forEach items="${sMyOrders }" var="myOrder">
							<tr>
								<td style="text-align: center; vertical-align: middle;">${myOrder.teachSubject}</td>
								<td style="text-align: center; vertical-align: middle;">${myOrder.teacher.username}</td>
								<td style="text-align: center; vertical-align: middle;">${myOrder.teacher.phoneNum}</td>
								<td style="text-align: center; vertical-align: middle;">${myOrder.teachDate}</td>
								<td style="text-align: center; vertical-align: middle;">${myOrder.student.stuName}</td>
								<c:if test="${myOrder.status==0}">
									<td style="text-align: center; vertical-align: middle;">
										待家教确认</td>
								</c:if>
								<c:if test="${myOrder.status==1}">
									<td style="text-align: center;">家教已确认</td>
								</c:if>
								<td style="text-align: center; vertical-align: middle;">
									<form action="${pageContext.request.contextPath}/user/order/detail" method="post"
										target="_blank">
										<input type="hidden" name="orderId" value="${myOrder.id}">
										<button class="btn btn-success btn-xs">查看详情</button>
									</form>
								</td>
								<c:if test="${myOrder.status==0}">
									<td style="text-align: center; vertical-align: middle;"
										colspan="2"><a class="btn btn-success btn-xs">删除订单</a></td>
								</c:if>
								<c:if test="${myOrder.status==1}">
									<c:if test="${myOrder.commentStatus==0}">
										<td style="text-align: center; vertical-align: middle;"
											colspan="1"><a class="btn btn-success btn-xs commentBtn"
											data-toggle="modal" data-target="#commentModal"
											name="${pageContext.request.contextPath}/user/myFamilyEduS/order/commentOrder/${myOrder.id}">评价</a>
										</td>
									</c:if>
									<c:if test="${myOrder.commentStatus==1}">
									<td style="text-align: center; vertical-align: middle;"
										colspan="1">已评价</td>
									</c:if>
								</c:if>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div style="position: absolute;top: 320px;margin:0 auto;width: 910px;">
				<nav style="text-align: center;">
					<ul class="pagination">
						<c:if test="${sessionScope.sOrdersCurrentPage!=1}">
							<li><a
								href="${pageContext.request.contextPath}/user/myFamilyEduS/order/confirmed?page=${sessionScope.sOrdersCurrentPage}&pageAction=pre"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
						</c:if>
						<c:forEach begin="${sessionScope.sOrdersBeginPage}"
							end="${sessionScope.sOrdersTotalPage}" var="v">
							<c:if test="${ v==sOrdersCurrentPage}">
								<li class="active"><a
									href="${pageContext.request.contextPath}/user/myFamilyEduS/order/confirmed?page=${v }">${v}</a></li>
							</c:if>
							<c:if test="${ v!=sOrdersCurrentPage}">
								<li><a href="${pageContext.request.contextPath}/user/myFamilyEduS/order/confirmed?page=${v }">${v}</a></li>
							</c:if>
						</c:forEach>
						<c:if
							test="${sessionScope.sOrdersTotalPage!=sessionScope.sOrdersCurrentPage}">
							<c:if test="${sessionScope.sOrdersTotalPage!=0}">
							<li><a
								href="${pageContext.request.contextPath}/user/myFamilyEduS/order/confirmed?page=${sessionScope.sOrdersCurrentPage}&pageAction=next"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
							</c:if>
						</c:if>
					</ul>
					</nav></div></div>
			</div>
		</div>
	<!-- 评价模态框（Modal） -->
	<div class="modal fade" id="commentModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form id="comment" method="post">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">订单评价</h4>
					</div>
					<input type="hidden" name="location"
												value="redirect:/user/myFamilyEduS/order/confirmed?page=1">
					<div class="modal-body">
						<textarea rows="5" cols="78" style="resize: none;"
							placeholder="输入评价" name="comment" required data-msg-required="请输入评价"></textarea>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="submit" class="btn btn-primary" id="reasonSumbit">确认评价</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</form>
		</div>
		<!-- /.modal -->
	</div>
		<div id='footer-div'>
			<div class='wrapper'>
				<div class='footer-service'>
					<div class='footer-service-title'>客服电话：</div>
					<div class='footer-service-content'>13119314025</div>
				</div>
				<div class='footer-intro'>
					<div class='footer-intro-head'>
						<span class='footer-intro-title'>启学家教网 </span> <span
							class='footer-intro-substitle'> 中小学生家教预约平台 </span>
					</div>
					<p class='footer-desc'>启学家教网 -中小学生家教预约平台
						是一个互联网教育平台。为了学习更有效、为了教育更灵活、更亲切，我们致力于本地化家教教育。在这个平台上，老师和学生可以免费发布信息、随时沟通、灵活教学。学生无论是为了应对升学，攻克难题，还是课外兴趣发展，我们都能提供强大的知识和经验支持。
					</p>
					<p class='footer-desc'>
						<br> Copyright © 2015 - 2017启学家教网
					</p>
				</div>
				<div class='footer-about'>
					<i></i>
					<ul class='footer-list'>
						<li><a> 活动公告 </a></li>
						<li><a> 常见问题 </a></li>
						<li><a> 服务协议 </a></li>
						<li><a> 隐私声明 </a></li>
						<li><a> 商务合作 </a></li>
					</ul>
				</div>
				<div class='footer-contact'>
					<i></i>
					<ul class='footer-list'>
						<li><a> 意见反馈 </a></li>
						<li><a> 官方微信 </a></li>
						<li><a> 新浪微博 </a></li>
						<li><a> 关于我们 </a></li>
						<li><a> 联系我们 </a></li>
					</ul>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			jQuery('#teachDate').datepicker({
				minDate : new Date()

			});

			jQuery("#addOrder").validate();
		</script>
</body>
</html>