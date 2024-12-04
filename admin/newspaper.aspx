<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="newspaper.aspx.cs" Inherits="WebApplication.Presentation.admin.newspaper" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <div class="container mt-3">
        <table>
            <tr>
                <td>
                    <asp:FileUpload ID="FileUploadPage" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="TextBoxPageNo" runat="server" TextMode="Number" PlaceHolder="Enter Page No"
                        CssClass="form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListDate" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Select Date--" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="11" Value="11"></asp:ListItem>
                        <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        <asp:ListItem Text="13" Value="13"></asp:ListItem>
                        <asp:ListItem Text="14" Value="14"></asp:ListItem>
                        <asp:ListItem Text="15" Value="15"></asp:ListItem>
                        <asp:ListItem Text="16" Value="16"></asp:ListItem>
                        <asp:ListItem Text="17" Value="17"></asp:ListItem>
                        <asp:ListItem Text="18" Value="18"></asp:ListItem>
                        <asp:ListItem Text="19" Value="19"></asp:ListItem>
                        <asp:ListItem Text="20" Value="20"></asp:ListItem>
                        <asp:ListItem Text="21" Value="21"></asp:ListItem>
                        <asp:ListItem Text="22" Value="22"></asp:ListItem>
                        <asp:ListItem Text="23" Value="23"></asp:ListItem>
                        <asp:ListItem Text="24" Value="24"></asp:ListItem>
                        <asp:ListItem Text="25" Value="25"></asp:ListItem>
                        <asp:ListItem Text="26" Value="26"></asp:ListItem>
                        <asp:ListItem Text="27" Value="27"></asp:ListItem>
                        <asp:ListItem Text="28" Value="28"></asp:ListItem>
                        <asp:ListItem Text="29" Value="29"></asp:ListItem>
                        <asp:ListItem Text="30" Value="30"></asp:ListItem>
                        <asp:ListItem Text="30" Value="30"></asp:ListItem>
                        <asp:ListItem Text="30" Value="31"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="ButtonSave" CssClass="btn btn-primary" runat="server" Text="Save"
                        OnClick="ButtonSave_Click" />
                </td>
                <td>
                    <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                </td>

            </tr>
        </table>
    </div>

    <div class="container">
        <div class="row">
            <table class="table">

                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <h5><%# Eval("pagetitle")%></h5>
                            </td>
                            <td>
                                <a href="newspaperdetails.aspx?pagetitle=<%#Eval("pagetitle")%>" target="_blank" class="btn btn-success btn-sm">Add Details</a>
                            </td>
                            <td>
                                <asp:Button ID="ButtonDelete" CssClass="btn btn-danger btn-sm" runat="server"
                                    Text="Delete" CommandArgument='<%# Eval("npid")%>' CommandName="Delete" OnClientClick="return confirm('Do you want to delete this Page?');" />

                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </div>
</asp:Content>
