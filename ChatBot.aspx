<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChatBot.aspx.cs" Inherits="ChatBotService.ChatBot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSBC GAssist - GMIS Conversational Bot</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <style>
        body {
            background: url(C:\Users\achauhan4\source\repos\ChatBotService\ChatBotService\assets\images\home_header-bg.jpg) no-repeat cent center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            overflow: hidden;
        }

    

        .chat-window {
            width: 420px;
            height: 520px;
            position: absolute;
            bottom: 0;
            right: 0;
        }

        .b-agent-demo .b-agent-demo_powered_by {
            display: none !important;
        }

        .b-agent-demo_powered_by {
            visibility: hidden;
        }

            .b-agent-demo_powered_by a {
                visibility: hidden;
            }

        .b-agent-demo.b-agent-demo_powered_by {
            visibility: hidden !important;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">

        <!--div class="row">
            <div class="col-md-6 xol-sm-6">
                <div class="kestra-logo">
                    kestra Logo
                </div>
            </div>
        </div-->
        <div class="chat-window">
            <iframe width="450" height="530" src="Default.aspx"></iframe>
        </div>

    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script>

        $(function () {
            if ('speechSynthesis' in window) {
                speechSynthesis.onvoiceschanged = function () {
                }

                $('#mic').click(function () {
                    var text = $('#query').val();
                    var msg = new SpeechSynthesisUtterance();
                    msg.text = text;
                    speechSynthesis.speak(msg);
                })
            }
        });

    </script>
</form>
</body>
</html>
