<%@ Page Language="C#" AutoEventWireup="true" CodeFile="authorization.aspx.cs" Inherits="aspx_authorization" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--authorization-->
</head>
<body>
   <%
       string idnum = Request.Form["idnum"];
       string password = Request.Form["password"];
       string filename = "Database.mdf";
       // string tablename = "personaldata";

       string sql = "SELECT * FROM personaldata where idnum='" + idnum + "' and password='" + password + "'";
       if(MyAdoHelper.IsExist(filename, sql))
       {
           Session["logged"] = true;
           System.Data.DataTable userdataset = MyAdoHelper.ExecuteDataTable(filename, sql);
           Session["idnum"] = userdataset.Rows[0]["idnum"];
           Session["password"] = userdataset.Rows[0]["password"];
           Session["isadmin"] = userdataset.Rows[0]["isadmin"];
           Response.Write(Session["idnum"] + "<br>");
           Response.Write(Session["password"] + "<br>");
           Response.Write(Session["isadmin"]);
           var isadmin = (bool)Session["isadmin"];

           if(isadmin == true)
           {
               Response.Redirect("users.aspx");
           }
           else { Response.Redirect("../html/index.aspx"); }
       }
       else
       {
           Response.Write("שם משתמש או סיסמא לא קיימים");
       }
       %>
    
</body>
</html>
