<title>Telecapacitación</title>
<head>	
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
</head>
<body>
<div class="container">
	<h1>Busqueda de notas</h1>
	<form method="POST" action="controller/showinfo.php" enctype="multipart/form-data" >
		<div class="form-group">
			<label>Ingrese su DPI</label>
			<input  name="cui" class="form-control" requiered pattern="[0-9]{13}"
						oninvalid="setCustomValidity('El DPI debe tener 13 digitos')"
                     	oninput="setCustomValidity('')" /><br />
		</div>
		<div class="form-group">
			<button type="submit" name="Submit" class="btn btn-success">Buscar</button>
		</div>
		<?php
          require_once('library/recaptcha/recaptchalib.php');
          $publickey = "6Lc3Wn0fAAAAAApxUTMuDrrO-n273zmmbCYXsSpq"; // you got this from the signup page
          echo recaptcha_get_html($publickey);
        ?>

	</form>
</div>

</body>
