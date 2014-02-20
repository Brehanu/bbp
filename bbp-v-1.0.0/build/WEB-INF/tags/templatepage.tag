<%@tag description="Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true"%>
<%@attribute name="footer" fragment="true"%>

<!DOCTYPE html>
<html lang="en">

<head>

<link rel="stylesheet" href="../dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="../dist/css/bootstrap-theme.min.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="../dist/js/jquery-2.1.0.js"></script>
<script src="../dist/js/bootstrap.js"></script>
</head>

<body style="background-color: #DAD8D8; font-family: Times New Roman;">





	<div class="container" style="background-color: white" align="justify">
		<!-- ============================navigation part starts here=========================== -->

		<div class="row">

			<div class="col-md-12" style="background-color: white">
				<nav class="navbar navbar-inverse" role="navigation">

					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href="home.jsp"><i
									class="glyphicon glyphicon-home"></i><b> Home</b></a></li>
							<li><a href="about.jsp"><i
									class="glyphicon glyphicon-user"></i> About</a></li>
							<li><a href="page2.jsp">Page 2</a></li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><i
									class="glyphicon glyphicon-align-justify"></i> Blogs <b
									class="caret"></b></a>

								<ul class="dropdown-menu">
									<li><a href="fashion.jsp">Fashion</a></li>
									<li><a href="cultural.jsp">Culture</a></li>
									<li><a href="social_issues.jsp">Social issues</a></li>
									<li class="divider"></li>
									<li><a href="other_issues.jsp">Other issues</a></li>
								</ul></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Dropdown <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>

							<li><p class="navbar-text"
									style="color: green; font-weight: bold">Signed in as Brata</p></li>

							<li><a data-toggle="modal" role="button" class="btn"
								href="#messageModal"><i class="glyphicon glyphicon-envelope"></i>
									Contact </a></li>

						</ul>

						<div class="col-sm-4 col-md-4 pull-right">
							<form class="navbar-form" role="search">
								<div class="input-group">
									<input type="text" class="form-control"
										placeholder="Search a topic" name="srch-term" id="srch-term">
									<div class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
							</form>
						</div>

					</div>

				</nav>
			</div>

			<div class="modal fade" id="messageModal" tabindex="-1" role="dialog">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title">Message</h4>
						</div>
						<div class="modal-body">
							<form role="form">
								<div class="form-group">
									<!--  <label for="exampleInputEmail1">Name</label> -->
									<input type="text" class="form-control" id="exampleInputEmail1"
										placeholder="Enter name">
								</div>
								<div class="form-group">
									<!-- <label for="exampleInputPassword1">Email</label> -->
									<input type="email" class="form-control"
										id="exampleInputPassword1" placeholder="Enter email">
								</div>
								<div class="form-group ">
									<textarea class="form-control" onclick="this.value" rows="4"
										placeholder="Enter message..."></textarea>
								</div>

							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">
								<i class="glyphicon glyphicon-arrow-right"></i> Send
							</button>
						</div>
					</div>
				</div>
			</div>


		</div>





		<!-- ============================navigation part ends here=========================== -->

		



		<div class="row">

			<div class="col-xs-3 col-md-3" style="background-color: white">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7DiT5j27ctuyRCpJfFIW63gfDCynXUMm41lNEMYCykFNyAQ4I"
					class="img-responsive img-circle" alt="Responsive image">
			</div>
			<div class="col-xs-6 col-md-6" style="background-color: white">
				<p align="justify">
					</br>
				<h3>Brief description of this site</h3>
				</br>Social media refers to interaction among people in which they
				create, share, and/or exchange information and ideas in virtual
				communities and networks.[1] Andreas Kaplan and Michael Haenlein
				define social media as "a group of Internet-based applications that
				build on the ideological and technological foundations of Web 2.0,
				and that allow the creation and exchange of user-generated
				content."[2] Furthermore, social media depend on mobile and
				web-based technologies to create highly interactive platforms
				through which individuals and communities share, co-create, discuss,
				and modify user-generated content. They introduce substantial and
				pervasive changes to communication between organizations,
				communities, and individuals.[3]
				</p>
			</div>
			<div class="col-xs-3 col-md-3" style="background-color: white;">
				<a data-toggle="modal" role="button" class="btn"
					href="#messageModal"><h4>
						<span class="label label-primary"><i
							class="glyphicon glyphicon-envelope"></i> Contact</span>
					</h4></a>


			</div>

		</div>



<!-- ============================body part starts=========================== -->
		</br>
		<div class="row">
		
			<div id="body" class="col-md-9">
				<jsp:doBody />
			</div>
			
			
			<div class="col-md-3">
				<div class="panel-group" id="accordion_side">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion_side"
									href="#collapseOne_side"> <b>Recent topics</b>
								</a>
							</h4>
						</div>
						<div id="collapseOne_side" class="panel-collapse collapse in">
							<div class="panel-body">
								<a href="">Recent topic 1</a></br> <a href="">Recent topic 2</a></br> <a
									href="">Recent topic 3</a></br>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion_side"
									href="#collapseTwo_side"> <b> Popular topics</b>
								</a>
							</h4>
						</div>
						<div id="collapseTwo_side" class="panel-collapse collapse">
							<div class="panel-body">

								<a href="">Popular topic 1</a></br> <a href="">Popular topic 2</a></br> <a
									href="">Popular topic 3</a></br>
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion_side"
									href="#collapseThree_side"> <b> Archive </b>
								</a>
							</h4>
						</div>
						<div id="collapseThree_side" class="panel-collapse collapse">
							<div class="panel-body">...</div>
						</div>
					</div>
				</div>
			
			
			<div class="panel-group" id="accordion_side_2">	
			<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion_side_2"
									href="#collapseOne_side_2"> <b>Recent topics</b>
								</a>
							</h4>
						</div>
						<div id="collapseOne_side_2" class="panel-collapse collapse in">
							<div class="panel-body">
								<a href="">Recent topic 1</a></br> <a href="">Recent topic 2</a></br> <a
									href="">Recent topic 3</a></br>
							</div>
						</div>
					</div>
			<%
			 String name="collapseTwo_side_2";
			 for (int x=0;x<10;x++){
			%>	
				
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion_side_2"
									href='<%= "#collapseTwo_side_2"+x%>'> <b>Recent topics</b>
								</a>
							</h4>
						</div>
						<div id='<%= "collapseTwo_side_2"+x%>' class="panel-collapse collapse ">
							<div class="panel-body">
								<a href="">Recent topic 1</a></br> <a href="">Recent topic 2</a></br> <a
									href="">Recent topic 3</a></br>
							</div>
						</div>
					</div>
			<%} %>
				
			</div>
			</div>

		</div>

		<div class="row" style="background-color: #212021">

			<div id="footer" class="col-md-12">
				<h1>Footer area</h1>
			</div>


		</div>






		<%-- ==================================
		<div id="pageheader">
			<jsp:invoke fragment="header" />
		</div>
		<div id="body">
			<jsp:doBody />
		</div>
		<div id="pagefooter">
			<jsp:invoke fragment="footer" />
		</div> --%>

	</div>

</body>
</html>