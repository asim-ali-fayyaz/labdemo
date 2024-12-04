<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pdfreader.aspx.cs" Inherits="WebApplication.Presentation.pdfreader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:LinkButton ID="lnkView" runat="server" Text="View PDF" OnClick="View"></asp:LinkButton>
        <hr />
        <asp:Literal ID="ltEmbed" runat="server"  />
       

    </form>
</body>
</html>
