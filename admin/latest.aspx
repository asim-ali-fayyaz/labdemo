<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="latest.aspx.cs" Inherits="WebApplication.Presentation.admin.latest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-borderless">
                    <tr>
                        <td>

                            <asp:Button ID="ButtonAddLatestNews" runat="server" Text="Add News" CssClass="btn btn-dark" OnClick="ButtonAddLatestNews_Click" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="col-md-12">
                <table class="table">
                    <asp:Repeater ID="RepeaterLatestNews" runat="server" OnItemCommand="RepeaterLatestNews_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <img src='<%#Eval("thumnail")%>' alt="" width="100" />
                                </td>
                                <td>
                                    <%#Eval("newstitle")%>
                                </td>
                                <td>
                                    <%#Eval("datatime")%>
                                </td>
                                 <td>
                                     <asp:Button ID="ButtonDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" CommandName='<%#Eval("lid")%>' OnClientClick="return confirm('Do you want to delete this Page?');" />
                                </td>
                            </tr>

                        </ItemTemplate>
                    </asp:Repeater>

                </table>
            </div>
        </div>
    </div>

</asp:Content>
