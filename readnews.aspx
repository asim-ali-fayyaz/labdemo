<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readnews.aspx.cs" Inherits="WebApplication.Presentation.readnews" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pas-e-Parda</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
</head>
<body class="bg-light">
        <form id="formreadnews" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-lg-2 text-center">
                <div class="card border-0 rounded-0" style="background-color: Black">
                    <div class="card-body">
                        <img src="imgs/Icon/reportislamanad.jpg" alt="Paseparda" class="img-fluid" width="45%"
                            title="Report Islamabad" />
						<div id="currentdate" style="margin-top:-23px; margin-left:70px">
                        aaa
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8  offset-lg-2 ">
                <div class="card shadow border-0 rounded-0">
                    <div class="card-body">
                        <div class="newsHeading newsFont p-3 mb-3" style="border:4px solid black">
                            <asp:Label ID="LabelHeading" runat="server" Text="" CssClass="font-weight-bolder h1"></asp:Label>
                        </div>
                        <div class="newsFont" style="text-align:right !important">
                        <asp:Label ID="LabelNewsDetails" runat="server" Text="" CssClass="h3"></asp:Label>
                        </div>
                    </div>
                </div>
               <asp:Image ID="ReadNews" runat="server" CssClass="img-fluid" />
            </div>
        </div>
    </div>
    </form>
	<script type="text/javascript">
        var months = ['جنوری', 'فروری', 'مارچ', 'اپریل', 'مئی', 'جون', 'جولائی', 'اگست', 'ستمبر', 'اکتوبر', 'نومبر', 'دسمبر'];
        var weekDays = ['اتوار', 'پیر', 'منگل', 'بدھ', 'جمعرات', 'جمعه', 'ہفتہ'];
        var now = new Date();
        var thisMonth = months[now.getMonth()]; // getMonth method returns the month of the date (0-January :: 11-December)
        var thisWeekDay = weekDays[now.getDay()];
        var output = document.getElementById('currentdate');
        if (output.textContent !== undefined) {
            output.innerHTML = thisWeekDay + "  " + new Date().getDate() + " " + thisMonth + " " + new Date().getFullYear() + 'ء';
        }
        else {
            output.innerText = thisMonth;
        }

    </script>
    
</body>
</html>
