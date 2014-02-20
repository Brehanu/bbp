
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



<body>
	
	<div class="container">
</br></br></br>
		<div class="row">
			<div class="col-md-12">

				<div class="well">
					<h5>
						<i class="glyphicon glyphicon-pencil"></i> Create a post:
					</h5>
					<form role="form" action="/pages/createblog.cmd" method="post">
						<div class="form-group">
							<textarea class="form-control" rows="20" name="blogcontent"></textarea>
						</div>
						<button class="btn btn-primary btn-sm" type="submit">Submit</button>
					</form>
				</div>


			</div>
		</div>


	</div>

</body>
</html>