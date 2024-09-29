


<?php
/* require_once('../library/recaptcha/recaptchalib.php');
//  $privatekey = "6Lc3Wn0fAAAAAGJkqQIy_AajximgWi35M1_2lqeS";
//  $resp = recaptcha_check_answer ($privatekey,
                                $_SERVER["REMOTE_ADDR"],
                                $_POST["recaptcha_challenge_field"],
                                $_POST["recaptcha_response_field"]);

  if (!$resp->is_valid) {
    // What happens when the CAPTCHA was entered incorrectly
    die ("The reCAPTCHA wasn't entered correctly. Go back and try it again." .
         "(reCAPTCHA said: " . $resp->error . ")");
  } else {*/




$username = "root";
$password = "Seguro##2022";
$database = "tula";
$mysqli = new mysqli("db", $username, $password, $database);
$cui = $_POST["cui"];

$query = "SELECT * FROM usuario WHERE cui = $cui";
echo "<b> <center>Notas del usuario</center> </b> <br> <br>";

if ($result = $mysqli->query($query)) {

    while ($row = $result->fetch_assoc()) {
  
        $field1name = $row["idusuario"];
        $field2name = $row["cui"];
        $field3name = $row["nota1"];
        $field4name = $row["nota2"];
        $field5name = $row["nota3"];
        echo "<div align = center>";
        echo "<table class = 'default' border='1'>";
        
        echo "<tr>";
        echo "          <td align = center> <strong>id </td>";
        echo "          <td align = center> <strong>CUI</td>";
        echo "          <td align = center> <strong>Nota 1</td>";
        echo "          <td align = center> <strong>Nota 2</td>";
        echo "          <td align = center> <strong>Nota 3</td>";
        echo "</tr>";
        

        echo "<tr>";
        echo "          <td align =center>".$field1name."</td>";
        echo "          <td align =center>".$field2name."</td>";
        echo "          <td align =center>".$field3name."</td>";
        echo "          <td align =center>".$field4name."</td>";
        echo "          <td align =center>".$field5name;"</td>";
        echo "</tr>";
    
        echo "</div>";    
    }

/*freeresultset*/
$result->free();
}
    
 // }
?>