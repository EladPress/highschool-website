<%@ Page Language="C#" AutoEventWireup="true" CodeFile="deleteusers.aspx.cs" Inherits="aspx_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
   <% 
      // Response.Write(Request.Form["userid2"] + "<br>");
       string filename = "database.mdf";
       // string tablename = "personaldata";
       if (Request.Form["deletebutton"] != null)
       {
           string userid = Request.Form["userid2"];
          // string idnum = Request.Form["idnum"];
           string sql = "DELETE FROM personaldata WHERE id = '" + userid.ToString() + "'";
           MyAdoHelper.DoQuery(filename, sql);
           Response.Write("רשומה נמחקה");

       }


       %>
    <!--h1 style="text-align:right">:מחיקה לפי מספר תעודת זהות</!--h1>
    <form method="post" style="text-align:right">
        <input type="text" id="idnum" name="idnum" />:מספר תעודת זהות למחיקה
        <br />
    <input type="submit" id="del_id" name="del_id" value="מחיקה" />

    </form-->
    <br />
    <a href="users.aspx">חזרה לאזור המנהל</a>
</body>
</html>
