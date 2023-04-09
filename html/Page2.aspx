<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Page2.aspx.cs" Inherits="html_Page2" %>

<!DOCTYPE html>
<html>
<head>
    <!--page2-->
    <meta charset="utf-8" />
    <title>עמוד 2</title>
   <link rel="stylesheet" href="../css/StyleSheet.css" />
    <% 
        if(Session["logged"] == null)
        {
            Response.Redirect("login.html");
        }
        %>
</head>
<body style="background-image:url(../images/airberlin2.jpg); text-align: right">
    <h1>מידע על איירבוס</h1>
    <table border="1" style="background-color:aqua; border-width: 5px; border-color:black" >
        <tr>
            <td align="center" style="width: 500px"><h2><a href="../aspx/Logout.aspx">התנתקות</a></h2></td>
            <td align="center" style="width: 500px"><h2><a href="../html/Login.html">התחברות</a></h2></td>          
            <td align="center" width="500px"><h2><a href="reg.aspx">טופס הרשמה</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page3.aspx">מידע על בואינג</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page1.aspx">השוואה בין איירבוס לבואינג</a></h2></td>
            <td align="center" width="500px"> <h2><a href="index.aspx">תקציר אתר</a></h2></td>
        </tr>
    </table>
   
    <br />
    <br />
    <img src="../images/LUFTHANSA-A320NEO.jpg"  width="768" height="432" /> <img src="../images/KSFOA380B747.jpg"  width="768" height="432" />
   <br />
    <br />
    <br />
    <br />
   
    <h3>איירבוס היא יצרנית מטוסים אירופית. החברה נוסדה בשנת 1970 על ידי ממשלות צרפת וגרמניה, במטרה להתחרות ביצרנית המטוסים האמריקניץ בואינג. למיזם הצטרפו ספרד בשנת 1971, ובריטניה בשנת 1978. החברה רשומה בצרפת, ומפעלה הראשי נמצא בטולוז, צרפת.
    איירבוס התמקדה מאז הקמתה בפיתוח מטוסי נוסעים, ובינואר 1999 החלה לפתח מטוסים לשימוש צבאי. איירבוס מעסיקה כ-63,000 עובדים, ומפעילה 16 אתרי ייצור בצרפת, גרמניה, בריטניה, ספרד, ארצות הברית וסין. החברה ביצעה מסירה ראשונה במאי 1974, ועד יוני 2014 מסרה כ7,900 מטוסים. ממוצריה הבולטים של החברה: איירבוס 320- מטוס הנוסעים הראשון בעולם המופעל באמצעות מערכת בקרת טיסה טוס-על-חוט, ואיירבוס 380- מטוס הנוסעים הגדול בעולם.</h3>
    
   
</body>
</html>