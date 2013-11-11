<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>

<dnn:META runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="css/bootstrap.css" PathNameAlias="SkinPath" Priority="7" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/bootstrap.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />

<!-- 17751110 0:dark:30 <div id="siteWrapper"> -->
<!-- wrap surrounds upper page content -->
<div id="wrap">

    <% If Request.IsAuthenticated Then%>
            <%-- ' HACK - user-navbar: simply show if user is authenticated --%>
            <%-- ' determine is someone has logged into the site --%>
            <%-- ' TODO - user-navbar: create dynamic show/hide and menu options logic, likely to include user roles --%>
    <div class="user-navbar navbar-default logged-in" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="userbar-header">
                <div class="login-id">
                    Logged in as
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="true" />
                </div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".userbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- Nav links for client services -->
            <div class="collapse navbar-collapse userbar navbar-right">
                <dnn:MENU ID="privateMenu" runat="server" MenuStyle="BootstrapMenu" NodeSelector="Secure Home Page, 0"></dnn:MENU> 
                <%-- 
                    <ul class="nav user-nav">
                        <li class="active"><a href="#">Link</a></li>
                        <li><a href="#">Link</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                        <!-- removed for UX -->
                        <!-- <li><a href="#">Logout</a></li> -->
                    </ul>
                --%>
                <!-- /.replaced-user-menu -->
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </div>
    <!-- /.userbar-header -->
    <% End If  ' /.show-hide userbar-header%>

    <!-- Public Static navbar -->
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/home.aspx">
                    <img class="img-responsive" src="/Portals/0/img/ARM-small.fw.png" alt="Affirmative Risk Management"></a>
                <div class="pull-right">
                    <p class="navbar-text pull-right">Tel: 501-228-0900</p>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <% ' TODO - style LOGIN Token to match Bootstrap navbar-btn %>
                            <%-- class="btn btn-green navbar-btn pull-right" --%>
                            <dnn:LOGIN ID="BS3Login" runat="server" LegacyMode="true" />
                        </li>
                    </ul>

                    <%-- 
                        <!-- TODO: Big Difference here from original design -->
                        <!-- Insert DNN Code Here -->
                        <div id="userControls" class="wrapper">
                            <div id="login">
                                <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                            </div>
                            <!--/login-->
                            <div class="clear"></div>
                        </div>
                        <!--/userControls-->
                        <!--/Insert -->

                        <!-- EDIT (use secondary menu: defer until basic layourt is working)
				        <a class="btn btn-green navbar-btn pull-right" data-toggle="modal" href="#login-modal">Login</a> -->
                    --%>
                    <%--  
                        <!-- Modal -->
                        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">ARM Login</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" action="#" name="login_form">
                                            <div class="alert alert-danger">
                                                <a class="close" data-dismiss="alert" href="#">&times;</a>Incorrect Email or Password!
                                            </div>
                                            <p>
                                                <input type="email" class="form-control" id="login-email" placeholder="Email Address">
                                            </p>
                                            <p>
                                                <input type="password" class="form-control" name="login-password" placeholder="Password">
                                            </p>
                                            <p>
                                                <a class="login-forgot-pw" href="#">Forgot Password?</a>
                                                <button type="submit" class="btn btn-green pull-right">Login</button>
                                            </p>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        New To ARM? <a href="#">Create an Account</a>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>
                        <!-- /.modal -->
                    --%>
                    <div class="divider pull-right"></div>
                </div>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <!-- DNN Menu here  -->
            <% ' TODO - Style menu to match ARM HTML site %>
            <div class="navbar-collapse main-navbar collapse">
                <dnn:MENU ID="MENU1" MenuStyle="BootstrapMenu" runat="server" NodeSelector="Home,0"></dnn:MENU>
                <%-- 
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Services <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Claims Services</li>
                                <li><a href="#">Auto</a></li>
                                <li><a href="#">Aviation/Airports</a></li>
                                <li><a href="#">Cargo</a></li>
                                <li><a href="#">Commercial Property</a></li>
                                <li><a href="#">Diesel Trucks & Trailers</a></li>
                                <li><a href="#">Heavy Equipment</a></li>
                                <li><a href="#">Liability</a></li>
                                <li><a href="#">Residential Property</a></li>
                                <li><a href="#">Third Party Administrator</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Insurance Expert Witness</li>
                                <li><a href="#">Insurance Expert Witness Site</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">People <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Our Team</a></li>
                                <li><a href="#">Careers</a></li>
                            </ul>
                        </li>
                        <li><a href="#">News</a></li>
                        <li><a href="#">Salvage</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                --%>
            </div>
            <!--/.navbar-static-top -->
        </div>
    </div>
    <!-- / Public Static navbar -->

    <!-- Recruitment tab / No Container -->
    <%  'TODO - Hiring Tab: CSS image missing  
        'TODO - Hiring Tab: Figure out way to toggle Hiring Tab on/off %>
    <a id="hiring_tab" style="overflow-x: hidden" href="#">We are Hiring!</a>
    <!-- / Recruitment tab -->

    <div class="container">
        <div class="row">
            <%-- ************* DNN Pane: pageHeaderImage ********************* --%>
            <div id="pageHeaderImage" runat="server" class="main-image col-lg-12">
                <!-- <img class="img-rounded img-responsive" src="img/home.fw.png"> -->
                <% 'TODO - Determine if class "main-image" be used in HTML module instead of DNN Pane Div %>
            </div>
            <!-- / DNN Pane: pageHeaderImage -->
        </div>

        <%-- ************* DNN Pane: contentPane (page default) ********************* --%>
        <div class="row">
            <div id="contentPane" runat="server" class="col-lg-12"></div>
        </div>
        <!-- / Row - DNN Pane: contentPane -->
                
        <div class="row">
            <div id="main-body" class="col-md-6">
                <%-- ************* DNN Pane: leftPane ********************* --%>
                <div id="leftPane" runat="server"></div>
            </div>
            <%-- ************* DNN Pane: rightPane ********************* --%>
            <div id="rightPane" runat="server" class="col-md-6"></div>
        </div>
        <!-- / Row - DNN Pane Cols(2): leftPane and rightPane -->
    </div>
    <!-- / Container -->

    
    <div id="home-associations" class="light-grey-wide">
        <%  'TODO - Will this work? build rows inside of HTML module  %>
        <%-- ************* DNN Pane: associationsPane ********************* --%>
        <div id="associationsPane" runat="server">
            <%--<div id="associations" class="container">
            <div class="row">
              <div class="col-md-12">
                  <h3>Associations and Memberships</h3>
              </div>
            </div>

	        <div class="row">
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/aamga-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
            
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/dri-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
            
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/naiia-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
        
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/napslo-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
            
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/nthecc-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
            
              <div class="col-xs-4 col-md-2">
                <img src="img/dummy/tida-logo-grey.fw.png" class="img-responsive" alt="">
              </div>
            </div>
        </div>--%>
        </div>
        <!-- / DNN Pane: associationsPane -->
    </div>
    <!-- / home-associations -->

    <div class="container">
        <div id="meet-team" class="row">
            <%-- ************* DNN Pane: meetTeamPane ********************* --%>
            <div id="meetTeamPane" runat="server" class="col-med-12">
                <%-- <h3>Looking for someone in particular? <a class="btn btn-lg btn-green" href="#">Meet Our Team</a></h3> --%>
            </div>
        </div>
        <!-- / DNN Pane: meetTeamPane -->
    </div>
    <!-- /container -->
</div>
<!-- /wrap -->

<!-- Footer -->
<div id="footer" class="dark-grey-wide">
    
    <div class="container">
    <div class="row">
        <%-- ************* DNN Pane: footerNav ********************* --%>
        <div id="footerNav" runat="server" class="col-sm-12 col-md-6">
            <%-- <p class="footer-links"><a href="#">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Services</a> &middot; <a href="#">People</a> &middot; <a href="#">News</a> &middot; <a href="#">Salvage</a> &middot; <a href="#">Contact</a></p> --%>
        </div>
          
        <%-- ************* DNN Pane: footerAddress ********************* --%>
        <div id="footerAddress" runat="server" class="col-xs-6 col-md-3">
            <%-- <address>
                <strong>Affirmative Risk Management</strong><br>
                P.O. Box 24407 (72221)<br>
                4016 Stannus Street<br>
                Little Rock, AR 72204<br>
            </address> --%>
        </div>

        <%-- ************* DNN Pane: footerPhone ********************* --%>
        <div id="footerPhone" runat="server" class="col-xs-6 col-md-3">
            <%-- <address>
                Tel: 501-228-0900<br>
                Fax: 501-228-0967<br>
                Email: arm@armusa.net
            </address> --%>
        </div>
          
    </div>
    <!-- / row -->
    </div> 
    <!-- /container -->
</div>
<!-- /footer -->
    
<div id="black-wide">

    <div class="container">
    <div class="row">
        <%-- ************* DNN Pane: bottomPageLeft ********************* --%>
        <div id="bottomPageLeft" runat="server" class="col-md-6 copyright">
        <%-- <p class="">Affirmative Risk Management © 2013. All rights reserved.</p> --%>
        </div>

        <%-- ************* DNN Pane: bottomPageRight ********************* --%>
        <div id="bottomPageRight" runat="server" class="col-md-6 terms">
        <%-- <a class="" href="#">Terms of Use</a> --%>
        </div>
    </div>
    <!-- / row -->
    </div> 
    <!-- /container -->
</div>
<!-- / black-wide -->
