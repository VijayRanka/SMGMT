<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>SMGMT</title>
	<jsp:include page="/Common/cssJs.jsp"></jsp:include>
</head>
<body class="menu-collapsed">
<jsp:include page="/Common/header.jsp"></jsp:include>
	<jsp:include page="/Common/left-navbar.jsp"></jsp:include>
	<div class="apps-container-wrap page-container dashboard-container">
		<div class="page-content">
			<div class="container-fluid">
				<div class="dashBoard-section-1 nmbr-statistic-area">
					<div class="row">
						<div class="col-lg-3 col-sm-6">
							<div class="box-widget">
								<div class="nmbr-statistic-block user-statistic">
									<div class="nmbr-statistic-info">
										<span class="number">950</span>
										<span class="a-meta-title">New User<span class="highlight-text">+12%</span></span>
									</div>
									<span class="nmbr-statistic-icon ti-face-smile"></span>
								</div><!-- nmbr-statistic-block -->
							</div><!-- widget-module -->
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="box-widget">
								<div class="nmbr-statistic-block visitors-statistic">
									<div class="nmbr-statistic-info">
										<span class="number">3500</span>
										<span class="a-meta-title">Total visitors<span class="highlight-text">+19%</span></span>
									</div>
									<span class="nmbr-statistic-icon ti-eye"></span>
								</div>
							</div><!-- widget-module -->
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="box-widget">
								<div class="nmbr-statistic-block sales-statistic">
									<div class="nmbr-statistic-info">
										<span class="number">125</span>
										<span class="a-meta-title">Total Sales<span class="highlight-text">+60%</span></span>
									</div>
									<span class="nmbr-statistic-icon ti-shopping-cart"></span>
								</div><!-- nmbr-statistic-block -->
							</div><!-- widget-module -->
						</div>
						<div class="col-lg-3 col-sm-6">
							<div class="box-widget">
								<div class="nmbr-statistic-block Subscribers-statistic">
									<div class="nmbr-statistic-info">
										<span class="number">1455</span>
										<span class="a-meta-title">Subscribers<span class="highlight-text">+29%</span></span>
									</div>
									<span class="nmbr-statistic-icon ti-announcement"></span>
								</div><!-- nmbr-statistic-block -->
							</div><!-- widget-module -->
						</div>
					</div>
				</div><!-- nmbr-statistic-area -->
				<div class="dashBoard-section-2">
					<div class="row">
						<div class="col-lg-8">
							<div class="box-widget widget-module">
								<div class="widget-body">
									<div id="canvas-holder1" style="width:100%;">
										<canvas id="line_chart"></canvas>
									</div>
								</div>
							</div><!-- widget-module -->
						</div>
						<div class="col-lg-4">
							<div class="box-widget widget-module dasboard-doghunt-chart">
								<div class="widget-body">
									<div id="canvas-holder" style="width:100%">
										<canvas id="doghunt_chart_2"></canvas>
									</div>
								</div>
							</div><!-- widget-module -->
						</div>
					</div>
				</div><!-- chart-area -->
				<div class="dashBoard-section-3">
					<div class="row">
						<div class="col-lg-6 col-sm-12">
							<div class="box-widget">
								<div id="vectorWorldMap" class="vector-map  dashboard-worldmap"></div>
							</div>
						</div>
						<div class="col-lg-6 col-sm-12">
							<div class="weather-blcok" id="weather"></div>
						</div>
					</div>
				</div>
				<div class="dashBoard-section-3">
					<div class="row">
						<div class="col-lg-4">
							<div class="box-widget eql-height">
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="panel-title">
											<h4>Calender</h4>
										</div>
									</div>
									<div class="panel-body">
										<div class="eventCallender-block">
											<div id="eventCalendar"></div>
										</div><!-- eventCallender-block -->
									</div><!--panel Body -->
								</div><!--panel -->
							</div>
						</div>
						<div class="col-lg-4">
							<div class="box-widget eql-height">
							<div class="panel panel-default">
								<div class="panel-heading">
									<div class="panel-title">
										<h4>Chat Box</h4>
									</div>
								</div>
								<div class="panel-body chats-panel-body">
									<div class="portlet-body" id="chats">
										<div class="scroller" data-always-visible="1" data-rail-visible1="1">
											<ul class="chats">
												<li class="out">
													<div class="message">
														<span class="arrow"> </span>
														<a href="javascript:void(0)" class="name"> Lisa Wong </a>
														<span class="body">euismod tincidunt ut laoreet dolore magna </span>
													</div>
													<div class="avatar-block">
														<img class="avatar" alt="" src="images/misc/avatar2.jpg"/>
														<span class="datetime"> 20:11 </span>
													</div>
												</li>
												<li class="out">
													<div class="message">
														<span class="arrow"> </span>
														<a href="javascript:void(0)" class="name"> Lisa Wong </a>
														<span class="body"> Lorem ipsum dolor sit amet,ut laoreet dolore.</span>
													</div>
													<div class="avatar-block">
														<img class="avatar" alt="" src="images/misc/avatar2.jpg" />
														<span class="datetime"> 20:11 </span>
													</div>
												</li>
												<li class="in">
													<div class="avatar-block">
														<img class="avatar" alt="" src="images/misc/avatar1.jpg" />
														<span class="datetime">20:30 </span>
													</div>
													<div class="message">
														<span class="arrow"> </span>
														<a href="javascript:void(0)" class="name"> Bob Nilson </a>
														<span class="body">Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet.</span>
													</div>
												</li>
												<li class="in">
													<div class="avatar-block">
														<img class="avatar" alt="" src="images/misc/avatar1.jpg" />
														<span class="datetime">20:30 </span>
													</div>
													<div class="message">
														<span class="arrow"> </span>
														<a href="javascript:void(0)" class="name"> Bob Nilson </a>
														<span class="body">Sed diam nonummy nibh euismod tincidunt ut laoreet dolore.</span>
													</div>
												</li>
												<li class="out">
													<div class="message">
														<span class="arrow"> </span>
														<a href="javascript:void(0)" class="name"> Richard Doe </a>
														<span class="body"> Lorem laoreet dolore .</span>
													</div>
													<div class="avatar-block">
														<img class="avatar" alt="" src="images/misc/avatar2.jpg" />
														<span class="datetime">20:33 </span>
													</div>
												</li>
											</ul>
										</div>
										<div class="chat-form form-common">
												<div class="input-cont">
													<input id ="test" class="form-control" type="text" placeholder="Your Message . . ." data-emojiable="true" data-emoji-input="unicode" /> 
												</div>
												<div class="btn-cont">
													<a href="javascript:void(0)" class="btn btn-primary">
														Send
													</a>
												</div>
											</div>
										</div>
									</div><!--panel Body -->
								</div><!--panel -->
							</div>
						</div>
						<div class="col-lg-4">
							<div class="box-widget eql-height">
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="panel-title">
											<h4>Activity</h4>
										</div>
									</div>
									<div class="panel-body activity-panel-body">
										<div class="activity-block-area">
											<ul class="activity-list">
												<li class="primary">
													<div class="activity-content">
														<span>10 min ago</span>
														<p>The point of using Lorem Ipsum</p>
													</div>
												</li>
												<li class="warning">
													<div class="activity-content">
														<span>10 min ago</span>
														<p>The point of using Lorem Ipsum</p>
													</div>
												</li>
												<li class="success">
													<div class="activity-content">
														<span>10 min ago</span>
														<p>The point of using Lorem Ipsum</p>
													</div>
												</li>
												<li class="warning-two">
													<div class="activity-content">
														<span>10 min ago</span>
														<p>The point of using Lorem Ipsum</p>
													</div>
												</li>
												<li class="warning">
													<div class="activity-content">
														<span>10 min ago</span>
														<p>The point of using Lorem Ipsum</p>
													</div>
												</li>
											</ul>
										</div><!-- Activity-block-area -->
									</div><!--panel Body -->
								</div><!--panel -->
							</div>
						</div>
					</div>
				</div><!-- dashBoard-section-3 -->
				<div class="dashBoard-section-4">
					<div class="row">
						<div class="col-md-12">
							<div class="box-widget">
								<div class="panel panel-default">
									<div class="panel-heading">
										<div class="panel-title">
											<h4>Responsive table</h4>
										</div>
									</div>
									<div class="panel-body">
										<div class="responsive-table-block editable-datatable-block">
											<table id="editable-datatable" class="editable-datatable display table table-bordered dataTable no-footer">
												<thead>
													<tr>
														<th>Select</th>
														<th>Order ID</th>
														<th>Full Name</th>
														<th>Email</th>
														<th>Place Date</th>
														<th>Pickup Date</th>
														<th>Delivery Date</th>
														<th>Status</th>
														<th>Price</th>
														<th>Update</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td></td>
														<td>679-10-XX</td>
														<td>Gerald E. Vasquez</td>
														<td>GeraldEVasquez@worm.us</td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>349-76-XXX</td>
														<td>Christine R. Hill</td>
														<td>ChristineRHill@dayrep.com </td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>542-44-XX</td>
														<td>Barbara B. Maxwell</td>
														<td>BMaxwell@rhyta.com </td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>295-11-XX</td>
														<td>Steven A. Good</td>
														<td>StevenAGood@rhyta.com</td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>181-38-XX</td>
														<td>William F. Lester</td>
														<td>FLester@armyspy.com</td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>331-26-XX</td>
														<td>Elisabeth J. Aquirre</td>
														<td>isabethJAquirre@dayrep.com</td>
														<td>15/02/2016</td>
														<td>16/02/2016</td>
														<td>20/03/2016</td>
														<td>Complete</td>
														<td>$125</td>
														<td class="controller-column">
															<i class="fa fa-pencil edit-icon"></i>
															<i class="fa fa-trash-o delete-icon"></i>
														</td>
													</tr>
												</tbody>
											</table>
										</div><!-- responsive-table-block -->
									</div><!--panel Body -->
								</div><!--panel -->
							</div><!-- widget-module -->
						</div>
					</div>
				</div><!-- dashBoard-section-4 -->
				<div class="col-sm-12">
					<div class="footer">
						<p>© 2017 AxilBoard by <a href="#">codepassenger</a></p>
					</div>
				</div>
			</div>
		</div><!-- page-content -->
	</div><!-- page-container -->
	<jsp:include page="/Common/js.jsp"></jsp:include>
</body>
</html>
