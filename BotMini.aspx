<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BotMini.aspx.cs" Inherits="ChatBotService.BotMini" %>

<!DOCTYPE html>
<html lang="en">
<head >
    <meta charset="utf-8">
    <meta name="robots" content="noindex, nofollow">

    <title>GIMIS</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    
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
    height: 250px;
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
            var iframe_height = parseInt($('html').height());
            window.parent.postMessage(iframe_height, 'https://bootsnipp.com');
        });
    </script>
</head>
<body>
    
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
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-refresh">
                            </span>Refresh</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-ok-sign">
                            </span>Available</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-remove">
                            </span>Busy</a></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-time"></span>
                                Away</a></li>
                            <li class="divider"></li>
                            <li><a href="http://www.jquery2dotnet.com"><span class="glyPlaceHolder1icon glyPlaceHolder1icon-off"></span>
                                Sign Out</a></li>
                        </ul>
                    </div>
                </div>
                <div class="panel-body">
                    <ul class="chat">
                        <li class="left clearfix"><span class="chat-img pull-left">
                            
                        </span>
                            <div class="chat-body clearfix">
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </div>
                        </li>
                        <li class="right clearfix"><span class="chat-img pull-right">
                            
                        </span>
                            <div class="chat-body clearfix">
                                <div class="header">
                                    
                                </div>
                                
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control input-sm" placeholder="Type your message here..."></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button ID="Button1" runat="server" Text="Button"   class="btn btn-warning btn-sm"/>
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
