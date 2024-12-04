<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication.Presentation.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../Styles/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
      
            <div class="col-lg-4 border offset-lg-4 shadow-sm" style="margin-top:10%">
                <table class="table table-borderless text-center">
                <tr>
                <td>
                <h2>Login</h2>
                </td>
                </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBoxUserName" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBoxPassword" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:Button ID="ButtonLogin" runat="server" Text="Login" CssClass="btn btn-primary form-control"
                            onclick="ButtonLogin_Click" />
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:Label ID="LabelErrow" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
