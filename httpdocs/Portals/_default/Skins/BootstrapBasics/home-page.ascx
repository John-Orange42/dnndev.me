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
<!-- Wrap Upper page content here (everything but footer) -->
<div id="wrap">
    <% If Request.IsAuthenticated Then%>
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

                <dnn:MENU ID="privateMenu" MenuStyle="BootstrapMenu" runat="server" NodeSelector="Secure Home Page, 0"></dnn:MENU>
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
            </div>
            <!-- /.navbar-collapse -->
        </div>
    </div>
    <% End If%>

    <!-- Static navbar -->
    <div class="navbar navbar-default navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/home.aspx">
                    <img class="img-responsive" src="/Portals/0/img/ARM-small.fw.png" alt="Affirmative Risk Management"></a>
                <div class="pull-right">
                    <p class="navbar-text pull-right">Tel: 501-228-0900</p>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <dnn:LOGIN ID="BS3Login" class="btn btn-green navbar-btn pull-right" runat="server" LegacyMode="true" />
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
            <!-- DNN Menu here (how responsive?) -->
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
            <!--/.nav-collapse -->
        </div>
    </div>

    <!-- Recruitment tab -->
    <!-- TODO - make this a layout pane -->
    <a id="hiring_tab" style="overflow-x: hidden" href="#">We are Hiring!</a>

    <div class="container">
        <%-- ************* mainImagePane ********************* --%>
        <!-- Main image and slogan -->
        <div id="mainImagePane" class="main-image col-lg-12" runat="server">
            <!-- <img class="img-rounded img-responsive" src="img/home.fw.png"> -->
        </div>


        <%-- ************* contentPane ********************* --%>
        <div id="contentPane" class="container" runat="server"></div>

        <!-- /container -->
    </div>

    <div id="home-associations" class="light-grey-wide">

        <%-- ************* associations (Pane) ********************* --%>
        <div id="associations" runat="server"></div>

    </div>

    <div class="container">

        <div id="meet-team" class="row">

            <%-- ************* meetTeamPane ********************* --%>
            <div id="meetTeamPane" runat="server"></div>

        </div>

    </div>
    <!-- /container -->
</div>
<!-- /wrap -->

<!-- Footer -->
<div id="footer" class="dark-grey-wide">
    <div class="container">
        <%-- ************* footerPane ********************* --%>
        <div id="footerPane" runat="server"></div>
    </div>
</div>
<!-- /footer -->

<!-- Footer pt2: black-wide-->
<div id="black-wide">
    <div class="container">
        <div class="row">
            <%-- ************* blackWidePane ********************* --%>
            <div id="blackWidePane" runat="server">
            </div>
        </div>
    </div>
</div>
<!-- HACK What goes there? -->
something has to go here
<!-- /HACK -->
<!--/black-wide-->
<!--TODO  (1) 17751110 0:dark:30 </div> -->
<!-- /siteWrapper-->
