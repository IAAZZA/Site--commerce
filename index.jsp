<%@ page language="java" contentType="text/html "
    %>
        <%@page import="mql.com.*"%>
     <%@page import="mql.com.model.*"%>
      <%@page import="mql.com.util.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8" %>
 
<!DOCTYPE html>
<html lang="zxx">


<head>
      
 
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
       
        <div class="offcanvas__logo">
            <a href="./index.jsp"><img src="img/logo.jpg" alt="" width="353" height="121" ></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            
            
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                     <div class="header__logo">
                        
                   <div class="header__logo3">
                    <a href="./index.jsp"> <img src="img/logo.jpg" alt="" > </a>
                    </div>
                    </div>
                     
                </div>
                <div class="col-xl-6 col-lg-7">
                    <nav class="header__menu">
                           <ul>
                            <li class="active"><a href="./index.jsp">Home</a></li>  
                            <li><a href="shop1.jsp">Shop</a></li>
                            <li><a href="contact.html">Contact</a></li>
                           <li><a href="mon compte.html">Sign Up</a></li>
                            
                                 
                                    
                                    
                                   
                             </ul>
                    </nav>
                </div>
               
            
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
       </div>
    </header>
    <!-- Header Section End -->

    <!-- Categories Section Begin -->
   <section class="banner set-bg" data-setbg="img/banner/banner-1.jpg">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    <div class="banner__item">
                        <div class="banner__text">
                           
                          <h1>  Herbes Aromatiques  الاعشاب العطرية</h1>
                           
                            <a href="shop1.jsp">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            
                            <h1>Grains </h1>
                            <h1> الحبوب</h1>
                            <a href="shop1.jsp">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            
                            <h1>Epices</h1>
                             <h1>التوابل</h1>
                            <a href="shop1.jsp">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    

<!-- Categories Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
     
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>New product</h4>
                </div>
            </div>
               
               
          
            
            <div class="col-lg-8 col-md-8">
              
           
            
                     
					
                <ul class="filter__controls" >
                 
                      <%
				
					CManager dao3 = new CManager();
                    ArrayList<Categorie> cat = dao3.allCategories(); 
					%>
					<%int i=0; for (Categorie c : cat) {i++;%>                            
                             
                
                         <li > <a  href="cats?cat=<%=c.getIdC()%>"> <%=c.getNom()%></a></li><%}%>
                    
                    
                </ul>
            </div>
        </div>
        
        <div class="row property__gallery">
      
        <%
				PManager dao = new PManager();
            ArrayList<Produit>  art = dao.allProduits();%>
            
            <%  int j=0; for (Produit a : art) {j=a.getIdp();%>
    
        
            <div class="col-lg-3 col-md-4 col-sm-6 mix women " class="sil"<%=a.getIdC()%> >
                  <div class="product__item">
                   <div class="product__item__pic set-bg"  data-setbg="img/product/<%=a.getImage()%>">
             
                        <div class="label new">New</div>
                        <ul class="product__hover">
                            <li><a href="img/product/<%=a.getImage()%>" class="image-popup"><span class="arrow_expand"></span></a></li>
                            
                        </ul>
                    </div>

                    <div class="product__item__text">
                        <h6><a href="Shop.jsp"><%=a.getNom()%> </a></h6>
                       
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>

                    </div>
                  </div>  
                </div><%} %>
            </div>
         </div>
    
</section>
<!-- Product Section End -->

<!-- Banner Section Begin -->

<!-- Banner Section End -->

<!-- 

<!-- Discount Section Begin -->

<!-- Discount Section End -->

<!-- Services Section Begin -->

<!-- Services Section End -->

<!-- Instagram Begin -->

<!-- Instagram End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-7">
                <div class="footer__about">
                    <div class="footer__logo">
                    </div>
                    
                   
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-5">
                <div class="footer__widget">
                    <h6>Quick links</h6>
                    <ul>
                 
                        <li><a href="contact.html">Contact</a></li>
                      
                    </ul>
                </div>
            </div>
            <div class="col-lg-2 col-md-3 col-sm-4">
                <div class="footer__widget">
                    <h6>Account</h6>
                    <ul>
                        <li><a href="mon compte.html">My Account</a></li>
                       
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-8 col-sm-8">
                
               
                  
                    <div class="footer__social">
                        <a href="https://www.facebook.com/Minanosarl-114565240415758"><i class="fa fa-facebook"></i></a>
                      
                       
                        <a href="https://www.instagram.com/minanosarl/"><i class="fa fa-instagram"></i></a>
                        
                    </div>

            </div>
        </div>
    
      
        <div class="row">
            <div class="col-lg-12">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <div class="footer__copyright__text">
                </div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/main.js"></script>
</body>

