<title>Excel Uploading PHP</title>
<head>	
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
</head>
<body>
<div class="container">
	<h1>Upload Register</h1>
	<form method="POST" action="excelUpload.php" enctype="multipart/form-data">
		<div class="form-group">
			<label>Upload Excel File</label>
			<input type="file" name="file" class="form-control">
		</div>
		<div class="form-group">
			<button type="submit" name="Submit" class="btn btn-success">Upload</button>
		</div>
		
	</form>
</div>

<div class="container">
	<h1>Upload Events</h1>
	<form method="POST" action="excelUploadevent.php" enctype="multipart/form-data">
		<div class="form-group">
			<label>Upload Excel File</label>
			<input type="file" name="file" class="form-control">
		</div>
		<div class="form-group">
			<button type="submit" name="Submit" class="btn btn-success">Upload</button>
		</div>
		
	</form>
</div>

