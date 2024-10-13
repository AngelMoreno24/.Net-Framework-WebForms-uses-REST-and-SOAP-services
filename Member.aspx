<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Member.aspx.cs" Inherits="A6.Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>user Control</title>
</head>
<body>

    <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
    <div class="container">
        
        <div class="collapse navbar-collapse d-sm-inline-flex justify-content-between">
            <ul class="navbar-nav flex-grow-1">
                <li class="nav-item"><a class="nav-link" runat="server" href="~/myDefault">Default</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Staff">Staff</a></li>
                <li class="nav-item"><a class="nav-link" runat="server" href="~/Member">Member</a></li>
            </ul>
        </div>
    </div>
</nav>
    <h2>Member Page</h2>

    <form id="form1" runat="server">
    </form>
</body>
</html>