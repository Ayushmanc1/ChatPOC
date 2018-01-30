<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChatBotService._Default" %>
<!DOCTYPE html>
<html lang="en">
<head >
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>GIMIS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="Content/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    
    <style type="text/css">
    .chat
{
    list-style: none;
    margin: 0;
    padding: 0;
}

.chat li
{
    margin-bottom: 10px;
    padding-bottom: 5px;
    border-bottom: 1px dotted #B3A9A9;
    grid-auto-rows:auto;
}

.chat li.left .chat-body
{
    margin-left: 60px;
}

.chat li.right .chat-body
{
    margin-right: 60px;
}


.chat li .chat-body p
{
    margin: 0;
    color: #777777;
}

.panel .slidedown .glyPlaceHolder1icon, .chat .glyPlaceHolder1icon
{
    margin-right: 5px;
}

.panel-body
{
    overflow-y: scroll;
    height: 430px;
}

::-webkit-scrollbar-track
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    background-color: #F5F5F5;
}

::-webkit-scrollbar
{
    width: 12px;
    background-color: #F5F5F5;
}

::-webkit-scrollbar-thumb
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
    background-color: #555;
}

    </style>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.alert = function () { };
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css) {
            if (css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="' + css + '" type="text/css" />');
            else $('head > link').filter(':first').replaceWith(defaultCSS);
        }
        $(document).ready(function () {
            x = document.getElementById("panel-body");
            //h = x.clientHeight;
            a = x.scrollHeight;
            x.scrollTo = a;
            //self.scrollTo(0, h);
            var iframe_height = parseInt($('html').height());
            window.parent.postMessage(iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<body style="background-image: url('assets/images/background1/100302337-hsbc_hq_getty_1910x1000.jpg')">
        <form id="form1" runat="server">
	<div class="container">
    <div class="row">
        <div class="col-md-5">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="glyPlaceHolder1icon glyPlaceHolder1icon-comment"></span> Chat
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                            <span class="glyPlaceHolder1icon glyPlaceHolder1icon-chevron-down"></span>
                        </button>
                        <ul class="dropdown-menu slidedown">
                            <li><a href="#"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-refresh">
                            </span>Refresh</a></li>
                            <li><a href="#"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-ok-sign">
                            </span>Available</a></li>
                            <li><a href="#"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-remove">
                            </span>Busy</a></li>
                            <li><a href="#"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-time"></span>
                                Away</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-off"></span>
                                Sign Out</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="panel-body" style='overflow:scroll';>
                    <ul class="chat">
                        <% int i = System.DateTime.Now.Hour;
    string data = "";
    if (i >= 0 & i <= 11)
    {
        data = "Good Mooring";
    }
    else if (i >= 12 & i <= 16)
    {
        data = "Good Afternoon";
    }
    else if (i >= 17 & i <= 20)
    {
        data = "Good Evening";
    }
    else
    {
        data = "Good Evening";
    }
    if (Session["Chat"] == null)
    {
        Session["Chat"] = "Hi," + data + " Prakash ZALKIKAR I am <b>GAssist</b> and I am here to assist you with any questions related to Resource Requisition and Leave module of GIMS system. I also can help you to quickly create new Resource Requisition request and see the status of all your Resource Requisitions.Let's get started...";
    }

    if (Session["Chat"] != null)
    {
        string[] chat = Session["Chat"].ToString().Split(':');
        for (int ii = 0; ii < chat.Length;ii++)
        {
            if (chat[ii] != "")
            {
                                %>
                        <li class="left clearfix">
                            <span class="chat-img pull-left"><img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" /></span>
			<span class="chat-img pull-left">
                      
                        </span>
                            <div class="chat-body clearfix">
                                <div class='header'>
                                     
                                </div>
                                <p>
                                   <%=chat[ii] %>
                                </p>
                            </div>
                        </li>
                        <%
                                    }
                                }
                            }

                            %>

                        <asp:PlaceHolder ID="PlaceHolder1" runat="server" ViewStateMode="Enabled"></asp:PlaceHolder>
                        
                    </ul>
                </div>
                    
                <div class="panel-footer">
                    <div class="input-group">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control input-sm" placeholder="Type your message here..."></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" class="btn btn-warning btn-sm"/>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

	<script type="text/javascript">

</script>
            </form>     
</body>
</html>

