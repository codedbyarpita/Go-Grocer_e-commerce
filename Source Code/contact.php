<?php
include("header.php");
?>

<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Contact</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->

<!-- contact -->
<style>
    .contact-info-frame {
        background-color: black;
        border: 3px solid yellow;
        padding: 20px;
        color: white;
        text-align: center; /* Center align the content */
    }

    .frame {
        max-width: 600px;
        margin: 0 auto; /* Center the frame horizontally */
    }

    .contact-info p {
        margin-bottom: 10px; /* Add space between paragraphs */
    }

    .wthree_contact_info_address li {
        margin-bottom: 5px; /* Add space between list items */
    }

    .w3_agile_social_icons ul {
        padding: 0; /* Remove default padding */
        list-style: none; /* Remove default list style */
    }

    .w3_agile_social_icons ul li {
        display: inline-block; /* Display icons horizontally */
        margin-right: 10px; /* Add space between icons */
    }

    .w3_agile_social_icons ul li a {
        color: white; /* Icon color */
        font-size: 20px; /* Icon size */
    }
</style>

<div class="contact-info-frame">
    <div class="container">
        <div class="frame">
            <h3>Contact Info</h3>
            <div class="contact-info">
                <p>Bazar peth, Gargoti</p>
                <ul class="wthree_contact_info_address">
                    <li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@GO-GROCER.com</a></li>
                    <li><i class="fa fa-phone" aria-hidden="true"></i>+91 8830893445</li>
                </ul>
            </div>
            <div class="w3_agile_social_icons w3_agile_social_icons_contact">
                <ul>
                    <li><a href="#" class="icon icon-cube agile_facebook"></a></li>
                    <li><a href="#" class="icon icon-cube agile_rss"></a></li>
                    <li><a href="#" class="icon icon-cube agile_t"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- //contact -->

<?php
include("footer.php");
?>
