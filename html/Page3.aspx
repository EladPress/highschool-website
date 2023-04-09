<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page3.aspx.cs" Inherits="html_Page3" %>

<!DOCTYPE html>
<html>
<head>
    <!--page3-->
    <meta charset="utf-8" />
    <title>עמוד 3</title>
    <link rel="stylesheet" href="../css/StyleSheet.css" />
     <%
        if(Session["logged"] == null)
        {
            %>
    <script>alert("עליך להתחבר כמשתמש כדי לגשת לעמוד זה");</script>
    <%
            Response.Redirect("login.html");
        }
        %>
</head>
<body style="background-image:url(../images/arkia757.jpg); text-align:center">
    <h1>מידע על בואינג</h1>
    <table border="1" style="background-color:aqua; border-width: 5px; border-color:black">
        <tr>
            <td align="center" style="width: 500px"><h2><a href="../aspx/Logout.aspx">התנתקות</a></h2></td>
            <td align="center" style="width: 500px"><h2><a href="../html/Login.html">התחברות</a></h2></td>           
            <td align="center" width="500px"><h2><a href="reg.aspx">טופס הרשמה</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page2.aspx">מידע על איירבוס</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page1.aspx"> השוואה בין איירבוס לבואינג</a></h2></td>
            <td align="center" width="500px"> <h2><a href="index.aspx">תקציר אתר</a></h2></td>
        </tr>
    </table>
   
    <br />
    <img src="../images/KLM-787.jpg" width="768" height="432"/> <img src="../images/SWISS-777.jpg" width="768" height="432" />

    <h3> חברת בואינג היא חברה אמריקנית רב לאומית העוסקת בתעופה ובמערכות חלל. החברה נוסדה בשנת 1916, התרחבה במהלך השנים ובשנת 1997 התמזגה עם מקדונל דאגלס, יצרנית מטוסים גדולה בעצמה שייצרה מגוון מטוסים ידועים, כגון האף- 15 והאף 4 פאנטום. שתי החטיבות העיקריות שלה הן החטיבה הצבאית (מוצרי צבא וחלל) והחטיבה למטוסי נוסעים. בואינג היא היצואנית הגדולה ביותר של ארצות הברית. החברה הוקמה בסיאטל שבמדינת וושינגטון, ובשנת 2001 העבירה את משרדיה לשיקגו, אילינוי. בואינג מתקשה להתחרות באיירבוס, שמציעה מגוון רחב של  מטוסים מתקדמים. בשנת 2003 היא איבדה את נתח השוק הגדול ביותר לאיירבוס, אך חזרה וזכתה בו ב-2006.</h3>
</body>
</html>