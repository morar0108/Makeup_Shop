<?php
    ob_start();
    //session_start();
    // include header.php file
    include ('header.php');
    //include("connection.php");
    //include("functions.php");
    //$user_data = check_login($con);
?>


<?php

    /*  include banner area  */
    include ('Template/_banner-area.php');
    /*  include banner area  */

    /*  include top sale section */
    include ('Template/_top-sale.php');
    /*  include top sale section */

    /*  include special price section  */
    include ('Template/_special-price.php');
    /*  include special price section  */

    /*  include banner ads  */
    include ('Template/_banner-adds.php');
    /*  include banner ads  */

    /*  include new phones section  */
    include ('Template/_new-phones.php');
    /*  include new phones section  */

    /*  include blog area  */
    include ('Template/_blogs.php');
    /*  include blog area  */

?>


<?php
    // include footer.php file
    include ('footer.php');
?>