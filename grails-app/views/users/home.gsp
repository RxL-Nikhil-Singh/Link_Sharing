
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="home.png" type="image/x-ico"/>
    <title>Home</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body class="homeBody">


<nav class="navbar navbar-expand-lg nav nav1" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%" href="http://localhost:7070/users/home"><asset:image src="LINK-SHARING-4-8-2022.png" alt="" width="160%"/></a>

        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="search-box" size="150">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach" class="icon"/></button>
        </form>

    </div>
</nav>




<div class="container-fluid col-6 customContainer scroller" id="recentSearches" >

    <table class="customTable   " >
        <thead class="">
        <th class="customHead thead-hover hover-dark">Recent Searches</th>

        </thead>
        <tbody class="">



        <g:each in="${resList}">
            <tr class="hover-dark">

                <td>
                <div  class="container-fluid">
                <g:link  controller="users" action="home" method="post" >
                    <asset:image name="userProfile" src="ProfilePictures/${it.createdBy.photo}"  class="img1" alt="profile pic"></asset:image>
                </g:link>
                    <strong>${it.createdBy.firstName}&nbsp; ${it.createdBy.lastName} </strong>
                    <g:link controller="users" action="home" method="post" >
                        ${it.createdBy.username}
                    </g:link>
                    <g:link controller="users" action="home" method="post" style="font-weight:normal;position:absolute;right:3rem;">
                        ${it.topic.name}</g:link>

                    <p >${it.description} </p>
                    <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                    <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                    <asset:image src="google.png" class="icon" alt="google"></asset:image>

                </div>
                </td>
            </tr>

        </g:each>

        </tbody>
    </table>


</div>

<!-- login  -->
<button class="btn btn-primary" id="loginBtn"  onclick="loginFunction()" style="position:absolute; top:8rem; right:27rem">Login</button>
<button class="btn btn-success" id="registerBtn"  onclick="registerFunction()" style="position:absolute; top:8rem; right:14rem">Register</button>



<div class="container-fluid col-5 customContainer fieldcontain" id="loginPanel">
    <g:form controller="users" action="login" method="post" target="_self" >
        <table class="customTable "  >
            <thead class="" >
            <th colspan="2" class="customHead  hover-dark"><strong>  Login</strong></th>


            </thead>
            <tbody>


            <tr class="hover-dark" >
                <td >
                    <label for="username">Email/&nbsp;UserName*
                    </label>
                </td>
                <td>
                    <input class="form-control" name="username" type="text" required="required" maxlength="64" value=""  />
                </td>
            </tr>
            <tr class="hover-dark">
                <td>
                    <label for="password">Password*</label>
                </td>
                <td>
                    <input maxlength="32" class="form-control" name="password" type="password"  value="" />
                </td>
            </tr>

            <tr class="hover-dark" style="height:3rem;">
                <td>
                    <g:link > Forgot Password</g:link></td>
            </td>
                <td>

                    <g:submitButton name="login" type="submit" class=" right-align btn btn-primary" value="LOGIN" />
                </td>
            </tr>



            </tbody>
        </table>
    </g:form>
</div>


%{--Register--}%
<div class="container-fluid col-5 customContainer right-align  " id="registerPanel">
    <form action="register"  method="post" target="" enctype="multipart/form-data">
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Register</strong></th>

            </thead>

            <tbody>
            <tr class="hover-dark">
                <td>
                    <label for="firstName">First Name *
                    </label>       </td>
                <td>
                    <input class="form-control" name="firstName" type="text" value="" maxlength="255" required="required"/>

                </td>
            </tr>
            <tr class="hover-dark">
                <td>
                    <label for="lastName">Last name*</label>
                </td><td> <input  class="form-control" name="lastName" maxlength="255"  type="text" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="eMail" >Email*</label>
                </td><td><input required="required" class="form-control" name="eMail" maxlength="64"  type="email" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="username">Username*</label>
                </td><td> <input required="required" class="form-control" name="username" maxlength="32"  type="text" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="password">Password*</label>
                </td><td><input required="required" class="form-control" name="password" maxlength="32" type="password" value="" placeholder="Criteria: Min 5chars, 1digit, 1uppercase, 1lowercase "/>
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="confirmPassword">Confirm Password*</label>  &nbsp;

                </td><td><input required="required" class="form-control" name="confirmPassword" maxlength="32" type="password" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                    <label for="photo">Photo*</label>
                    <br>upto 5MBs <br> .jpg, .png, .jpeg

                </td><td><input type="file"  name="profilePic" class="form-control"  accept=".jpg, .jpeg, .png"/>

            </td>
            </tr>

            <tr class="hover-dark">
                <td></td>
                <td>
%{--                    <g:submitButton name="register" type="submit" class=" right-align btn btn-success" value="REGISTER" />--}%
                    <input type="submit" name="register" class="right-align btn btn-success" value="REGISTER"/>
                </td>

            </tr>



            </tbody>
        </table>
</form>
</div>


%{--Top Posts--}%
<div class="container-fluid col-6 customContainer scroller" id="topPosts" >
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark"><strong >Top Posts</strong>


            </th>
            </thead>

            <tbody>
            <g:each in="${topRatedList}">
                    <tr class="hover-dark">

                        <td>
                            <div  class="container-fluid">
                                <asset:image src="ProfilePictures/${it.createdBy.photo}" class="img1" alt="profile pic"></asset:image>

                                <strong>${it.createdBy.firstName}&nbsp; ${it.createdBy.lastName} </strong>
                                <a href="" style="font-weight:normal; ">@${it.createdBy.username}</a>
                                <a href="" style="font-weight:normal;position:absolute;right:3rem;">${it.topic.name}</a>

                                <p >${it.description} </p>
                                <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                                <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                                <asset:image src="google.png" class="icon" alt="google"></asset:image>

                            </div>
                        </td>
                    </tr>
            </g:each>
            </tbody>
        </table>


</div>


<asset:javascript src="application.js"/>
<asset:javascript src="jquery-3.6.0.js"/>
<asset:javascript src="jquery-3.2.1.slim.min.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>

<script>
    $("body").html="hello"
</script>
</body>
</html>