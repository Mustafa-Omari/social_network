<?php 
    include("includes/header.php");
?>

<div class="main_column column" id="main_column">

    <h4>Friend Requests</h4>

    <?php 

    $query = mysqli_query($conn , "SELECT * FROM friend_requests WHERE user_to='$userLoggedIn'");
    if(mysqli_num_rows($query) == 0){
        echo "You dont have friend requests at this time!";
    
    }else { 
        while($row = mysqli_fetch_array($query)){
            $user_from = $row['user_from'];
            $user_from_obj = new User($conn , $user_from);

            $user_obj = new User($conn, $userLoggedIn);
            $profile_pic_req = $user_obj->getProfilePicRequest($user_from);


            echo $user_from_obj->getFirstAndLastName() . " Sent to you a friend request!<br><br>";

            $user_from_friend_array = $user_from_obj->getFriendArray();

            if(isset($_POST['accept_request' . $user_from])) { 
                $add_friend_query = mysqli_query($conn , "UPDATE users SET friend_array=CONCAT(friend_array, '$user_from,') WHERE username='$userLoggedIn'");
                $add_friend_query = mysqli_query($conn , "UPDATE users SET friend_array=CONCAT(friend_array, '$userLoggedIn,') WHERE username='$user_from'");
            
                $delete_query = mysqli_query($conn , "DELETE FROM friend_requests WHERE user_to='$userLoggedIn' AND user_from='$user_from'");
                echo "Now you are a friends!";
                header("Location: requests.php");
            }
            
            if(isset($_POST['ignore_request' . $user_from])) { 
                $delete_query = mysqli_query($conn , "DELETE FROM friend_requests WHERE user_to='$userLoggedIn' AND user_from='$user_from'");
                echo "Request ignored!";
                header("Location: requests.php");
            }

            ?>
                <form action="requests.php" method="POST">

                        <img src="<?php echo $profile_pic_req; ?>" class='profile_pic_request'>

                        <input type="submit" name="accept_request<?php echo $user_from; ?>" id="accept_button" value="Accept">
                        <input type="submit" name="ignore_request<?php echo $user_from; ?>" id="ignore_button" value="Ignore">
                </form>
            <?php 


        }
    }
    
    ?>




</div>