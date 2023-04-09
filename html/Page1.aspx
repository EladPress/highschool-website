<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page1.aspx.cs" Inherits="html_Default" %>

<!DOCTYPE html>
<html>
<head>
    <!--page1-->
    <meta charset="utf-8" />
    <title>עמוד 1</title>
    <link rel="stylesheet" type="text/css" href="../css/StyleSheet.css" />
    <%
        if(Session["logged"] == null)
        {
            Response.Redirect("login.html");
        }
        %>
</head>
<body style="background-image:url(../images/ELAL2.jpg); text-align:right">

    <h1>השוואה בין איירבוס לבואינג</h1>

    <table border="1" style="background-color:aqua; border-width: 5px; border-color:black">
        <tr>
        <td align="center" style="width: 500px"><h2><a href="../aspx/Logout.aspx">התנתקות</a></h2></td>
       <td align="center" style="width: 500px"><h2><a href="../html/Login.html">התחברות</a></h2></td>
        <td align="center" width="500px"><h2><a href="reg.aspx">טופס הרשמה</a></h2></td>
        <td align="center" width="500px"><h2><a href="Page3.aspx">מידע על בואינג</a></h2></td>
        <td align="center" width="500px"><h2><a href="Page2.aspx"> מידע על איירבוס</a></h2></td>
        <td align="center" width="500px"> <h2><a href="index.aspx">תקציר אתר</a></h2></td>
        </tr>
    </table>
    <br />
    <h3>
       בואינג ואיירבוס הן שתי יצרניות המטוסים העיקריות בעולם,בעוד שבואינג מייצרת גם מטוסים צבאיים ועוד מוצרים בתחום החלל, איירבוס מתמקדת במטוסי נוסעים בעיקר, ולכל מטוס נוסעים של החברה האחת יהיה מטוס מתחרה או בעל מטרה זהה של החברה האחרת. לדוגמא: המתחרה העיקרי של ה <a href="https://he.wikipedia.org/wiki/%D7%90%D7%99%D7%99%D7%A8%D7%91%D7%95%D7%A1_A350">איירבוס 350</a> הוא <a href="https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%90%D7%99%D7%A0%D7%92_787">הבואינג 787</a> והמתחרה של <a href="https://he.wikipedia.org/wiki/%D7%91%D7%95%D7%90%D7%99%D7%A0%D7%92_737">הבואינג 737</a> הוא <a href="https://he.wikipedia.org/wiki/%D7%90%D7%99%D7%99%D7%A8%D7%91%D7%95%D7%A1_A320">האיירבוס 320</a>
   <br />

    </h3>
    <table align="right" border="1" style="border-color:black; text-align:right; font-size:inherit inherit; ">
        <tr> <th><h3>בואינג</h3></th> <th><h3>איירבוס</h3></th> <th><h3></h3></th></tr>
        <tr> <td><h3 style="color:white">1916</h3></td> <td><h3>1970</h3></td> <td><h3>שנת הקמה</h3></td></tr>
        <tr><td><h3>ויליאם בואינג</h3></td> <td><h3>ברנרד לטייר, רוג'ה ביטאיי, הונרי סיגלר</h3></td><td><h3>מייסדים</h3></td></tr>
        <tr><td><h3>כ-98.63 מיליארד דולר</h3></td><td><h3>כ-13.75 מיליארד אירו</h3></td><td><h3>שווי שוק</h3></td></tr>
        <tr><td><h3>שיקגו, אילינוי, ארצות הברית</h3></td> <td><h3>טולוז, צרפת</h3></td><td><h3>משרד ראשי</h3></td></tr>
        <tr><td><h3>מטוסים ומסוקים אזרחיים וצבאיים, מערכות חלל</h3></td><td><h3>מטוסי נוסעים</h3></td><td><h3>מוצרים עיקריים</h3></td></tr>
    </table>
</body>
</html>
