﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="aspx_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <%
       Session.Abandon();
       Response.Redirect("../html/index.aspx");
       
       %>

</body>
</html>
