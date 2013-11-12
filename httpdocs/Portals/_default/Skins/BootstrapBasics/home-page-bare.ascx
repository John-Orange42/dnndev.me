<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>

<dnn:META runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:DnnCssInclude ID="DnnCssIncludeBootStrap" runat="server" FilePath="css/bootstrap.css" PathNameAlias="SkinPath" Priority="7" />
<dnn:DnnCssInclude ID="DnnCssIncludeGoogleFontLato" runat="server" FilePath="http://fonts.googleapis.com/css?family=Lato:300,400,700'" Priority="8" />
<dnn:DnnJsInclude ID="DnnJsIncludeBootStrap" runat="server" FilePath="js/bootstrap.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="/Portals/_default/Skins/BootstrapBasics/js/html5shiv.js"></script>
    <script src="/Portals/_default/Skins/BootstrapBasics/js/respond.min.js"></script>
<![endif]-->

<div id="wrap">

    <% If Request.IsAuthenticated Then%>
    <% ' HACK - user-navbar: simply show if user is authenticated %>
    <% ' determine is someone has logged into the site %>
    <% ' TODO - user-navbar: create dynamic show/hide and menu options logic, likely to include user roles %>

    <div class="user-navbar navbar-default logged-in" role="navigation">
        <div class="container">
            <div class="userbar-header">
                <div class="login-id">
                    Logged in as <% ' TODO - dnn:USER tag:  Added CssClass=" " to remove the default class "SkinObject" %>
                    <dnn:USER ID="dnnUser" runat="server" LegacyMode="true" CssClass=" " />
                </div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".userbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse userbar navbar-right">
                <dnn:MENU ID="privateMenu" runat="server" MenuStyle="UserBootstrapMenu" NodeSelector="Secure Home Page, 0"></dnn:MENU>
            </div>
        </div>
    </div>

    <% End If %>
    <% ' /.show-hide userbar-header  %>

    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/home.aspx">
                    <img class="img-responsive" src="/Portals/0/img/ARM-small.fw.png" alt="Affirmative Risk Management"></a>
                <div class="pull-right">
                    <p class="navbar-text pull-right">Tel: 501-228-0900</p>
                    <dnn:LOGIN ID="BS3Login" runat="server" LegacyMode="true" CssClass="btn btn-green navbar-btn pull-right" />
                    <div class="divider pull-right"></div>
                </div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <% ' TODO - Style menu to match ARM HTML site %>
            <div class="navbar-collapse main-navbar collapse">
                <dnn:MENU ID="MENU1" MenuStyle="BootstrapMenu" runat="server" NodeSelector="Home,0"></dnn:MENU>
            </div>
        </div>
    </div>

    <a id="hiring_tab" style="overflow-x: hidden" href="#">We are Hiring!</a>

    <div class="container">
        <div class="row">

            <div id="pageHeaderImage" runat="server" class="main-image col-lg-12">
            </div>

        </div>

        <div class="row">
            <div id="contentPane" runat="server" class="col-lg-12">
            </div>
        </div>

        <div class="row">
            <div id="main-body" class="col-md-6">
                <div id="leftPane" runat="server">
                </div>
            </div>
            <div id="rightPane" runat="server" class="col-md-6">
            </div>
        </div>
    </div>

    <div id="home-associations" class="light-grey-wide">

        <div id="associationsPane" runat="server">
        </div>
    </div>

    <div class="container">
        <div id="meet-team" class="row">
            <div id="meetTeamPane" runat="server" class="col-med-12">
            </div>
        </div>
    </div>
</div>

<div id="footer" class="dark-grey-wide">

    <div class="container">
        <div class="row">
            <div id="footerNav" runat="server" class="col-sm-12 col-md-6">
            </div>

            <div id="footerAddress" runat="server" class="col-xs-6 col-md-3">
            </div>

            <div id="footerPhone" runat="server" class="col-xs-6 col-md-3">
            </div>

        </div>
    </div>
</div>

<div id="black-wide">

    <div class="container">
        <div class="row">
            <div id="bottomPageLeft" runat="server" class="col-md-6 copyright">
            </div>

            <div id="bottomPageRight" runat="server" class="col-md-6 terms">
            </div>
        </div>
    </div>
</div>
