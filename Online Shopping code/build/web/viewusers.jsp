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
       if (request.getParameter("msg") != null) {%>
       <script>alert('Activated..!');</script>
       <%}%>
        <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('DeActivated..!');</script>
       <%}%>
    
        <div class="main">
        <div class="header">
        <div class="header_resize">

        <div class="logo">
        <h1 style="margin-right:-300%">Online Shopping</h1>
        </div>
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="adminhome.jsp"><span>Home</span></a></li>
        <li class="active"><a href="#">Admin</a></li>
        <li><a href="admin.jsp">Logout</a></li>
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
            
    <%@ include file="connect.jsp" %>
    <%
        String sql2="select * from user "; 
	Statement st2=connection.createStatement();
	ResultSet rs1=st2.executeQuery(sql2);
	%>
        
         <center>
        <h2><font color="black" size="5"> All Users</font></h2>
        <br/>
        <style>
            td{
                text-align: center;
            }
            
        </style>
                    <table border="2" width="90%">

                            <tr style="background-color: brown">
                            <th><font color="white">User Name</th>
                            <th><font color="white">Email</th>
                            <th><font color="white">Gender</th>
                            <th><font color="white">Address</th>
                            <th><font color="white">Status</th>
                            <th><font color="white">Activate</th>
                            <th><font color="white">DeActivate</th>
                            
                        </tr>

                        <%                while (rs1.next()) {
                        %>

    <tr>
         <td><font color="black"><%=rs1.getString(2)%></td>
         <td><font color="black"><%=rs1.getString(4)%></td>
         <td><font color="black"><%=rs1.getString(6)%></td>
         <td><font color="black"><%=rs1.getString(7)%></td>
         <td><font color="black"><%=rs1.getString(9)%></td>
         <td><a href="activate.jsp?username=<%=rs1.getString(2)%>">Activate</a></td>
         <td><a href="deactivate.jsp?username=<%=rs1.getString(2)%>">DeActivate</a></td>
        </tr>
            <%
                }
            %>
           </table></center>
        <br/><br/><br/><br/>
        
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        <h2 class="star"><span>Admin</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="adminhome.jsp">Home</a></li>
        <li><a href="viewusers.jsp">View all Users & Activate</a></li>
        <li><a href="addcategory.jsp">Add Category</a></li>
        <li><a href="addproducts.jsp">Add Products</a></li>
        <li><a href="viewproducts.jsp">View all Products</a></li>
        <li><a href="adminviewrecommends.jsp">View Recommended Products</a></li>
        <li><a href="adminviewpurchasedproducts.jsp">View Purchased Products </a></li>
        <li><a href="admin.jsp">Logout</a></li>
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
