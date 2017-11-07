<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../common/common.jsp"%>
<%
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>유치원 프로젝트</title>

<!-- Bootstrap Core CSS -->
<link
	href="<%=cp%>/resource/common/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<%=cp%>/resource/common/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=cp%>/resource/common/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="<%=cp%>/resource/common/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=cp%>/resource/common/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.navbar .navbar-brand {
	color: white;
}

.navbar sidebar {
	background-color: #f9a03a;
}

#wrapper {
	background-color: #f9a03a;
}

.navbar-brand {
	font-size: 20px;
	line-height: 40px;
}

.navbar sidebar a {
	background-color: #f9a03a;
}

.navbar {
	background-color: #f9a03a;
}

.navbar a {
	color: white;
}
</style>
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a id="${jspName}_projectName" class="navbar-brand" href="index.jsp"
					style="fint-size: 30px;"><i><img
						src="<%=cp%>/resource/img/4.jpg"
						style="max-width: 40px; height: auto;"></i></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i
						class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-messages">
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque eleifend<%=cp%>/resource/template.
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque eleifend<%=cp%>/resource/template.
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<strong>John Smith</strong> <span class="pull-right text-muted">
										<em>Yesterday</em>
									</span>
								</div>
								<div>
									Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Pellentesque eleifend<%=cp%>/resource/template.
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a id="${jspName}_message" class="text-center"> <strong>Read
									All Messages</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-messages --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<li><a href="#">
								<div>
									<p>
										<strong>Task 1</strong> <span class="pull-right text-muted">40%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-success"
											role="progressbar" aria-valuenow="40" aria-valuemin="0"
											aria-valuemax="100" style="width: 40%">
											<span class="sr-only">40% Complete (success)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 2</strong> <span class="pull-right text-muted">20%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-info" role="progressbar"
											aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
											style="width: 20%">
											<span class="sr-only">20% Complete</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 3</strong> <span class="pull-right text-muted">60%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-warning"
											role="progressbar" aria-valuenow="60" aria-valuemin="0"
											aria-valuemax="100" style="width: 60%">
											<span class="sr-only">60% Complete (warning)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<p>
										<strong>Task 4</strong> <span class="pull-right text-muted">80%
											Complete</span>
									</p>
									<div class="progress progress-striped active">
										<div class="progress-bar progress-bar-danger"
											role="progressbar" aria-valuenow="80" aria-valuemin="0"
											aria-valuemax="100" style="width: 80%">
											<span class="sr-only">80% Complete (danger)</span>
										</div>
									</div>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Tasks</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-comment fa-fw"></i> 최근 올라온 글 수 <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
										class="pull-right text-muted small">12 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-envelope fa-fw"></i> Message Sent <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-tasks fa-fw"></i> New Task <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
										class="pull-right text-muted small">4 minutes ago</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>See
									All Alerts</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> User
								Profile</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
						</li>
						<li class="divider"></li>
						<li><a id="login" href="#"><i class="fa fa-sign-out fa-fw"></i> Log-in</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->
			<div class="wrapper" style="background-color: #f9a03a;">
				<div class="navbar sidebar" role="navigation">
					<div class="sidebar-nav navbar-collapse">
						<ul class="nav" id="side-menu">
							<li class="sidebar-search">
								<div class="input-group custom-search-form">
									<input type="text" class="form-control" placeholder="...">
									<span class="input-group-btn">
										<button class="btn btn" type="button">
											<i class="fa fa-search"></i>
										</button>
									</span>
								</div> <!-- /input-group -->
							</li>
							<li><a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i>환경구성
									찾아보기</a></li>
							<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
									환경구성 공유하기<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="flot.html">우리원과 친구</a></li>
									<li><a href="flot.html">봄과 동식물</a></li>
									<li><a href="flot.html">나와 가족</a></li>
									<li><a href="flot.html">우리동네</a></li>
									<li><a href="flot.html">여름과 건강</a></li>
									<li><a href="morris.html">교통기관</a></li>
									<li><a href="morris.html">우리나라</a></li>
									<li><a href="morris.html">가을</a></li>
									<li><a href="morris.html">환경과 생활</a></li>
									<li><a href="morris.html">겨울</a></li>
									<li><a href="morris.html">생활도구</a></li>
									<li><a href="morris.html">형님이 되었어요</a></li>
								</ul> <!-- /.nav-second-level --></li>
							<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>이야기방</a>
							</li>
							<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
									회원문의</a></li>
							<li><a href="#"><i class="fa fa-wrench fa-fw"></i>
									악플달면쩌리쩌러버려<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="panels-wells.html">Panels and Wells</a></li>
									<li><a href="buttons.html">Buttons</a></li>
									<li><a href="notifications.html">Notifications</a></li>
									<li><a href="typography.html">Typography</a></li>
									<li><a href="icons.html"> Icons</a></li>
									<li><a href="grid.html">Grid</a></li>
								</ul> <!-- /.nav-second-level --></li>
							<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
									Multi-Level Dropdown<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="#">Second Level Item</a></li>
									<li><a href="#">Second Level Item</a></li>
									<li><a href="#">Third Level <span class="fa arrow"></span></a>
										<ul class="nav nav-third-level">
											<li><a href="#">Third Level Item</a></li>
											<li><a href="#">Third Level Item</a></li>
											<li><a href="#">Third Level Item</a></li>
											<li><a href="#">Third Level Item</a></li>
										</ul> <!-- /.nav-third-level --></li>
								</ul> <!-- /.nav-second-level --></li>
							<li><a href="#"><i class="fa fa-files-o fa-fw"></i>
									Sample Pages<span class="fa arrow"></span></a>
								<ul class="nav nav-second-level">
									<li><a href="blank.html">Blank Page</a></li>
									<li><a href="login.html">Login Page</a></li>
								</ul> <!-- /.nav-second-level --></li>
						</ul>
					</div>
					<!-- /.sidebar-collapse -->
				</div>
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<!-- <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">모여주샘제발</h1>
                </div>
                /.col-lg-12
            </div> -->
			<!-- /.row -->
			<div class="row" style="padding-top: 10px">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-comments fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">26</div>
									<div>최신글</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">더보기</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>새로올라온 환경구성</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">더보기</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-shopping-cart fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">124</div>
									<div>스크랩된 환경구성</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">더보기</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-red">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-support fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">13</div>
									<div>도움된 환경구성</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">더보기</span> <span class="pull-right"><i
									class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-8">
					<!-- /.panel -->
					<div class="panel panel">
						<div class="panel-heading">
							<i class="fa fa-clock-o fa-fw"></i> 타임라인
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<ul class="timeline">
								<li>
									<div class="timeline-badge">
										<i class="fa fa-check"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">호새기</h4>
											<p>
												<small class="text-muted"><i class="fa fa-clock-o"></i>
													11 hours ago via Twitter</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>야 환경구성은 ㅈㄴ재밋는거야</p>
										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-badge warning">
										<i class="fa fa-credit-card"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">루나틱</h4>
										</div>
										<div class="timeline-body">어둠이 나를 부른다..키킥킼키</div>
									</div>
								</li>
								<li>
									<div class="timeline-badge danger">
										<i class="fa fa-bomb"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">돼토</h4>
										</div>
										<div class="timeline-body">안녕얘들아 닥처</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">모슬포</h4>
										</div>
										<div class="timeline-body">
											<p>빡킹</p>
										</div>
									</div>
								</li>
								<li>
									<div class="timeline-badge info">
										<i class="fa fa-save"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">Sangi Lee</h4>
										</div>
										<div class="timeline-body">
											<p>박싱한판뜨자</p>
											<hr>
											<div class="btn-group">
												<!-- <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-gear"></i> <span class="caret"></span>
                                                </button> -->
												<ul class="dropdown-menu" role="menu">
													<li><a href="#">Action</a></li>
													<li><a href="#">Another action</a></li>
													<li><a href="#">Something else here</a></li>
													<li class="divider"></li>
													<li><a href="#">Separated link</a></li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">Lorem ipsum dolor</h4>
										</div>
										<div class="timeline-body">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Sequi fuga odio quibusdam. Iure expedita, incidunt
												unde quis nam! Quod, quisquam. Officia quam qui adipisci
												quas consequuntur nostrum sequi. Consequuntur, commodi.</p>
										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-badge success">
										<i class="fa fa-graduation-cap"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">Lorem ipsum dolor</h4>
										</div>
										<div class="timeline-body">
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Deserunt obcaecati, quaerat tempore officia voluptas
												debitis consectetur culpa amet, accusamus dolorum fugiat,
												animi dicta aperiam, enim incidunt quisquam maxime neque
												eaque.</p>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-8 -->
				<div class="col-lg-4">
					<div class="panel panel">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> 환경구성 상세검색
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<div class="col-lg-6">
								<ul class="nav nav-second-level">
									<li><a href="flot.html">우리원과 친구</a></li>
									<li><a href="flot.html">봄과 동식물</a></li>
									<li><a href="flot.html">나와 가족</a></li>
									<li><a href="flot.html">우리동네</a></li>
									<li><a href="flot.html">여름과 건강</a></li>
									<li><a href="morris.html">교통기관</a></li>
									<!--  <li>
	                                    <a href="morris.html">우리나라</a>
	                                </li>
	                                <li>
	                                    <a href="morris.html">가을</a>
	                                </li>
	                                <li>
	                                    <a href="morris.html">환경과 생활</a>
	                                </li>
	                                <li>
	                                    <a href="morris.html">겨울</a>
	                                </li>
	                                <li>
	                                    <a href="morris.html">생활도구</a>
	                                </li>
	                                <li>
	                                    <a href="morris.html">형님이 되었어요</a>
	                                </li> -->
								</ul>
							</div>
							<div class="col-lg-6" style="background: orange; height: 100%"></div>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->

					<!-- /.panel -->
					<div class="chat-panel panel panel">
						<div class="panel-heading">
							<i class="fa fa-comments fa-fw"></i> 채팅
							<div class="btn-group pull-right">
								<button type="button" class="btn btn btn-xs dropdown-toggle"
									data-toggle="dropdown">
									<i class="fa fa-chevron-down"></i>
								</button>
								<ul class="dropdown-menu slidedown">
									<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>
											새로고침
									</a></li>
									<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i>
											접속중
									</a></li>
									<li><a href="#"> <i class="fa fa-times fa-fw"></i> 바쁨
									</a></li>
									<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i>
											자리비움
									</a></li>
									<li class="divider"></li>
									<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i>
											나가기
									</a></li>
								</ul>
							</div>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<ul class="chat">
								<li class="left clearfix"><span class="chat-img pull-left">
										<img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
										class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<strong class="primary-font">ape</strong> <small
												class="pull-right text-muted"> <i
												class="fa fa-clock-o fa-fw"></i> 12 mins ago
											</small>
										</div>
										<p>제니야 사랑해</p>
									</div></li>
								<li class="right clearfix"><span
									class="chat-img pull-right"> <img
										src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
										class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<small class=" text-muted"> <i
												class="fa fa-clock-o fa-fw"></i> 13 mins ago
											</small> <strong class="pull-right primary-font">야옹이</strong>
										</div>
										<p>킼킼킼킼키키키키키키키키캬캬캬캬캬캬컄하하하하하</p>
									</div></li>
								<li class="left clearfix"><span class="chat-img pull-left">
										<img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar"
										class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<strong class="primary-font">ape</strong> <small
												class="pull-right text-muted"> <i
												class="fa fa-clock-o fa-fw"></i> 14 mins ago
											</small>
										</div>
										<p>진심이다</p>
									</div></li>
								<li class="right clearfix"><span
									class="chat-img pull-right"> <img
										src="http://placehold.it/50/FA6F57/fff" alt="User Avatar"
										class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<small class=" text-muted"> <i
												class="fa fa-clock-o fa-fw"></i> 15 mins ago
											</small> <strong class="pull-right primary-font">정제니</strong>
										</div>
										<p>아싸라비용</p>
									</div></li>
							</ul>
						</div>

						<!-- /.panel-body -->
						<div class="panel-footer">
							<div class="input-group">
								<input id="btn-input" type="text" class="form-control input-sm"
									placeholder="글쓰기" /> <span class="input-group-btn">
									<button class="btn btn-warning btn-sm" id="btn-chat">
										Send</button>
								</span>
							</div>
						</div>
						<!-- /.panel-footer -->
					</div>
					<!-- /.panel .chat-panel -->

					<!-- test Vue API -->
					<div id="demo">
						<h1>Latest Vue.js Commits</h1>
						<template v-for="branch in branches"> <input
							type="radio" :id="branch" :value="branch" name="branch"
							v-model="currentBranch"> <label :for="branch">{{
							branch }}</label> </template>
						<p>vuejs/vue@{{ currentBranch }}</p>
						<ul>
							<li v-for="record in commits"><a :href="record.html_url"
								target="_blank" class="commit">{{ record.sha.slice(0, 7) }}</a>
								- <span class="message">{{ record.commit.message |
									truncate }}</span><br> by <span class="author"><a
									:href="record.author.html_url" target="_blank">{{
										record.commit.author.name }}</a></span> at <span class="date">{{
									record.commit.author.date | formatDate }}</span></li>
						</ul>
					</div>
					<!-- /.Vue API -->
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script src="<%=cp%>/resource/common/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="<%=cp%>/resource/common/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=cp%>/resource/common/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Morris Charts JavaScript -->
	<script src="<%=cp%>/resource/common/vendor/raphael/raphael.min.js"></script>
	<script src="<%=cp%>/resource/common/vendor/morrisjs/morris.min.js"></script>
	<script src="<%=cp%>/resource/common/data/morris-data.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=cp%>/resource/common/dist/js/sb-admin-2.js"></script>

	<!-- vue 2.0 script -->
	<script src="<%=cp%>/resource/common/js/vue.js"></script>
	<script src="<%=cp%>/resource/common/js/${jspName}.js"></script>
	<script type="text/javascript">
		$(function(){
			${jspName}.init({
				jspName: '${jspName}'
			});
		});
	</script>
</body>
</html>