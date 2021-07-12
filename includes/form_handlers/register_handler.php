<?php 

// Declaring variables to prevent errors 
    $fname = ""; // First Name
    $lname = ""; // Last Name
    $email = ""; // Email
    $email2 = ""; // Email 2
    $password = ""; // Password 
    $password2 = ""; // Password 2
    $date = ""; // Sign Up Date 
    $error_array = array(); // Holds Error Messages
    

    if(isset($_POST['register_button'])){
        
        // Registration from values

        // First name 
        $fname = strip_tags($_POST['reg_fname']); // Remove html tags 
        $fname = str_replace(' ' , '' , $fname); // Remove Spaces
        $fname = ucfirst(strtolower($fname)); // Uppercase first letter 
        $_SESSION['reg_fname'] = $fname; // Store First Name Into Session Variable 

        // Last name 
        $lname = strip_tags($_POST['reg_lname']); // Remove html tags 
        $lname = str_replace(' ' , '' , $lname); // Remove Spaces
        $lname = ucfirst(strtolower($lname)); // Uppercase first letter 
        $_SESSION['reg_lname'] = $lname; // Store Last Name Into Session Variable 

        
        // Email 
        $email = strip_tags($_POST['reg_email']); // Remove html tags 
        $email = str_replace(' ' , '' , $email); // Remove Spaces
        $email = ucfirst(strtolower($email)); // Uppercase first letter 
        $_SESSION['reg_email'] = $email; // Store email Into Session Variable 

        // Email2 
        $email2 = strip_tags($_POST['reg_email2']); // Remove html tags 
        $email2 = str_replace(' ' , '' , $email2); // Remove Spaces
        $email2 = ucfirst(strtolower($email2)); // Uppercase first letter 
        $_SESSION['reg_email2'] = $email2; // Store email2 Into Session Variable 
    
        // Password One And Tww
        $password = strip_tags($_POST['reg_password']); // Remove html tags 
        $password2 = strip_tags($_POST['reg_password2']); // Remove html tags 
    
        // Date 
        $date = date("Y-m-d"); // Current Date 

        // Check if emails is Match
        if($email == $email2){
            // Check If Email is in valid format 
            if(filter_var($email , FILTER_VALIDATE_EMAIL)){

                $email = filter_var($email , FILTER_VALIDATE_EMAIL);

                // Check IF Email already exisits
                $e_check = mysqli_query($conn , "SELECT email FROM users WHERE email='$email'");

                $num_rows = mysqli_num_rows($e_check);

                if($num_rows > 0){
                    array_push($error_array ,"Your Email is already used<br>");
                }
            
            }else { 
                array_push($error_array ,"Invalid Email format<br>");

            }

        }else { 
            array_push($error_array ,"Your Emails don't match<br>");

        }

        if(strlen($fname) > 25 || strlen($fname) < 2){
            array_push($error_array ,"Your first name must be between 2 and 25 characters<br>");

        }

        if(strlen($lname) > 25 || strlen($lname) < 2){
            array_push($error_array ,"Your last name must be between 2 and 25 characters<br>");

        }

        if($password != $password2){
            array_push($error_array ,"Your passwords don't match<br>");

        }else{
            if(preg_match('/[^A-Za-z0-9]/' , $password)){
                array_push($error_array ,"Your password can only contain english characters or numbers<br>");

            }
        }

        if(strlen($password) > 30 || strlen($password) < 5){ 
            array_push($error_array ,"Your password must be between 5 and 30 characters<br>");

        }

        if(empty($error_array)){

            $password = md5($password);  // Encrypt password before sending to database 

            // Generate username by concatenating first name  and last name  
            $username = $fname . '_' . $lname ; 

            $check_username_query = mysqli_query($conn , "SELECT username FROM users WHERE username='$username'");

            $i = 0;
            
            while(mysqli_num_rows($check_username_query) != 0){

                $i++ ;
                $username = $username . '_' . $i;

                $check_username_query = mysqli_query($conn , "SELECT username FROM users WHERE username='$username'");
            }

            // Profile picture assignment
            $rand = rand(1 , 11) ; // Random number between 1 and 11 
            
            if($rand == 1)
                $profile_pic = "assets/images/profile_pics/defaults/head_alizarin.png";
            elseif($rand == 2)
                $profile_pic = "assets/images/profile_pics/defaults/head_amethyst.png";
            elseif($rand == 3)
                $profile_pic = "assets/images/profile_pics/defaults/head_belize_hole.png";
            elseif($rand == 4)
                $profile_pic = "assets/images/profile_pics/defaults/head_carrot.png";
            elseif($rand == 5)
                $profile_pic = "assets/images/profile_pics/defaults/head_deep_blue.png";
            elseif($rand == 6)
                $profile_pic = "assets/images/profile_pics/defaults/head_emerald.png";
            elseif($rand == 7)
                $profile_pic = "assets/images/profile_pics/defaults/head_red.png";
            elseif($rand == 8)
                $profile_pic = "assets/images/profile_pics/defaults/head_sun_flower.png";
            elseif($rand == 9)
                $profile_pic = "assets/images/profile_pics/defaults/head_turqoise.png";
            elseif($rand == 10)
                $profile_pic = "assets/images/profile_pics/defaults/head_wet_asphalt.png";
            elseif($rand == 11)
                $profile_pic = "assets/images/profile_pics/defaults/head_wisteria.png";
        

            $sql = "INSERT INTO users VALUES('' , '$fname', '$lname', '$username', '$email' , '$password', '$date', '$profile_pic', '0', '0', 'no', ',' )";

            $query = mysqli_query($conn , $sql);

            // You are all set! Goahead and login!
            
            array_push($error_array , "<span style='color: #14C800'>You are all set! Goahead and login!</span><br>") ; 

            // Clear Session Variables
            $_SESSION['reg_fname'] = ""; 
            $_SESSION['reg_lname'] = ""; 
            $_SESSION['reg_email'] = ""; 
            $_SESSION['reg_email2'] = ""; 
        }    

    }

?>