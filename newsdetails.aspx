<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsdetails.aspx.cs" Inherits="WebApplication.Presentation.newsdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>پس پردہ</title>
    <link href="Styles/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Styles/font.css" rel="stylesheet" type="text/css" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-8 offset-lg-2">
                    <div class="card border-0 rounded-0" style="background-color: Black">
                    <div class="card-body  text-center">
                        <img src="imgs/Icon/pasaperdalogo.jpg" alt="Paseparda" class="img-fluid" width="35%"
                            title="paseparda news islamabad" />
                    </div>
                </div>
                    <asp:Repeater ID="RepeaterNewsDetails" runat="server">
                        <ItemTemplate>
                            <div class="card shadow border-0">
                                <div class="card-header text-right ">
                                    <h1 style="line-height:1.7"><%#Eval("newstitle") %></h1>
                                <div class="card-title">
                                         <%#Eval("datatime") %>
                                     </div>

                                </div>
                                <img src='<%#Eval("imgurl") %>' />
                                <div class="p-4">
                                   <h4 class="text-right text-justify" style="line-height:2.0"><%#Eval("newsdetails") %></h4> 

                                </div>
                            </div>
                            
                            

                           
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
