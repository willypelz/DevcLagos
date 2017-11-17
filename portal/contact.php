<?php
//Check if init.php exists
if(!file_exists('core/frontinit.php')){
    header('Location: install/');        
    exit;
}else{
    require_once 'core/frontinit.php';	
}

//Edit Data
if (Input::exists()) {
    if(Token::check(Input::get('token'))){

        $errorHandler = new ErrorHandler;

        $validator = new Validator($errorHandler);

        $validation = $validator->check($_POST, [
            'name' => [
            'required' => true,
            'minlength' => 2
        ],
            'email' => [
            'required' => true,
            'minlength' => 2
        ],
            'message' => [
            'required' => true,
            'minlength' => 2
        ]
        ]);

        if (!$validation->fails()) {


            $subject = 'New message to '.$title.' from '.Input::get('name');
            $sendCopy = trim($_POST['sendCopy']);
            $body = "Name: Input::get('name') \n\nEmail: Input::get('email') \n\nSubject: $subject \n\nMessage: Input::get('message')";
            $headers = 'From: ' .' <'.Input::get('email').'>' . "\r\n" . 'Reply-To: ' . $mail;

            mail($mail, $subject, $body, $headers);

            $noError = true;

        } else {
            $error = '';
            foreach ($validation->errors()->all() as $err) {
                $str = implode(" ",$err);
                $error .= '
	           <div class="alert alert-danger fade in">
	            <a href="#" class="close" data-dismiss="alert">&times;</a>
	            <strong>Error!</strong> '.$str.'
		       </div>
		       ';
            }
        }

    }
}

?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en"> 
    <!--<![endif]-->

    <!-- Include header.php. Contains header content. -->
    <?php include ('includes/template/header.php'); ?> 

    <body class="greybg">

        <!-- Include navigation.php. Contains navigation content. -->
        <?php include ('includes/template/navigation.php'); ?> 

        <!-- ==============================================
Header
=============================================== -->	 
        <header class="header-contact" style="
                                              background:  linear-gradient(
                                              rgba(34,34,34,0.7), 
                                              rgba(34,34,34,0.7)
                                              ), url('<?php echo $contact_header_img; ?>') no-repeat center center fixed;
                                              background-size: cover;
                                              background-position: center center;
                                              -webkit-background-size: cover;
                                              -moz-background-size: cover;
                                              -o-background-size: cover;
                                              color: #fff;
                                              height: 65vh;
                                              width: 100%;

                                              display: flex;
                                              flex-direction: column;
                                              justify-content: center;
                                              align-items: center;
                                              text-align: center;">
            <div class="container">
                <div class="content">

                    <div class="row">
                        <h1>
                            <?php if($use_icon === '1'): ?>
                            <i class="fa <?php echo $site_icon; ?>"></i>
                            <?php endif; ?>  <?php echo $lang['contact']; ?></h1>
                        <p><?php echo $contact_top_title; ?></p>
                    </div><!-- /.row -->

                    <div class="row location">
                        <div class="col-lg-4 text-center">
                            <i class="fa fa-map-marker fa-1x"></i>
                            <p><?php echo $contact_location; ?></p>
                        </div><!-- /.col-lg-4 -->
                        <div class="col-lg-4">
                            <i class="fa fa-phone fa-1x"></i>
                            <p><?php echo $contact_phone; ?></p>
                        </div><!-- /.col-lg-4 -->
                        <div class="col-lg-4">
                            <i class="fa fa-envelope fa-1x"></i>
                            <p><?php echo $contact_email; ?></p>
                        </div><!-- /.col-lg-4 -->
                    </div><!-- /.row -->

                </div><!-- /.content -->
            </div><!-- /.container -->
        </header><!-- /header -->

        <!-- ==============================================
Map Section
=============================================== -->
        <div class="map">
            <div class="container-fluid">
                <div class="row">
                    <?php echo $contact_map; ?>
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div><!-- /.map -->

        <!-- ==============================================
Contact Section
=============================================== -->	  	 
        <section class="contact">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12">
                        <?php if(isset($hasError)) { //If errors are found ?>
                        <div class="alert alert-danger fade in">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong><?php echo $lang['hasError']; ?></strong> <?php echo $lang['has_Error']; ?>
                        </div>
                        <?php } ?>

                        <?php if(isset($noError) && $noError == true) { //If email is sent ?>
                        <div class="alert alert-success fade in">
                            <a href="#" class="close" data-dismiss="alert">&times;</a>
                            <strong><?php echo $lang['noError']; ?></strong> <?php echo $lang['updated_success']; ?></strong>
                    </div>
                    <?php } ?>

                    <?php if (isset($error)) {
    echo $error;
} ?>
                </div>	   	

                <div class="text-center">
                    <h3><?php echo $lang['have']; ?> <?php echo $lang['more']; ?> <?php echo $lang['questions']; ?></h3>
                    <hr class="mint">
                    <p class="top-p"><?php echo $contact_top_title; ?></p>
                </div>

                <!-- The contactform -->
                <form method="post" id="contactform">
                    <fieldset>
                        <div class="col-lg-6">
                            <!-- Name -->
                            <label for="name" accesskey="U"><i class="fa fa-user"></i></label>
                            <input name="name" type="text" id="name" size="30" value="" />

                            <!-- Email -->
                            <label for="email" accesskey="E"><i class="fa fa-envelope-o"></i></label>
                            <input name="email" type="text" id="email" size="30" value="" />

                        </div>
                        <div class="col-lg-6">
                            <!-- Comments / Message -->
                            <label for="comments" accesskey="C"><i class="fa fa-comment"></i></label>
                            <textarea name="message" id="comments"></textarea>

                        </div>
                        <div class="col-lg-12 text-center">
                            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>" />
                            <button type="submit" class="kafe-btn kafe-btn-mint full-width">Submit</button>
                        </div>
                    </fieldset>
                </form>		

            </div><!-- /.row -->
            </div><!-- /.container -->
        </section><!-- /section -->

    <!-- Include footer.php. Contains footer content. -->
    <?php include ('includes/template/footer.php'); ?> 

    <a id="scrollup">Scroll</a>

    <!-- ==============================================
Scripts
=============================================== -->

    <!-- jQuery 2.1.4 -->
    <script src="assets/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.6 JS -->
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- Kafe JS -->
    <script src="assets/js/kafe.js" type="text/javascript"></script>

    </body>
</html>
