<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <title>Vtpass.com</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" /> 
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <link href="css/material-kit.css" rel="stylesheet"/>
        <script src="https://sdk.accountkit.com/en_US/sdk.js"></script>
        <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
        <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
        <style type="text/css">
            .btn{   height:70px;
                margin:0 auto; 
                background: linear-gradient(hsla(21, 85%, 51%, 1), hsla(21, 85%, 61%, 1));/* Green */
                border: none;
                color: white; 
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 23px;
                border-radius: 12px;
                box-shadow: 2px 2px 15px -5px hsla(0, 0%, 0%, 1);
            }
            .button:hover{
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
            }

            @media screen and (max-width:768px){
                .header{
                    background-image:url('img/landingsmall.jpg');
                    max-height:100%;
                    max-width: :100%;
                }
                .explore{
                    margin-top:-300px;
                }
                .explorebtn{
                    width: 200px; 
                    margin: 0 auto;
                }
                .socialinkpa{    
                }
                .sociallinks{
                    text-align: center;
                    margin-left:0;
                    padding:0;
                    width:100%;
                    margin-top:-120px;               
                }
                .footertext{
                    margin-top:270px;
                    text-align:center;
                    width:100%;
                }
            }
            @media screen and (min-width:769px){
                .header{
                    background-image: url('img/landing.jpg');
                    max-width:100%;
                    max-height:100%;
                }
                .explore{
                    margin-top:-150px;
                }
                .explorebtn{
                    width: 200px; 
                    margin: 0 auto;
                }
                .sociallinks{
                    margin:  0 auto;                     
                } 
                .footer{
                    text-align:center;
                }
            }
        </style>
    </head>
    <body class="landing-page">
        <div class="wrapper">
            <div class="header" >
                <!-- z-index to make the div show -->
                <div style="text-align: center;   padding: 255px 32px;">
                    <!-- this will be the page where the user will have to decide the way they want to enter the portal  -->
                    <h3 style="color: white;">Login using Email or SMS verification</h3>
                    <a href="#Email" data-rel="popup" style="text-decoration:  none; color: white;" ><div class="btn" ><b >Email</b></div></a>  
                    <a  href="#sms" data-rel="popup" style="text-decoration:  none; color: white;"><div class="btn" ><b >SMS</b></div> </a> 
                </div>               
                <!-- the email modal -->
                <div data-role="popup" id="Email" class="ui-content" style="min-width:250px;">
                    <div>
                        <h3>Login with Email</h3>
                        <label for="email" class="ui-hidden-accessible">Email:</label>
                        <input type="email" name="email" id="email" placeholder="Enter your Email"> 
                        <button onclick="emailLogin();">Login via Email</button> 
                    </div> 
                </div>
                <!-- the sms modal  -->
                <div data-role="popup" id="sms" class="ui-content" style="min-width:250px;">
                    <div>
                        <h3>Login with Phone Number</h3>
                        <label for="code" class="ui-hidden-accessible">Country Code:</label>
                        <input type="text" id="country_code" placeholder="country code" value="+1" />
                        <label for="phone_number" class="ui-hidden-accessible">Phone Number:</label>
                        <input type="text" id="phone_number" placeholder="Enter your Phone Number">
                        <button onclick="smsLogin();">Login via SMS</button> 
                    </div>
                </div>
            </div>
        </div>
        <div class="explore">
            <div class="explorebtn">
            </div>
        </div>
        <div style="text-align: center;">
            <h4>welcome to TechJobPortal </h4>
            <h6>we make the world of technology better</h6>
        </div>    
        <div class="sociallinkpa">
            <div  class="sociallinks">
                <a rel="tooltip" title="Follow us on Twitter" data-placement="bottom" href="https://twitter.com/vtpass.com" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                    <i class="fa fa-twitter"></i>
                </a>
                <a rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/vtpass" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                    <i class="fa fa-facebook-square"></i>
                </a>
                <a rel="tooltip" title="Follow us on Instagram" data-placement="bottom" href="https://www.instagram.com/vtpass.com" target="_blank" class="btn btn-white btn-simple btn-just-icon">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>      
        </div>
        <script>
            //https://developers.facebook.com/docs/accountkit/webjs
            $(".message").append("<p>initialized Account Kit.</p>");

            // initialize Account Kit with CSRF protection
            AccountKit_OnInteractive = function(){
                AccountKit.init(
                    {
                        appId:"128982594452045", 
                        state:"1434c30ac6e25159aab9798db2a77813", 
                        version:"v1.0",
                        fbAppEventsEnabled:true
                    }
                );
            };


            // login callback
            function loginCallback(response) {
                if (response.status === "PARTIALLY_AUTHENTICATED") {
                    var code = response.code;
                    var csrf = response.state;
                    $(".message").append("<p>Received auth token from facebook -  "+ code +".</p>");
                    $(".message").append("<p>Triggering AJAX for server-side validation.</p>");
                    
                    jQuery.ajax({
                        url: 'storesession.php',
                        type: 'POST',
                        data: {
                            code: code,
                        },
                        dataType : 'json',
                        success: function(data, textStatus, xhr) {
                            console.log(data); // do with data e.g success message
                        },
                        error: function(xhr, textStatus, errorThrown) {
                            console.log(textStatus.reponseText);
                        }
                    });
                    
                      $(location).attr('href', 'http://localhost/adminpanelpro/DevcLagos/portal/index.php')

                    //  code this later to store information of users if needed
                    //  $.post("verify.php", { code : code, csrf : csrf }, function(result){
                    //     $(".message").append( "<p>Server response : " + result + "</p>" );
                    // });

                }
                else if (response.status === "NOT_AUTHENTICATED") {
                    // handle authentication failure
                    $(".message").append("<p>( Error ) NOT_AUTHENTICATED status received from facebook, something went wrong.</p>");
                }
                else if (response.status === "BAD_PARAMS") {
                    // handle bad parameters
                    $(".message").append("<p>( Error ) BAD_PARAMS status received from facebook, something went wrong.</p>");
                }
            }


            // phone form submission handler
            function smsLogin() {
                var countryCode = document.getElementById("country_code").value;
                var phoneNumber = document.getElementById("phone_number").value;
                $(".message").append("<p>Triggering phone validation.</p>");
                AccountKit.login(
                    'PHONE', 
                    {countryCode: countryCode, phoneNumber: phoneNumber}, // will use default values if not specified
                    loginCallback
                );
            }


            // email form submission handler
            function emailLogin() {
                var emailAddress = document.getElementById("email").value;
                AccountKit.login(
                    'EMAIL',
                    {emailAddress: emailAddress},
                    loginCallback
                );
            }
            function setSession(variable, value) {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.open("GET", "setSession.php?variable=" + variable + "&value=" + value, true);
                xmlhttp.send();
            }
        </script>
    </body>
</html>
