<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newspaperdetails.aspx.cs" Inherits="WebApplication.Presentation.pagedetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="../Styles/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Styles/script.js" type="text/javascript"></script>
   
</head>
<body class="bg-light">
    <form id="form1" runat="server">
         <section class="bg-light fixed-top pt-2 pb-2">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <table>
                        <tr>
                            <td>
                                <input type="text" id="x1" value="" placeholder="x1" class="form-control textbox-width" />
                            </td>
                            <td>
                                <input type="text" id="y1" value="" placeholder="y1" class="form-control textbox-width" />
                            </td>
                            <td>
                                <input type="text" id="x2" value="" placeholder="x2" class="form-control textbox-width" />
                            </td>
                            <td>
                                <input type="text" id="y2" value="" placeholder="y2" class="form-control textbox-width" />
                            </td>
                            <td>
                                <input type="text" id="finalCoordinates" placeholder="co-ordinates" class="form-control" runat="server" />
                            </td>

                            <td>
                                <input type="button" value="Get Values" onclick="GetValues()" class="btn btn-primary" />
                            </td>

                            <td>
                                <input type="button" name="clearbutton" value="Clear" onclick="Clear()" class="btn btn-danger" />
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUploadNewsDetail" runat="server" ></asp:FileUpload>
                                     </td>
                            <td>
                                <asp:Button ID="ButtonSaveDetails" runat="server" Text="Save Details"
                                    class="btn btn-success" OnClick="ButtonSaveDetails_Click"></asp:Button>

                            </td>
                        </tr>
                    </table>
                </div>
            </div>


            <input type="file" accept="image/*" name="image" id="file" onchange="loadFile(event)"
                style="display: none;" />

            <div class="row">
                <div class="col-md-12 mt-2 mb-1">
                    <asp:TextBox ID="TextBoxHeading" runat="server" CssClass="form-control" placeHolder="News Heading"></asp:TextBox></div>
                <div class="col-md-12">
                    <asp:TextBox ID="TextBoxNewsDetails" runat="server" Rows="5" TextMode="MultiLine" Wrap="true" CssClass="form-control" placeHolder="News Details"></asp:TextBox>
                </div>
            </div>
        </div>

    </section>
    <div style="margin-top: 250px;">
        <div class="shadow-sm" style="margin: 0 auto; width: 1000px;">
            <asp:Repeater ID="RepeaterImage" runat="server">
                <ItemTemplate>
                    <img src='<%# Eval("pageimageUrl")%>' alt="image" width="1000" id="PageImage" />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
   
    </form>
     <script type="text/javascript">
        var myImg = document.getElementById("PageImage");
        myImg.onmousedown = GetCoordinates;

    </script>
</body>
</html>
