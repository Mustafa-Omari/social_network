<?php 

if(isset($_POST['login_button'])){

    $em = filter_var($_POST['log_email'] , FILTER_SANITIZE_EMAIL); // Sanitize email 

    $_SESSION['log_email'] = $em; // Sotre email into session variable 
    $password = md5($_POST['log_password']);

    $sql2 = "SELECT * FROM users WHERE email='$em' AND password='$password'";
    $check_database_query = mysqli_query($conn , $sql2);
    $check_login_query = mysqli_num_rows($check_database_query);

    if($check_login_query == 1 ){
        $row = mysqli_fetch_array($check_database_query);
        $username = $row['username']; 

        $user_closed_query = mysqli_query($conn , "SELECT * FROM users WHERE email='$em' AND password='$password'");
        if(mysqli_num_rows($user_closed_query) == 1){
            $reopen_acount = mysqli_query($conn , "UPDATE users SET user_closed='no' WHERE email='$em'");
        }

        $_SESSION['username'] = $username;
        header("Location: index.php");
        exit();
    }else{
        array_push($error_array , "Email or Password was incorrect<br>");
    }

    
}


?>