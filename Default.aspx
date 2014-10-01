<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LandingJs demo</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="data/favicon.ico">
    <link href='http://fonts.googleapis.com/css?family=Arvo' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="data/style.css" />

    <script type="text/javascript">
        window.onload = function () {
            LandingJs.start({
                slide: true,
                slideCount: 5,
                countdown: true,
                countdownTime: '2014,12,1',
                brand: 'Simple landing page',
                description: 'Simple and fast implementation for your landing page',
                brief: 'This is a landing page with bing wallpaper and your configs such a name, description, slideshow and countdown. with landingjs you can launch your coming soon page fast and easy !'
            });
        }

    </script>
</head>
<body>
    <div id="blur"></div>
    <div id="container">
        <h1></h1>
        <h4></h4>
        <form id="aspnet" runat="server">
            <input type="text" name="subscribe" id="subscribe" placeholder="Enter your email here ..." runat="server" />
            <input type="submit" name="notify" id="notify" value="Notify Me" />
        </form>
        <p id="brief"></p>
        <div id="countdown">
        </div>
        <p id="copyright"></p>
    </div>

    <script src="data/countdown.min.js"></script>
    <script src="landing.min.js"></script>
</body>
</html>
