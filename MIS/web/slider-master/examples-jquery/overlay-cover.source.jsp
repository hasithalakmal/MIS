<%-- 
    Document   : overlay-cover.source
    Created on : Jan 17, 2015, 9:02:07 AM
    Author     : Mr.Mic
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.MIS.lib.ProsedeurControls"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Overlay Cover Example - Jssor Slider, Carousel, Slideshow</title>
    </head>
     
      <body style="font-family:Arial, Verdana; background-color:#eee;">
    
        <% 
            ProsedeurControls pc = new ProsedeurControls();
            ResultSet rs = pc.callProc("selectphotoID");
            String [] idnum =new String [20];
            String [] src = new String [20];
            
            int i =0;
            for(int j=0;j<20;j++){
                idnum[j] = "0";
            }
             for(int j=0;j<20;j++){
                src[j] = "http://localhost:8080/MIS/ViewImageGet?id=";
            }
            while(rs.next()){
                idnum [i] = rs.getString(1);
                i++;
            }
            
            for(int j=0;j<20;j++){
               
                src[j]= src[j]+idnum[j];
            }
        %>  
          
          
          
          
    <!-- it works the same with all jquery version from 1.x to 2.x -->
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="../js/jssor.js"></script>
    <script type="text/javascript" src="../js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var options = {
                $DragOrientation: 3                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)
            };
            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
        });
    </script>
    <!-- Jssor Slider Begin -->
    <!-- You can move inline styles to css file or css block. -->
    <div id="slider1_container" style="position: relative; top: 0px; left: 0px; width: 600px;
        height: 300px;">
        <!-- Loading Screen -->
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
            <div style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center;
                top: 0px; left: 0px;width: 100%;height:100%;">
            </div>
        </div>

        <!-- Slides Container -->
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 600px; height: 300px; overflow: hidden;">
          
            <div>  <img u="image" src="<%= src[0] %>"> </div>
            <div>  <img u="image" src="<%= src[1] %>"> </div>
            <div>  <img u="image" src="<%= src[2] %>"> </div>
            <div>  <img u="image" src="<%= src[3] %>"> </div>
            <div>  <img u="image" src="<%= src[4] %>"> </div>
            <div>  <img u="image" src="<%= src[5] %>"> </div>
            <div>  <img u="image" src="<%= src[6] %>"> </div>
            <div>  <img u="image" src="<%= src[7] %>"> </div>
            <div>  <img u="image" src="<%= src[8] %>"> </div>
            <div>  <img u="image" src="<%= src[9] %>"> </div>
            <div>  <img u="image" src="<%= src[10] %>"> </div>
            <div>  <img u="image" src="<%= src[11] %>"> </div>
            <div>  <img u="image" src="<%= src[12] %>"> </div>
            <div>  <img u="image" src="<%= src[13] %>"> </div>
            <div>  <img u="image" src="<%= src[14] %>"> </div>
            <div>  <img u="image" src="<%= src[14] %>"> </div>
            <div>  <img u="image" src="<%= src[15] %>"> </div>
            <div>  <img u="image" src="<%= src[16] %>"> </div>
            <div>  <img u="image" src="<%= src[17] %>"> </div>
            <div>  <img u="image" src="<%= src[18] %>"> </div>
            <div>  <img u="image" src="<%= src[19] %>"> </div>
            
            
            
            
          
           <!-- <div><img u="image" src="../img/landscape/06.jpg" /></div>
            <div><img u="image" src="../img/landscape/07.jpg" /></div>
            <div><img u="image" src="../img/landscape/08.jpg" /></div>  -->
        </div>

        <!-- Cover Begin -->
        <div style="position:absolute;top:-20px;left:-20px;width:50px;height:47px;background-image:url(img/cover/0001-TL.png)"></div>
        <div style="position:absolute;top:-20px;right:-20px;width:50px;height:47px;background-image:url(img/cover/0001-TR.png)"></div>
        <div style="position:absolute;bottom:-20px;left:-20px;width:50px;height:58px;background-image:url(img/cover/0001-BL.png)"></div>
        <div style="position:absolute;bottom:-20px;right:-20px;width:50px;height:58px;background-image:url(img/cover/0001-BR.png)"></div>

        <div style="position:absolute;top:-20px;left:30px;width:540px;height:47px;background-image:url(img/cover/0001-T.png)"></div>
        <div style="position:absolute;bottom:-20px;left:30px;width:540px;height:58px;background-image:url(img/cover/0001-B.png)"></div>
        <div style="position:absolute;top:27px;left:-20px;width:50px;height:235px;background-image:url(img/cover/0001-L.png)"></div>
        <div style="position:absolute;top:27px;right:-20px;width:50px;height:235px;background-image:url(img/cover/0001-R.png)"></div>
        <!-- Cover End -->
        <a style="display: none" href="http://www.jssor.com">Image Slider</a>
    </div>
    
    <!-- Jssor Slider End -->
</body>
    
</html>
