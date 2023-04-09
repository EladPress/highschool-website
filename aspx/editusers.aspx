<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editusers.aspx.cs" Inherits="aspx_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <h1 style="text-align:right">עריכת נתונים</h1>
    <form id="editform" method="post" style="text-align:right">
        <input type="text" id="newfname" name="newfname"/>:שם פרטי חדש
        <br />
        <input type="text" id="newlname" name="newlname"/>:שם משפחה חדש
        <br />
        <input type="text" id="currentidnum" name="currentidnum"/>:מספר זהות נוכחי
        <br />
        <input type="text" id="newidnum" name="newidnum"/>:מספר זהות חדש
        <br />
        <select id="newlocation" name="newlocation">
            <option value="0" id="unselected">בחר אזור מגורים</option>
            <option value="Tel Aviv">תל אביב</option>
            <option value="Jerusalem">ירושלים</option>
            <option value="Eilat">אילת</option>
            </select>:מקום מגורים חדש
        <br />
        <input type="submit" value="עדכן" id="submit" name="submit"/>
    </form>
    <%
        string databasefile = "Database.mdf";
        string selectquery;
        string sql;
        string currentidnum = Request.Form["currentidnum"];
        string newidnum= Request.Form["newidnum"];
        string newfname=Request.Form["newfname"];
        string newlname = Request.Form["newlname"];
        string newlocation = Request.Form["newlocation"];
        string userid;
        Response.Write(Request.Form["userid"]);
        if(Request.Form["submit"] != null)
        {
            userid = Request.Form["userid"];
            selectquery = "select * from personaldata where idnum='" + currentidnum + "'";
            sql = "UPDATE personaldata SET firstname=N'" + newfname + "', lastname=N'" + newlname + "', idnum='" + newidnum + "', location='" + newlocation + "' WHERE idnum='"+currentidnum+"'";
            if(MyAdoHelper.IsExist(databasefile, selectquery))
            {
            MyAdoHelper.DoQuery(databasefile, sql);
            Response.Write("<br>" + "עדכון הושלם");
            }
            else
            {
                Response.Write("<br>" +"מספר הזהות לא תקין");
            }
        }

        %>
    <br />
    <a href="users.aspx">חזרה לאזור המנהל</a>
</body>
</html>