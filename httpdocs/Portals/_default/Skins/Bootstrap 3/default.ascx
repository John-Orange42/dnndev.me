<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %> 
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<dnn:Meta runat="server" Name="viewport" Content="initial-scale=1.0,width=device-width" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="css/bootstrap.css" PathNameAlias="SkinPath" Priority="7" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/bootstrap.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />

    <div class="navbar navbar-inverse">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><%=PortalSettings.PortalName%></a>
        </div>
        <div class="collapse navbar-collapse">
          <dnn:MENU ID="MENU1" MenuStyle="BootstrapMenu" runat="server"></dnn:MENU>
            <ul class="nav navbar-nav navbar-right">
                <li><dnn:LOGIN ID="dnnLogin" class="inline" runat="server" LegacyMode="true" /></li>
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

<div class="container">
    <div class="row">
        <div id="ContentPane" runat="server" class="col-md-12"></div>
    </div>

    <div class="row">
        <div id="LeftPane" runat="server" class="col-md-3"></div>
        <div id="RightPane" runat="server" class="col-md-9"></div>
    </div>
    <div class="row">
        <div id="ThreeColumn1" runat="server" class="col-md-4"></div>
        <div id="ThreeColumn2" runat="server" class="col-md-4"></div>
        <div id="ThreeColumn3" runat="server" class="col-md-4"></div>
    </div>
    <div class="row">
        <div id="FourColumn1" runat="server" class="col-md-3"></div>
        <div id="FourColumn2" runat="server" class="col-md-3"></div>
        <div id="FourColumn3" runat="server" class="col-md-3"></div>
        <div id="FourColumn4" runat="server" class="col-md-3"></div>
    </div>
</div>