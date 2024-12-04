<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addlatestnews.aspx.cs" Inherits="WebApplication.Presentation.admin.addlatestnews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
       <div class="container">
        <div class="row">
            <div class="col-md-6">
                  <table class="table table-borderless">
        <tr>
            <td>
                <asp:TextBox ID="TextBoxNewsTitle" PlaceHolder="Title" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBoxNewsDetails" PlaceHolder="Details" Rows="5" TextMode="MultiLine" runat="server" CssClass="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="FileUploadImage" runat="server" CssClass="form-control"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ButtonSave" runat="server" Text="Save News" CssClass="btn btn-dark" OnClick="ButtonSave_Click" />
            </td>
        </tr>
                      <tr>
                          <td>
                              <asp:Label ID="LabelError" runat="server" Text=""></asp:Label>
                          </td>
                      </tr>
    </table>
            </div>
        </div>
    </div>
</asp:Content>
