<%-- 
    Document   : index
    Created on : 25/01/2021, 14:52:42
    Author     : Alexandre
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- SEO Meta Tags -->
        <meta name="description" content="Free mobile app HTML landing page template to help you build a great online presence for your app which will convert visitors into users">
        <meta name="author" content="Inovatik">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content=""/> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta property="og:type" content="article" />

        <!-- Website Title -->
        <title>Plus Cardápios</title>

        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i" rel="stylesheet">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/fontawesome-all.css" rel="stylesheet">
        <link href="css/swiper.css" rel="stylesheet">
        <link href="css/magnific-popup.css" rel="stylesheet">
        <link href="css/styles.css" rel="stylesheet">

        <!-- Favicon  -->
        <link rel="icon" href="images/favicon.png">


        <script type="text/javascript">
            function registrar(txt) {
                let senha = document.getElementById("senha1_reg").value;
                let senha2 = document.getElementById("senha2_reg").value;
                var msg = document.getElementById("cmsgSubmit");
                if (senha == senha2) {
                    if (senha.length >= 8) {
                        document.forms['form_register'].action = txt;
                        document.forms['form_register'].submit();
                    } else {
                        msg.innerText = "Mínimo de 8 caracteres na senha!";
                    }
                } else {
                    msg.innerText = "Oops! Você digitou senhas diferentes!";
                }
            }

            function entrar(txt) {
                document.forms['form_login'].action = txt;
                document.forms['form_login'].submit();

            }

        </script>



    </head>
    <body data-spy="scroll" data-target=".fixed-top">
        <%
            if (session.getAttribute("user_id") != null) {
                response.sendRedirect("cardapio");
            }%>
        <!-- Preloader -->
        <div class="spinner-wrapper">
            <div class="spinner">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
        <!-- end of preloader -->

        <!-- Navbar -->
        <nav class="navbar navbar-expand-md navbar-dark navbar-custom fixed-top">
            <!-- Text Logo - Use this if you don't have a graphic logo -->
            <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Leno</a> -->

            <!-- Image Logo -->
            <a class="navbar-brand logo-image" href="index.jsp"><img src="images/logo.png" alt="alternative"></a> 

            <!-- Mobile Menu Toggle Button -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-awesome fas fa-bars"></span>
                <span class="navbar-toggler-awesome fas fa-times"></span>
            </button>
            <!-- end of mobile menu toggle button -->

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-login">ENTRAR</a>
                        <a class="btn-solid-reg popup-with-move-anim" href="#details-lightbox-register">REGISTRAR</a>
                    </li>  
                </ul>

                <!--
                <span class="nav-item social-icons">
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-facebook-f fa-stack-1x"></i>
                        </a>
                    </span>
                    <span class="fa-stack">
                        <a href="#your-link">
                            <i class="fas fa-circle fa-stack-2x"></i>
                            <i class="fab fa-twitter fa-stack-1x"></i>
                        </a>
                    </span>
                </span> -->
            </div> 

        </nav> <!-- end of navbar -->
        <!-- end of navbar -->

        <!-- Header -->
        <header id="header" class="header">
            <div class="header-content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="text-container">
                                <h1 style="font-size: 42px">CARDÁPIOS <br>PARA <span id="js-rotating"> MERCADOS, ADEGAS, BARES, RESTAURANTES, LANCHONETES</span></h1>
                                <p class="p-large">Tenha o cardápio do seu estabelecimento de forma 100% digital! Nunca ficou tão fácil de compartilhar seus produtos para seus clientes!</p>
                                <a class="btn-solid-lg popup-with-move-anim" href="#details-lightbox-register">REGISTRE-SE</a>
                                <a class="btn-solid-lg page-scroll" href="#features">CARDÁPIO EXEMPLO</a>
                            </div>
                        </div> <!-- end of col -->
                        <div class="col-lg-6">
                            <div class="image-container">
                                <img class="img-fluid" src="images/header-iphone.png" alt="alternative">
                            </div> <!-- end of image-container -->
                        </div> <!-- end of col -->
                    </div> <!-- end of row -->
                </div> <!-- end of container -->
            </div> <!-- end of header-content -->
        </header> <!-- end of header -->
        <!-- end of header -->

        <!-- Statistics -->
        <div class="counter">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Counter -->
                        <div id="counter">
                            <div class="cell">
                                <div class="counter-value number-count" data-count="231">1</div>
                                <p class="counter-info">Contas Criadas</p>
                            </div>
                            <div class="cell">
                                <div class="counter-value number-count" data-count="85">1</div>
                                <p class="counter-info">Itens Cadastrados</p>
                            </div>
                            <div class="cell">
                                <div class="counter-value number-count" data-count="59">1</div>
                                <p class="counter-info">Total de acessos</p>
                            </div>

                        </div>
                        <!-- end of counter -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of counter -->
        <!-- end of statistics -->


        <!-- Features -->
        <div id="features" class="tabs">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Recursos</h2>
                        <div class="p-heading p-large">Saiba mais sobre o que a Plus Cardápios tem a oferecer para impulsionar seu menu! Proporcione uma melhor experiência para seus clientes!</div>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">


                    <!-- Tabs Content-->
                    <div class="tab-content" id="lenoTabsContent">

                        <!-- Tab -->
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
                            <div class="container">
                                <div class="row">

                                    <!-- Icon Cards Pane -->
                                    <div class="col-lg-4">
                                        <div class="card left-pane first">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Web Menu</h4>
                                                    <p>Criamos para você o seu cardápio web para entregar aos seus clientes de forma rápida e fácil! </p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="fas fa-bars"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card left-pane">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Burocracia Zero</h4>
                                                    <p>Aqui é simples de se criar uma conta e começar a montar seu cardápio personalizado logo em seguida!</p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="fas fa-copy"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card left-pane">
                                            <div class="card-body">
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Visual</h4>
                                                    <p>Interface moderna, intuitiva e fácil de se utilizar. Suba o nível do seu negócio!</p>
                                                </div>
                                                <div class="card-icon">
                                                    <i class="fas fa-cogs"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of icon cards pane -->

                                    <!-- Image Pane -->
                                    <div class="col-lg-4">
                                        <img class="img-fluid" src="images/features-iphone-1.png" alt="alternative">
                                    </div>
                                    <!-- end of image pane -->

                                    <!-- Icon Cards Pane -->
                                    <div class="col-lg-4">
                                        <div class="card right-pane first">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="far fa-calendar-check"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Plataforma</h4>
                                                    <p>Plataforma com o melhor funcionamento, nunca te deixando na mão.</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card right-pane">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="fas fa-globe"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Redes Socias</h4>
                                                    <p>Coloque seu cardápio nas redes sociais com um link próprio!</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card right-pane">
                                            <div class="card-body">
                                                <div class="card-icon">
                                                    <i class="fas fa-cube"></i>
                                                </div>
                                                <div class="text-wrapper">
                                                    <h4 class="card-title">Grátis</h4>
                                                    <p>Use todas as funcionabilidades de forma gratuita!</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of icon cards pane -->
                                </div> <!-- end of row -->
                            </div> <!-- end of container -->
                        </div> <!-- end of tab-pane -->
                        <!-- end of tab -->
                    </div> <!-- end of tab-content -->
                    <!-- end of tabs content -->
                </div> <!-- end of row --> 
            </div> <!-- end of container --> 
        </div> <!-- end of tabs -->
        <!-- end of features -->



        <!-- Lightbox -->
        <div id="details-lightbox-login" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-5">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>

                <div class="col-lg-6">
                    <h3>ENTRAR</h3>
                    <hr>
                    <form id="form_login" data-toggle="validator" data-focus="false" method="POST">
                        <div class="form-group">
                            <input type="email" class="form-control-input" name="email">
                            <label class="label-control">E-mail</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" name="senha">
                            <label class="label-control">senha</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <a class="btn-solid-reg" href="#" onclick="entrar('EntrarServlet')">ENTRAR</a>
                        </div>
                        <div class="form-group">
                            <center>
                                <p><a href="">Esqueci minha senha</a></p>
                            </center>
                        </div>                       
                        <div class="form-message">
                            <div id="cmsgSubmit" class="p-small text-center hidden"></div>
                        </div>
                    </form>

                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-register" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-5">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>REGISTRAR</h3>
                    <hr>
                    <form id="form_register" data-toggle="validator" data-focus="false"  method="POST">
                        <div class="form-group">
                            <input type="email" class="form-control-input" name="email">
                            <label class="label-control">E-mail</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" name="senha" id="senha1_reg" maxlength="12">
                            <label class="label-control">Senha</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control-input" id="senha2_reg" size="12">
                            <label class="label-control">Confirmar senha</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <input type="text" class="form-control-input" name="nome">
                            <label class="label-control">Nome</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">
                            <input type="tel" class="form-control-input" maxlength="11" name="telefone">
                            <label class="label-control">Telefone</label>
                            <div class="help-block with-errors"></div>
                        </div>
                        <div class="form-group">                           
                            <a class="btn-solid-reg" href="#" onclick="registrar('CadastrarServlet')">REGISTRAR</a>
                        </div>
                        <div class="form-message">
                            <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                        </div>

                    </form>

                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-1" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-6">
                    <img class="img-fluid" src="images/details-lightbox-1.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>Goals Setting</h3>
                    <hr>
                    <p>Leno can easily help you track your personal development evolution if you take the time to set it up.</p>
                    <h4>User Feedback</h4>
                    <p>This is a great app which can help you save time and make your live easier. And it will help improve your productivity levels.</p>
                    <p>You should definitely give it a try when you need a good app.</p>
                    <table>
                        <tr><td class="icon-cell"><i class="fas fa-desktop"></i></td><td>Responsive layout</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-bullhorn"></i></td><td>Distinctive CTAs</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-image"></i></td><td>Image gallery slider</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-envelope"></i></td><td>Contact forms</td></tr>
                        <tr><td class="icon-cell"><i class="fab fa-font-awesome-flag"></i></td><td>FontAwesome icons</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-code"></i></td><td>Well-structured code</td></tr>
                    </table>
                    <a class="btn-solid-reg" href="#your-link">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#details">BACK</a> 
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->

        <!-- Lightbox -->
        <div id="details-lightbox-2" class="lightbox-basic zoom-anim-dialog mfp-hide">
            <div class="row">
                <button title="Close (Esc)" type="button" class="mfp-close x-button">×</button>
                <div class="col-lg-6">
                    <img class="img-fluid" src="images/details-lightbox-2.png" alt="alternative">
                </div>
                <div class="col-lg-6">
                    <h3>Calendar Input</h3>
                    <hr>
                    <p>The calendar input function enables the user to setup training, meditation and relaxation sessions with ease.</p>
                    <h4>User Feedback</h4>
                    <p>This is a great app which can help you save time and make your live easier. And it will help improve your productivity levels.</p>
                    <p>You should definitely give it a try when you need a good app.</p>
                    <table>
                        <tr><td class="icon-cell"><i class="fas fa-desktop"></i></td><td>Responsive layout</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-bullhorn"></i></td><td>Distinctive CTAs</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-image"></i></td><td>Image gallery slider</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-envelope"></i></td><td>Contact forms</td></tr>
                        <tr><td class="icon-cell"><i class="fab fa-font-awesome-flag"></i></td><td>FontAwesome icons</td></tr>
                        <tr><td class="icon-cell"><i class="fas fa-code"></i></td><td>Well-structured code</td></tr>
                    </table>
                    <a class="btn-solid-reg" href="#your-link">DETAILS</a> <a class="btn-outline-reg mfp-close as-button" href="#details">BACK</a>
                </div>
            </div> <!-- end of row -->
        </div> <!-- end of lightbox-basic -->
        <!-- end of lightbox -->
        <!-- end of details lightboxes -->


        <!-- Screenshots -->
        <div class="slider-2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                        <!-- Image Slider -->
                        <div class="slider-container">
                            <div class="swiper-container image-slider">
                                <div class="swiper-wrapper">

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-1.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-1.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-2.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-2.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-3.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-3.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-4.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-4.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-5.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-5.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-6.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-6.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-7.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-7.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-8.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-8.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-9.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-9.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                    <!-- Slide -->
                                    <div class="swiper-slide">
                                        <a href="images/screenshot-10.png" class="popup-link" data-effect="fadeIn">
                                            <img class="img-fluid" src="images/screenshot-10.png" alt="alternative">
                                        </a>
                                    </div>
                                    <!-- end of slide -->

                                </div> <!-- end of swiper-wrapper -->

                                <!-- Add Arrows -->
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                                <!-- end of add arrows -->

                            </div> <!-- end of swiper-container -->
                        </div> <!-- end of slider-container -->
                        <!-- end of image slider -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of slider-2 -->
        <!-- end of screenshots -->

















        <!-- Contact -->
        <div id="contact" class="form">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>CONTACT</h2>
                        <ul class="list-unstyled li-space-lg">
                            <li class="address">Don't hesitate to give us a call or just use the contact form below</li>
                            <li><i class="fas fa-map-marker-alt"></i>22 Innovative, San Francisco, CA 94043, US</li>
                            <li><i class="fas fa-phone"></i><a class="blue" href="tel:003024630820">+81 720 2212</a></li>
                            <li><i class="fas fa-envelope"></i><a class="blue" href="mailto:office@leno.com">office@leno.com</a></li>
                        </ul>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
                <div class="row">
                    <div class="col-lg-6 offset-lg-3">

                        <!-- Contact Form -->
                        <form id="contactForm" data-toggle="validator" data-focus="false">
                            <div class="form-group">
                                <input type="text" class="form-control-input" id="cname" required>
                                <label class="label-control" for="cname">Name</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control-input" id="cemail" required>
                                <label class="label-control" for="cemail">Email</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control-textarea" id="cmessage" required></textarea>
                                <label class="label-control" for="cmessage">Your message</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group checkbox">
                                <input type="checkbox" id="cterms" value="Agreed-to-Terms" required>I have read and agree to Leno's stated conditions in <a href="privacy-policy.html">Privacy Policy</a> and <a href="terms-conditions.html">Terms Conditions</a> 
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control-submit-button">SUBMIT MESSAGE</button>
                            </div>
                            <div class="form-message">
                                <div id="cmsgSubmit" class="h3 text-center hidden"></div>
                            </div>
                        </form>
                        <!-- end of contact form -->

                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of form -->
        <!-- end of contact -->


        <!-- Footer -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="footer-col">
                            <h4>About Leno</h4>
                            <p>We're passionate about creating the best mobile apps for personal development</p>
                        </div>
                    </div> <!-- end of col -->
                    <div class="col-md-4">
                        <div class="footer-col middle">
                            <h4>Important Links</h4>
                            <ul class="list-unstyled li-space-lg">
                                <li class="media">
                                    <i class="fas fa-square"></i>
                                    <div class="media-body">Our business partners <a class="turquoise" href="#your-link">startupguide.com</a></div>
                                </li>
                                <li class="media">
                                    <i class="fas fa-square"></i>
                                    <div class="media-body">Read our <a class="turquoise" href="terms-conditions.html">Terms & Conditions</a>, <a class="turquoise" href="privacy-policy.html">Privacy Policy</a></div>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end of col -->
                    <div class="col-md-4">
                        <div class="footer-col last">
                            <h4>Social Media</h4>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-facebook-f fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-twitter fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-google-plus-g fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-instagram fa-stack-1x"></i>
                                </a>
                            </span>
                            <span class="fa-stack">
                                <a href="#your-link">
                                    <i class="fas fa-circle fa-stack-2x"></i>
                                    <i class="fab fa-linkedin-in fa-stack-1x"></i>
                                </a>
                            </span>
                        </div> 
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </div> <!-- end of footer -->  
        <!-- end of footer -->


        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <p class="p-small">Copyright © Leno - Mobile App Landing Page Template by <a href="http://www.inovatik.com">Inovatik</a></p>
                    </div> <!-- end of col -->
                </div> <!-- enf of row -->
            </div> <!-- end of container -->
        </div> <!-- end of copyright --> 
        <!-- end of copyright -->


        <!-- Scripts -->
        <script src="js/jquery.min.js"></script> <!-- jQuery for Bootstrap's JavaScript plugins -->
        <script src="js/popper.min.js"></script> <!-- Popper tooltip library for Bootstrap -->
        <script src="js/bootstrap.min.js"></script> <!-- Bootstrap framework -->
        <script src="js/jquery.easing.min.js"></script> <!-- jQuery Easing for smooth scrolling between anchors -->
        <script src="js/swiper.min.js"></script> <!-- Swiper for image and text sliders -->
        <script src="js/jquery.magnific-popup.js"></script> <!-- Magnific Popup for lightboxes -->
        <script src="js/morphext.min.js"></script> <!-- Morphtext rotating text in the header -->
        <script src="js/validator.min.js"></script> <!-- Validator.js - Bootstrap plugin that validates forms -->
        <script src="js/scripts.js"></script> <!-- Custom scripts -->

        ${registrar_msg}

    </body>
</html>