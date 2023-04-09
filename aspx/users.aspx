<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="aspx_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <table border="1">
        <%
            string databasefile = "database.mdf";
            string sql = "select * from personaldata";
            System.Data.DataTable userdataset = MyAdoHelper.ExecuteDataTable(databasefile, sql);
            int length = userdataset.Rows.Count;
            if (length > 0)
            {
            %>
        <tr>
            <th>id</th>
            <th>firstname</th>
            <th>lastname</th>
            <th>idnum</th>
            <th>gender</th>
            <th>location</th>
            <th>password</th>
            <th></th>
        </tr>
        <%
            }
            for (int i = 0; i < length; i++)
            {

                %>
        <tr>
            <td><%=userdataset.Rows[i]["id"]%></td>
            <td><%=userdataset.Rows[i]["firstname"]%></td>
            <td><%=userdataset.Rows[i]["lastname"]%></td>
            <td><%=userdataset.Rows[i]["idnum"]%></td>
            <td><%=userdataset.Rows[i]["gender"]%></td>
            <td><%=userdataset.Rows[i]["location"]%></td>
            <td><%=userdataset.Rows[i]["password"] %></td>
            <td><form method="post" action="editusers.aspx">
                <input type="submit" value="edit" />
                <input type="hidden" name="userid" value="<%=userdataset.Rows[i]["id"]%>" />
                </form></td>
            <td><form method="post" action="deleteusers.aspx">
                <input type="submit" value="delete" name="deletebutton"/>
                <input type="hidden" name="userid2" id="userid2" value="<%=userdataset.Rows[i]["id"]%>" />
                </form></td>

        </tr>
        <% } %>
    </table>
    <h2><a href="../html/index.aspx">חזרה לאתר</a></h2>
</body>
</html>
