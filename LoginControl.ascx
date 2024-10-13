<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="A6.LoginControl" %>
 
<h1>(COMPONENT)Login</h1>

<p>
    <asp:Label ID="Label2" runat="server" Text="This TryIt allows the user to input a username and password. Clicking on the login button will 
        look through the xml file in the background and to check if the account information is valid. If yes, it will say login successfull or incorrect login if
        the username or password is incorrect"></asp:Label>
</p>
<table id="MyTable" cellpadding="4" RunAt="server">
    
  	<tr> <td>User Name:</td>
         	<td><asp:TextBox ID="MyUserName" RunAt="server" />
		</td>
	</tr>
         <tr>	<td>Password:</td> 
               	<td><asp:TextBox ID="MyPassword" TextMode="password" RunAt="server" />  
		</td>
  	</tr>
  	<tr> <td></td> <td>
          <asp:LinkButton Text="Log In" runat="server" OnClick="Unnamed1_Click" /></td> </tr>

    <tr> <td></td> <td>
        <asp:Label ID="Label1" runat="server" Text="..."></asp:Label></td> </tr>
    
</table>


