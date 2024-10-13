<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="addAccount.ascx.cs" Inherits="A6.addAccount" %>


<h1>(COMPONENT)XML File: add Account</h1>

<p>
    <asp:Label ID="Label6" runat="server" Text="This TryIt is meant to make the xml file testable. It does so by displaying the current usernames in a textbox and 
        allowing the user to add accounts to the file. This can be done by entering a username and password, then clicking on the add Account button. This will
        refresh the textbox displaying the users. The login component will now also be able to login using the account information"></asp:Label>
</p>
<p>
<asp:Label ID="Label1" runat="server" Text="Account Usernames:"></asp:Label>
</p>

<p>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" ReadOnly="True" Height="200"></asp:TextBox>
</p>

<p>
    <asp:Label ID="Label3" runat="server" Text="Add an Account to the xml file:"></asp:Label>
</p>

<p>
    <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>

<p>
    <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>

<p>
    <asp:Button ID="Button1" runat="server" Text="add Account" OnClick="Button1_Click" />
    <asp:Label ID="Label4" runat="server" Text="..."></asp:Label>
</p>
