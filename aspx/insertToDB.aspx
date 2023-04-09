<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertToDB.aspx.cs" Inherits="aspx_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
</head>
<body>
    
        <div>
            <%
                if(Request.Form ["submit"] != null)
                {

                    string firstname = Request.Form["firstname"];
                    string lastname = Request.Form["lastname"];
                    string password = Request.Form["password"];
                    string idnum = Request.Form["idnum"];
                    string male = Request.Form["male"];
                    string female = Request.Form["female"];
                    string location = Request.Form["location"];
                    string databasefile = "Database.mdf";
                    string tablename = "personaldata";

                    string sql1 = "select * FROM personaldata where idnum='" + idnum + "'";

                    if (MyAdoHelper.IsExist(databasefile, sql1))
                    {
                        Response.Write("מספר זהות זה כבר קיים במסד הנתונים"); }
                    else {
                        string SQLInsert = "INSERT INTO personaldata (firstname, lastname, idnum, gender, location, password) VALUES (N'" + firstname + "', N'" + lastname + "','" + idnum + "','" + male + female + "','" + location + "','" + password + "')";
                        MyAdoHelper.DoQuery(databasefile, SQLInsert);
                        Response.Write("הרשמה בוצעה בהצלחה");
                        Response.Write("<br>"+" <a href='../html/index.aspx'>חזרה לאתר</a>");
                    }

                }


                %>
        
        </div>
    
</body>
</html>
