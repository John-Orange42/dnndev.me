<%@ Control Language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<%@ Register TagPrefix="dnn" TagName="Meta" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<dnn:META runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:DnnCssInclude ID="DnnCssInclude1" runat="server" FilePath="css/bootstrap.css" PathNameAlias="SkinPath" Priority="7" />
<dnn:DnnJsInclude ID="DnnJsInclude1" runat="server" FilePath="js/bootstrap.js" PathNameAlias="SkinPath" ForceProvider="DnnFormBottomProvider" />

<div id="siteWrapper"> <!-- ??? -->

    <!-- Wrap all page content here -->
    <div id="wrap">
        <div class="user-navbar navbar-default logged-in" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="userbar-header">
                    <div class="login-id">Logged in as
                        <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
                    </div>
                </div>
                <!-- Nav links for client services -->
                <div class="collapse navbar-collapse userbar navbar-right">
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
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </div>

        <!-- Static navbar -->
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand img-responsive" href="#">
                        <dnn:LOGO runat="server" id="dnnLOGO" />
                        <!-- <img class="img-responsive" src="img/ARM-small.fw.png" alt="Affirmative Risk Management"> -->
                    </a>
                    <div class="pull-right">
                        <p class="navbar-text pull-right">Tel: 501-228-0900</p>

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

                        <!-- Modal -->
                        <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <h4 class="modal-title">ARM Login</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form method="post" action="" name="login_form">
                                            <div class="alert alert-danger">
                                                <a class="close" data-dismiss="alert" href="#">&times;</a>Incorrect Email or Password!
                                            </div>
                                            <p>
                                                <input type="email" class="form-control" id="login-email" placeholder="Email Address"></p>
                                            <p>
                                                <input type="password" class="form-control" name="login-password" placeholder="Password"></p>
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
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>

        <!-- Recruitment tab -->
        <!-- TODO - make this a layout pane -->
        <a id="hiring_tab" style="overflow-x: hidden" href="#">We are Hiring!</a>

        <div class="container">

            <!-- Main image and slogan -->
            <div id="mainImagePane" class="main-image col-lg-12" runat="server">
                <!-- <img class="img-rounded img-responsive" src="img/home.fw.png"> -->
            </div>


            <div id="contentPane" class="container" runat="server"></div>
            
		<!-- /container -->
        </div>

		<div id="home-associations" class="light-grey-wide">

            <div id="associations" runat="server"></div>

        </div>
        
		<div class="container">
                
			<div id="meet-team" class="row">
				
				<div id="meetTeamPane" runat="server"></div>
			
			</div>

        </div>      
		<!-- /container -->
        
	</div>
    <!-- /wrap -->

    <!-- Footer -->

    <div id="footer" class="dark-grey-wide">
	
		<div id="footer" runat="server"></div>
		
	</div>

    <div id="black-wide">
		
		<div id="blackWidePane" runat="server">
	
	</div>
	
	
<!--/siteWrapper-->
</div>