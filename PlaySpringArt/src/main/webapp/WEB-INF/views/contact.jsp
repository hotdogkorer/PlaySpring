<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="top.jsp"%> 
<script type="text/javascript">
 $(function(){
   $('body').addClass("contact-page");
 })
</script>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script src="js/map.js"></script>

 <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">오시는길</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li>Contact</li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- entry-header -->
                </div><!-- col-12 -->
            </div><!-- row -->
        </div><!-- container -->
    </div><!-- page-header -->

    <div class="container">
        <div class="main-content">
            <div class="contact-page-map">
                   	 <div id="map_view" style="width:100%; height:660px;"></div>
                <!-- <iframe id="gmap_canvas" src="https://maps.google.com/maps?q=university of san francisco&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe> -->
            </div><!-- map -->

            <div class="contact-details">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/phone.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        Phone
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        +45 677 8993000 223
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->

                        <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/mail.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        E-mail
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        office@template.com
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->

                        <div class="col-12 col-md-6 col-lg-4 mt-5 mt-lg-0">
                            <div class="contact-medium flex align-items-center">
                                <figure class="contact-icon">
                                    <img src="images/place.jpg" alt="phone icon">
                                </figure><!-- phone-icon -->

                                <div class="contact-content">
                                    <div class="entry-title">
                                        Address
                                    </div><!-- entry-title -->
                                    <div class="entry-content">
                                        Main Str. no 45-46, b3, 56832,<br>
                                        Los Angeles, CA
                                    </div><!-- entry-content -->
                                </div><!-- phone-number -->
                            </div><!-- contact-phone -->
                        </div><!-- col-4 -->
                    </div><!-- row -->
                </div>
            </div><!-- contact-details -->

            <div class="get-in-touch">
                <div class="entry-header">
                    <div class="entry-title">
                        <p>JUST THE BEST</p>
                        <h2>오시는길 </h2>
                    </div><!-- entry-title -->
                </div><!-- entry-header -->

            </div><!-- newsletter-subscribe -->
        </div><!-- main-content -->
    </div><!-- container -->
<%@ include file="footer.jsp"%>