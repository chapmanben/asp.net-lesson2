<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ServerControls._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server" Text="Student Name:"></asp:Label>
        <asp:Literal ID="ltlMessage" runat="server"></asp:Literal>
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
        <asp:Button ID="btnCopyText" runat="server" Text="Copy Text" OnClick="btnCopyText_Click" />

        <div>
            <h4>List Controls</h4>
            <asp:Label ID="lblSize" runat="server" Text="Size: "></asp:Label>
            <asp:DropDownList ID="ddlSize" runat="server">
                <asp:ListItem Value="S" Text="Small"></asp:ListItem>
                <asp:ListItem Value="M" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="L" Text="Large"></asp:ListItem>
                <asp:ListItem Value="XL" Text="X-Large"></asp:ListItem>
            </asp:DropDownList> 
        </div>
        <div>
            <asp:Label ID="lblToppings" runat="server" Text="Toppings: "></asp:Label>
            <asp:CheckBoxList ID="cblToppings" runat="server">
                <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
                <asp:ListItem Value="1" Text="Mushrooms"></asp:ListItem>
                <asp:ListItem Value="1" Text="Bacon"></asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <asp:Button ID="btnShowChoices" runat="server" Text="Show Selections" OnClick="btnShowChoices_Click" />
        </div>

    </div>
    </form>
</body>
</html>
