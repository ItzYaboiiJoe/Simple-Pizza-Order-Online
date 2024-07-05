<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="PizzaASPWebApplication.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>The Chiarelli Pizzeria</h1>
            <asp:RadioButtonList ID="radPizzaSize" runat="server" AutoPostBack="True">
                <asp:ListItem Value="10">Baby $10</asp:ListItem>
                <asp:ListItem Value="13">Mama $13</asp:ListItem>
                <asp:ListItem Value="16">Papa $16</asp:ListItem>
            </asp:RadioButtonList>
            <h3>Crust Type</h3>
            <asp:RadioButtonList ID="radCrust" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">Thin Crust</asp:ListItem>
                <asp:ListItem Value="2">Deep Dish (+$2.00)</asp:ListItem>
            </asp:RadioButtonList>
            <h3>Toppings</h3>
            <asp:CheckBoxList ID="checkToppings" runat="server">
                <asp:ListItem ID="pep" Value="1.50">Pepperoni $1.50</asp:ListItem>
                <asp:ListItem ID="onion" Value="0.75">Onions $.75</asp:ListItem>
                <asp:ListItem ID="grnPep" Value="0.50">Green Peppers $.50</asp:ListItem>
                <asp:ListItem ID="redPep" Value="0.75">Red Peppers $.75</asp:ListItem>
                <asp:ListItem ID="anch" Value="2">Anchovies $2.00</asp:ListItem>
            </asp:CheckBoxList>
            <p>
                Special Deal: Save $2.00 when you add pepperoni, green peppers and anchovies OR
                <br />
                pepperoni, red peppers and onions to your pizza
            </p>
            <asp:Button ID="btnPuchase" runat="server" Text="Purchase" OnClick="btnPuchase_Click" />
            <p>
                Total: 
                <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
