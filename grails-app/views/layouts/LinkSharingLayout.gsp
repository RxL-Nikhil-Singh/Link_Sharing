<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

%{--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"--}%
%{--            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"--}%
%{--            crossorigin="anonymous"></script>--}%

%{--    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"--}%
%{--            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"--}%
%{--            crossorigin="anonymous"></script>--}%

    <title>
    <g:layoutTitle default="Link Sharing"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="worldwide.png" type="image/x-ico"/>



    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>

    <g:layoutHead/>

</head>

<body style="background-color:#EFFFFD">






<g:layoutBody/>

%{--footer code here--}%


%{--<div id="spinner" class="spinner" style="display:none;">--}%
%{--    <g:message code="spinner.alt" default="Loading&hellip;"/>--}%
%{--</div>--}%

<asset:javascript src="application.js"/>
<asset:javascript src="jquery-3.6.0.js"/>
<asset:javascript src="jquery-3.2.1.slim.min.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>
%{--flash message--}%
<div id="flash" onmouseenter="myFunction()">
    <table>
        <span style="margin:2px;align-content: center"> <asset:image src="bell.gif" class="icon"/>Notification<asset:image src="bell.gif" class="icon"/>
            <button title="popups auto-disappear in 5seconds" class="btn" onclick="myFunction2()" style="position:relative; left:12rem;">
            <asset:image src="close.png" class="icon"></asset:image> </button><br><hr>
        </span>

        <span style="margin:2px; font-family: cursive; color:black;">
            ${flash.message}
        </span>
    </table>
</div>

</body>
</html>
