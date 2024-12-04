<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication.Presentation.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .image-map-container
        {
            position: relative;
            display: inline-block;
        }
        .image-map-container img
        {
            display: block;
        }
        .image-map-container .map-selector
        {
            left: 0px;
            right: 0px;
            bottom: 0px;
            top: 0px;
            color: #546E7A00;
            transition-duration: .3s;
            transition-timing-function: ease-out;
            transition-property: top, left, right, bottom, color;
        }
        .image-map-container .map-selector.hover
        {
            color: #546E7A80;
        }
        
        .map-selector:after
        {
            content: '';
            position: absolute;
            top: inherit;
            right: inherit;
            bottom: inherit;
            left: inherit;
            background: currentColor;
            transition-duration: .3s;
            transition-timing-function: ease-out;
            transition-property: top, left, right, bottom, background;
            pointer-events: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMainPage" runat="server">
 
    <div style="width: 1020px; margin: 0 auto; min-height: 700px; background-color: White;
        border: 10px solid white" class="shadow">
       
        <div class="container border-bottom mb-3">
            <div class="row d-flex justify-content-between">
                <div>
                    <a class="nav-link urdu active pl-2 pr-2 dropdown-toggle" data-toggle="dropdown"
                        href="#" role="button" aria-haspopup="true" aria-expanded="false">صفحات</a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="Default.aspx?page=1">Front Page</a> <a class="dropdown-item"
                            href="Default.aspx?page=2">Page 2</a> <a class="dropdown-item" href="Default.aspx?page=3">
                                Page 3</a> <a class="dropdown-item" href="Default.aspx?page=4">Page 4</a>
                        <a class="dropdown-item" href="Default.aspx?page=5">Page 5</a> <a class="dropdown-item"
                            href="Default.aspx?page=6">Page 6</a> <a class="dropdown-item" href="Default.aspx?page=7">
                                Page 7</a> <a class="dropdown-item" href="Default.aspx?page=8">Page 8</a>
                    </div>
                </div>
                <div>
                    <div id="currentdate" class="h4">
                    </div>
                </div>
            </div>
        </div>
        <div class="image-map-container">
            <asp:Repeater ID="RepeaterImage" runat="server">
                <ItemTemplate>
                    <img src='<%# Eval("pageimageUrl")%>' alt="News Page Update soon" width="1000" usemap="#newpage" />
                </ItemTemplate>
            </asp:Repeater>
            <%--<img src="ImageHandler.ashx?page=<%#Eval %>>" alt=""  />--%>
            <div class="map-selector">
            </div>
        </div>
    </div>
    <map name="newpage" id="image-map">
        <asp:Repeater ID="RepeaterCoordinate" runat="server">
            <ItemTemplate>
                <area shape="rect" coords="<%# Eval("coordinate") %>" alt="news" href="readnews.aspx?id=<%#Eval("coordinate") %>&&pid=<%#Eval("pagetitle") %>"
                    target="_blank">
            </ItemTemplate>
        </asp:Repeater>
    </map>
</asp:Content>
