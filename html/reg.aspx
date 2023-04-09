<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="html_reg" %>

<!DOCTYPE html>
<html>
<head>
    <!--reg-->
    <meta charset="utf-8" />
    <title>טופס הרשמה</title>
    <script src="../javascript/JavaScript.js"></script>
    <link rel="stylesheet" href="../css/StyleSheet.css" />
</head>

<body style="background-image:url(../images/qathaypacific1.jpg)">
    <h1>טופס הרשמה</h1>
    <table border="1" style="background-color:aqua; border-width: 5px; border-color:black">
        <tr>
            <td align="center" style="width: 500px"><h2><a href="../aspx/Logout.aspx">התנתקות</a></h2></td>
            <td align="center" style="width: 500px"><h2><a href="../html/Login.html">התחברות</a></h2></td>s
            <td align="center" width="500px"><h2><a href="Page3.aspx">מידע על בואינג</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page2.aspx">מידע על איירבוס</a></h2></td>
            <td align="center" width="500px"><h2><a href="Page1.aspx">השוואה בין איירבוס לבואינג</a></h2></td>
            <td align="center" width="500px"> <h2><a href="index.aspx">תקציר אתר</a></h2></td>
        </tr>
    </table>
  
    <h2>כדי לצפות בכל עמודי האתר, עליך להירשם כמשתמש</h2>
    <form onsubmit="return checkform()" method="post" action="../aspx/insertToDB.aspx">
        <table align="right" border="0" >
        <!--firstname-->
            <tr><td><h5><input type="text" name="firstname" id="firstname" style="font-size:inherit; text-align:right"/></h5></td> <td><h5>:שם פרטי</h5></td></tr>
        <!--firstname1-->
            <tr style="display: none" id="firstname1" name="firstname1"><td><h4>לא הוזן שם פרטי</h4></td></tr>
        <!--firstname2-->
            <tr style="display: none" id="firstname2" name="firstname2"><td><h4>אנא הזן רק אותיות מהא"ב</h4></td></tr>
        <!--firstname3-->
            <tr style="display: none" id="firstname3" name="firstname3"><td><h4>אנא הזן לפחות 2 אותיות</h4></td></tr>
        <!--lastname--> 
            <tr><td><h5><input type="text" name="lastname" id="lastname" style="font-size:inherit; text-align:right" /></h5></td><td><h5>:שם משפחה</h5></td></tr>
        <!--lastname1-->
            <tr style="display: none" id="lastname1" name="lastname1"><td><h4>לא הוזן שם משפחה</h4></td></tr>
        <!--lastname2-->
            <tr style="display: none" id="lastname2" name="lastname2"><td><h4>אנא הזן רק אותיות מהא"ב</h4></td></tr>
        <!--lastname3-->
            <tr style="display: none" id="lastname3" name="lastname3"><td><h4>אנא הזן לפחות 2 אותיות</h4></td></tr>
        <!--password-->
            <tr ><td><h5><input type="text" name="password" id="password" style="font-size:inherit; text-align:right" /></h5></td><td><h5>:סיסמא</h5></td></tr>
            <!--password1-->
            <tr style="display:none" id="password1" name="password1"><td><h4>אנא הזן סיסמא</h4></td></tr>
            <!--idnum-->
            <tr><td><h5><input type="text" name="idnum" id="idnum" style="font-size:inherit; text-align:right" /></h5></td><td><h5>:ת"ז</h5></td></tr>
        <!--idnum1-->
            <tr style="display:none" id="idnum1" name="idnum1"><td><h4>אנא הזן תשע ספרות בדיוק</h4></td></tr>
        <!--idnum2-->
            <tr style="display:none" id="idnum2" name="idnum2"><td><h4>אנא הזן רק ספרות</h4></td></tr>
        <!--idnum3-->
            <tr style="display:none" id="idnum3" name="idnum3"><td><h4>אנא הזן מספר זהות</h4></td></tr>
        <!--gender-->
            <tr><td><h5><input type="radio" id="male" name="male" value="male"/>זכר</h5><h5><input type="radio" id="female" name="female" value="female"/>נקבה</h5></td><td><h5>:מין</h5></td></tr>
        <!--gender1-->
            
            <tr style="display:none" id="gender1" name="gender1"><td><h4>יש לבחור בין אחד המינים</h4></td></tr>
        <!--location-->
            <tr><td><h5><select id="location" name="location" style="font-size:inherit">
            <option value="0" id="unselected">בחר אזור מגורים</option>
            <option value="Tel Aviv">תל אביב</option>
            <option value="Jerusalem">ירושלים</option>
            <option value="Eilat">אילת</option>
            </select></h5></td> <td><h5>:אזור מגורים</h5></td></tr>
         <!--location1-->
            <tr style="display:none" id="location1"><td><h4>חובה לבחור אזור</h4></td></tr>

            
        <!--submit/reset-->  
            <tr><td><h5><button type="submit" style="font-size:inherit" id="submit" name="submit">הזן</button></h5></td><td><h5><button type="reset" style="font-size:inherit">נקה</button></h5></td></tr>
        </table>
    </form>
    
    


    
   
</body>
</html>
