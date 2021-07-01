
<?php
    session_start();
    require_once('routes/routes.php');

    include_once("public/index.html");
    
    // Função usada para debug
    function debug($param){
        echo json_encode($param);
    }

    function redirect($location, $message = null){
        if(!is_null($message)){
            $_SESSION['message'] = $message;
        }
         //echo '<script>window.location.href = "https://carsystemweb.000webhostapp.com'.$location.'";</script>';

        header("Location: " .$location);
        // exit();
        
    }

?>

