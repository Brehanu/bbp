<!DOCTYPE html>
<%@page import="bean.BlogBean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.util.List"%>
<%@page import="data.BlogsDAO"%>
<html lang="en">

<head>

<link rel="stylesheet" href="dist/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="dist/css/bootstrap-theme.min.css">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="dist/js/jquery-2.1.0.js"></script>
<script src="dist/js/bootstrap.js"></script>
</head>

<body style="background-color: #DAD8D8; font-family: Times New Roman;">





	<div class="container" style="background-color: white">
		<!-- ============================header part starts=========================== -->

		<div class="row">

			<div class="col-md-12" style="background-color: white">
				<nav class="navbar navbar-inverse" role="navigation">

					<div class="collapse navbar-collapse navbar-ex1-collapse">
						<ul class="nav navbar-nav">
							<li><a href=""><i class="glyphicon glyphicon-home"></i><b>
										Home</b></a></li>
							<li><a href=""><i class="glyphicon glyphicon-user"></i>
									About</a></li>
							<li><a href="">Page 2</a></li>


							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><i
									class="glyphicon glyphicon-align-justify"></i> Blogs <b
									class="caret"></b></a>

								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
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
		</div>


		<!-- ============================body part starts=========================== -->

		<div class="row">


			<div class="col-xs-9 col-md-9" style="background-color: white">
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7DiT5j27ctuyRCpJfFIW63gfDCynXUMm41lNEMYCykFNyAQ4I"
					class="img-responsive img-circle" alt="Responsive image">
			</div>
			<div class="col-xs-3 col-md-3" style="background-color: white;">
				<a data-toggle="modal" role="button" class="btn"
					href="#messageModal"><h4>
						<span class="label label-primary"><i
							class="glyphicon glyphicon-envelope"></i> Contact</span>
					</h4></a>


			</div>

		</div>



		<div class="row">
			<div class="col-md-9" style="background-color: white">



				<%
				    List<BlogBean> blogs = BlogsDAO.getAllBlogs();
				    int numberOfBlogs = blogs.size();
				%>



				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background: none; background-color: black">
							<h3 class="panel-title" style="color: green">
								<%
								    out.write(blogs.get(0).getTitle());
								%><a data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"> <b><i>...Read
											details ...</i> </b> <i class="glyphicon glyphicon-hand-down"></i>
								</a>
							</h3>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">


								</br>
								<p align="justify">
									<%
									    out.write(blogs.get(0).getContent());
									   int blogId=blogs.get(0).getBlogId();
									%>
								</p>
								</br> </br>
								<div>

									<div class="btn-group">
										<button type="button" class="btn btn-default btn-xs"  id="<%=blogId%>">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-thumbs-up" ></a>
											Like
										</button>
										<button type="button" class="btn btn-default btn-xs">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-share-alt"></a>
											Share
										</button>
										<button type="button" class="btn btn-default btn-xs">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-comment"></a>
											Comment
										</button>


									</div>

									</br> </br>
									<ul class="nav nav-pills nav-stacked">
										<li><a style="background-color: #DCDADB"> <span
												class="badge " style="color: white; background-color: black"><%=blogs.get(0).getLikeCount()%></span>
												Likes <span class="badge "
												style="color: white; background-color: black"><%=blogs.get(0).getShareCount()%></span>
												Shares <span class="badge "
												style="color: white; background-color: black"><%=blogs.get(0).getCommentCount()%></span>
												Comments

										</a></li> ...
									</ul>

									</br>
									<div></div>
									Comment on this topic....
									<ul class="pager">
										<li><a href="#"><i
												class="glyphicon glyphicon-arrow-left"></i> Previous</a></li>
										<li><a href="#">More comments <i
												class="glyphicon glyphicon-arrow-right"></i></a></li>
									</ul>
									</br> </br>
									<div class="well">
										<h5>
											<i class="glyphicon glyphicon-pencil"></i> Post a comment:
										</h5>
										<form role="form" action="/pages/createblog.cmd" method="post">
											<div class="form-group">
												<textarea class="form-control" rows="3" name="blogcontent"></textarea>
											</div>
											<button class="btn btn-primary btn-sm" type="submit">Post</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>

					<%
					    for (int x = 1; x < numberOfBlogs; x++) {
					        String id = "collapse" + x;
					%>
					<div class="panel panel-default">
						<div class="panel-heading"
							style="background: none; background-color: black;">
							<h4 class="panel-title" style="color: green">
								<b>
									<%
									    out.write(blogs.get(x).getTitle());
									%>
								</b> <a data-toggle="collapse" data-parent="#accordion"
									href="<%='#' + id%>"> <b><i class="">...Read
											details... </i></b><i class="glyphicon glyphicon-hand-down"></i>
								</a>
							</h4>


						</div>
						<div id="<%=id%>" class="panel-collapse collapse">
							<div class="panel-body">
								<p align="justify">
									<%
									    out.write(blogs.get(x).getContent());
									%>
								</p>
								<div>

									<div class="btn-group">
										<button type="button" class="btn btn-default btn-xs">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-thumbs-up"></a>
											Like
										</button>
										<button type="button" class="btn btn-default btn-xs">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-share-alt"></a>
											Share
										</button>
										<button type="button" class="btn btn-default btn-xs">
											<a class="btn btn-info btn-xs  glyphicon glyphicon-comment"></a>
											Comment
										</button>


									</div>

									</br> </br>
									<ul class="nav nav-pills nav-stacked">
										<li><a style="background-color: #DCDADB"> <span
												class="badge " style="color: white; background-color: black"><%=blogs.get(x).getLikeCount()%></span>
												Likes <span class="badge "
												style="color: white; background-color: black"><%=blogs.get(x).getShareCount()%></span>
												Shares <span class="badge "
												style="color: white; background-color: black"><%=blogs.get(x).getCommentCount()%></span>
												Comments

										</a></li> ...
									</ul>

									</br>
									<div></div>
									Comment on this topic....
									<ul class="pager">
										<li><a href="#"><i
												class="glyphicon glyphicon-arrow-left"></i> Previous</a></li>
										<li><a href="#">More comments <i
												class="glyphicon glyphicon-arrow-right"></i></a></li>
									</ul>
									</br> </br>
									<div class="well">
										<h5>
											<i class="glyphicon glyphicon-pencil"></i> Post a comment:
										</h5>
										<form role="form" action="/pages/createblog.cmd" method="post">
											<div class="form-group">
												<textarea class="form-control" rows="3" name="blogcontent"></textarea>
											</div>
											<button class="btn btn-primary btn-sm" type="submit">Post</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<%
					    }
					%>

				</div>




















			</div>



			<div class="col-md-3" style="background-color: white">

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

			</div>
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
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">
							<i class="glyphicon glyphicon-arrow-right"></i> Send
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
   $(document).ready(function(){
	   
	   $( '#<%=blogId%>' ).click(function() {		  
		   
		 $.post( '/pages/addBlogLike.cmd', { blogId: '<%=blogId%>' } );
		
		 alert("Like submittedd");
		   
		 });
   });

</script>
</body>
</html>