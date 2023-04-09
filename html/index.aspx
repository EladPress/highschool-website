<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="html_index" %>

<!DOCTYPE html>
<html>
<head>
    <!--index-->
    <meta charset="utf-8" />
    <title>תפריט אתר</title>
    <link rel="stylesheet" type="text/css" href="../css/StyleSheet.css" />
</head>
<body style="background-image:url(../images/finnair1.jpg)">
    <h1>תקציר אתר</h1><%if(Session["logged"] != null)
                          {
                              Response.Write("<h4>סטטוס משתמש: מחובר</h4>");
                          }
                          else if(Session["logged"] == null)
                          {
                              Response.Write("<h4> סטטוס משתמש: לא מחובר</h4> ");
                          }

                                  %>

    <table border="1" style="background-color:aqua; border-width: 5px; border-color:black">
        
    <tr>
         <td align="center" style="width: 500px"><h2><a href="../aspx/Logout.aspx">התנתקות</a></h2></td>
        <td align="center" style="width: 500px"><h2><a href="../html/Login.html">התחברות</a></h2></td>
        <td align="center" style="width: 500px"><h2><a href="reg.aspx">טופס הרשמה</a></h2></td>
        <td align="center" style="width: 500px"><h2><a href="Page3.aspx">מידע על בואינג</a></h2></td>
        <td align="center" style="width: 500px"><h2><a href="Page2.aspx">מידע על איירבוס</a></h2></td>
        <td align="center" style="width: 500px"><h2><a href="Page1.aspx">השוואה בין איירבוס לבואינג</a></h2></td>
    </tr>
</table>
    
    <p style="text-align:right"> <img src="../images/airberlin1.jpg" width="1024" height="576" /></p>    
  
    <h3 style="text-align:right">
      .boeing, airbus  באתר זה אסביר על החברות שמעצבות, מהנדסות, מייצרות ומוכרות את רוב המטוסים שאנו רואים כל פעם שאנו הולכים לנמל התעופה. אתמקד ביצרניות המטוסים 
    <br />
        אסביר על נסיבות הקמת חברות אלו, מוצרים מוכרים ועיקריים שלהן ומקום פעולתן העיקרי 
    </h3>

</body>
</html>