<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Online Shopping</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
       
       <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('Account Created Successfully');</script>
       <%}%>
    
    
       <%@ include file="connect.jsp" %>
       <%@ page import="org.bouncycastle.util.encoders.Base64"%>

        <%
       String user=session.getAttribute("user").toString();
       %>
          
                    
    
        <div class="main">
        <div class="header">
        <div class="header_resize">

        <div class="logo">
        <h1 style="margin-right:-300%">Online Shopping</h1>
        </div>
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="userhome.jsp"><span>Home </span></a></li>
        <li class="active"><a href="#.jsp"><%=user%></a></li>
        <li><a href="user.jsp">Logout</a></li>
        </ul>
        </div>
        <div class="clr"></div>
        <div class="slider">
        <div id="coin-slider"> 
        <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
        </div>
        <div class="clr"></div>
        </div>
        </div>
        <div class="content">
        <div class="content_resize">
        <div class="mainbar">
        <div class="article">
           
        <br/>
        <p align="justify">
        <center><p><font color="black" size="5"> User Bank Account Creation</font></p></center>
        <form action="addacountdetailsact.jsp" method="post">
        <center><table width="421">
        <tr>
        <td width="91" height="43"><font color="black">User Name </td>
        <td width="218"><input id="username" name="username" value="<%=user%>" readonly="" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Branch </td>
        <td width="218"><input type="text" id="branch" name="branch" required="" placeholder="Branch" /></td>
        </tr>
        <tr>
        <td height="43"><font color="black"> Email ID</td>
        <td><input id="email" name="email" required="" placeholder="Email ID"/></td>
        </tr>

        <tr>
        <td height="65"><font color="black">Address</td>
        <td><textarea id="address" name="address" rows="3" cols="21" required=""></textarea></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Mobile Number </td>
        <td><input id="mobile" name="mobile" required="" placeholder="Mobile Number"/></td>
        </tr>
        <tr>
        <td height="43"><font color="black">Amount </td>
        <td><input id="amoount" name="amount" required="" placeholder="Amount"/></td>
        </tr>

        <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="Create Account" />
        </p>
        <div align="right">
        </div></td>
        </tr>
        </table>
        </form>
        </p>
    
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">  
        
        <h2 class="star"><span>User</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="managebankacount.jsp">Manage Bank Account</a></li>
        <li><a href="searchproducts.jsp">Search Products</a></li>
        <li><a href="viewrecommends.jsp">View Recommended Products</a></li>
        <li><a href="viewcartproducts.jsp">Purchase Cart Products</a></li>
        <li><a href="viewpurchasedproducts.jsp">My Purchased Products</a></li>
        <li><a href="user.jsp">Logout</a></li>
        </ul>
        </div> 
        </div>
        <div class="clr"></div>
        </div>
        </div>

        <div class="footer">
        <div class="footer_resize">
         
        <div style="clear:both;"></div>
        </div>
        </div>
        </div>
        
</body>
</html>
