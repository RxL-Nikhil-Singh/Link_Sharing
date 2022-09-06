<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
%{--    <meta name="layout" content="LinkSharingLayout" />--}%
    <asset:link rel="icon" href="home.png" type="image/x-ico"/>
    <title>AJAX</title>


    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>

<a href="javascript:void(0)" onclick="myFunction()">Click Here</a>
<a href="" onclick="myFunction()">Click Me Too</a>




<asset:javascript src="application.js"/>
<asset:javascript src="jquery-3.6.0.js"/>
<asset:javascript src="jquery-3.2.1.slim.min.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>
<script>
    function myFunction(){
        $("body").html("Hey Radhey, Plese Save me")
    }
</script>
</body>
</html>