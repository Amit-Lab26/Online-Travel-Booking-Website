<%-- 
    Document   : FeedBackForm
    Created on : Feb 26, 2020, 4:17:53 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header><jsp:include page="nav.jsp" /></header>
<html>
    <head>
        <title>Feedback</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>

    <body style="background-image: url(image/IMG_20180226_103035.jpg);background-size: cover;">
        <h1 align="center" size="24"  style="color:white">Feedback</h1>
        <form action="FeedBack_sear" method="POST">
                    
              
            <div align="center">   
<div style="background-color: windowframe; opacity: 0.7;
              width: 450px;border-radius: 20px;"align="center">
            <p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 10px;margin-top: 5px;">Email</p>
            <p><input name="fusremail" style="border-radius: 5px;width: 70%;height: 40px;
                 background-color: white;opacity: 0.8;font-size: 20px; margin-left: 5px;
                  color: black;" />
                 <p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 10px;margin-top: 5px;">Rate Website</p>
            <p><Select name="rate" type=number rows="10"cols="10" style=" margin-left: 5px;
                         border-radius: 5px;margin-right:10px ;height:40px;width: 85%;
                         background-color: white;opacity: 0.8;font-size: 20px;
                         color: black;" >
                    <option disabled="" selected="" >Click to Rate</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
            </select>
                
            <p style="color: darkblue;opacity: 0.9;font-size: 25px;margin-top: 10px;margin-top: 5px;">Review</p>
            <p><textarea name="Feedback" rows="10"cols="10" style=" margin-left: 5px;
                         border-radius: 5px;margin-right:10px ;height:200px;width: 85%;
                         background-color: white;opacity: 0.8;font-size: 20px;
                         color: black;" /></textarea>

              <center>
<input type="Submit" value="Submit" 
style="border-radius: 20px;width: 40%;height: 40px;background-color: darkblue;
opacity: 0.8;font-size: 20px; margin-top: 5px;color: white;">
</center>
	</div>
            </div>
         
        </form>
    </body>
    <footer><jsp:include page="footer.jsp" /></footer>
</html>
 
                                   
   