<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AngJobs.com landing page</title>
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
                countdownTime: '2014,10,1',
                brand: 'AngJobs.com ',
                description: 'AngularJs developer - the most trending frontend job in the world.',
                brief: 'I believe AngularJs is the best space to be in at the moment and it will become even bigger next year! Subscribe to get invited when we launch.'
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
        <p id="copyright">2014</p>
        <p class="credits">Built using <a href="https://github.com/victorantos/Simple-landing-page" target="_blank">SimpleLandingPage</a> by <a href="http://victorantos.com" target="_blank" >victorantos</a></p>
    </div>

    <script src="data/countdown.min.js"></script>
    <script src="landing.min.js"></script>
</body>
</html>
