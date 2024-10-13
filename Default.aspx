<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="A6._Default" %>
<%@ Register TagPrefix="user" TagName="LoginControl" src="LoginControl.ascx"%> 
<%@ Register TagPrefix="add" TagName="addAccount" src="addAccount.ascx"%> 
<%@ Register TagPrefix="game" TagName="BlackJack" src="BlackJack.ascx"%> 

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        
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
    <h2>Default Page</h2>
    <user:LoginControl RunAt="server" />
    <add:addAccount RunAt="server" />
    <game:BlackJack RunAt="server" />

</body>
    </main>

</asp:Content>

