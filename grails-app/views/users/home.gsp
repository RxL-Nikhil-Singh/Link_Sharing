
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="home.png" type="image/x-ico"/>
    <title>Home</title>
</head>

<body class="homeBody">

<nav class="navbar navbar-expand-lg nav nav1" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%" href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt="" width="160%"/></a>

        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="search-box" size="150">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach" class="icon"/></button>
        </form>

    </div>
</nav>




<div class="container-fluid col-6 scroller" id="recentSearches" >

    <table class="customTable  customContainer " >
        <thead class="">
        <th class="customHead thead-hover hover-dark">Recent Searches</th>

        </thead>
        <tbody class="">



        <g:each var="it" in="0..5">
        <tr class="hover-dark">
            <td>
                <div  class="container-fluid">
                    <asset:image src="krishna.jpg" class="img1" alt="profile pic"></asset:image>

                    <strong>Krishna </strong>
                    <a href="" style="font-weight:lighter">@Krishna</a>

                    <p>${rec.description} </p>
                    <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                    <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                    <asset:image src="google.png" class="icon" alt="google"></asset:image>

                    <a href="" class="viewPost">view post</a>
                </div>
            </td>
        </tr>
        </g:each>

        </tbody>
    </table>


</div>

<!-- login  -->
<button class="btn btn-primary" id="loginBtn"  onclick="loginFunction()" style="position:absolute; top:8rem; right:25rem">Login</button>
<button class="btn btn-success" id="registerBtn"  onclick="registerFunction()" style="position:absolute; top:8rem; right:12rem">Register</button>



<div class="container-fluid col-5 customContainer fieldcontain" id="loginPanel">
    <g:form controller="users" action="login" method="post" target="_self" >
        <table class="customTable " >
            <thead class="">
            <th colspan="2" class="customHead thead-hover hover-dark"><strong>  Login</strong></th>


            </thead>
            <tbody>


            <tr class="hover-dark" >
                <td >
                    <label for="username">Email/&nbsp;UserName*
                    </label>
                </td>
                <td>
                    <input class="form-control" name="username" type="text" required="required" value=""  />
                </td>
            </tr>
            <tr class="hover-dark">
                <td>
                    <label for="password">Password*</label>
                </td>
                <td>
                    <g:passwordField class="form-control" name="password" type="password" value="" />
                </td>
            </tr>

            <tr class="hover-dark" style="height:3rem;">
                <td>
                    <a href=""> Forgot Password</a></td>
            </td>
                <td>

                    <g:submitButton name="login" type="submit" class=" right-align btn btn-primary" value="LOGIN" />
                </td>
            </tr>

            <tr class="hover-dark" style="height: min-content">
                <td colspan="2" style="background-color: transparent">
                <span style="color:red; font-weight:bolder; font-size:large; text-align:center">
                    ${flash.message}
                </span>
                </td>

            </tr>

            </tbody>
        </table>
    </g:form>
</div>



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
                    <input class="form-control" name="firstName" type="text" value="" required="required"/>

                </td>
            </tr>
            <tr class="hover-dark">
                <td>
                    <label for="lastName">Last name*</label>
                </td><td> <input required="required" class="form-control" name="lastName" type="text" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="eMail" >Email*</label>
                </td><td><input required="required" class="form-control" name="eMail" type="email" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="username">Username*</label>
                </td><td> <input required="required" class="form-control" name="username"  type="text" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="password">Password*</label>
                </td><td><input required="required" class="form-control" name="password" type="password" value="" placeholder="Criteria: Min 5chars, 1digit, 1uppercase, 1lowercase "/>
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                     <label for="confirmPassword">Confirm Password*</label>  &nbsp;

                </td><td><input required="required" class="form-control" name="confirmPassword" type="password" value="" />
            </td>
            </tr>

            <tr class="hover-dark">
                <td>
                    <label for="photo">Photo*</label>  &nbsp;


                </td><td><input type="file" name="profilePic" class="form-control"/>
            </td>
            </tr>

            <tr class="hover-dark">
                <td></td>
                <td>
%{--                    <g:submitButton name="register" type="submit" class=" right-align btn btn-success" value="REGISTER" />--}%
                    <input type="submit" name="register" class="right-align btn btn-success" value="REGISTER"/>
                </td>

            </tr>

            <tr class="hover-dark" style="height: min-content">
                <td colspan="2" style="background-color: transparent">
                    <span style="color:red; font-weight:bolder; font-size:large; text-align:center">
                        ${flash.message}
                    </span>
                </td>

            </tr>

            </tbody>
        </table>
</form>
</div>

<!--section 2-->

<div class="container-fluid col-6 customContainer" id="topPosts" >
    <form action="" >
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark"><strong >Top Posts</strong>

                <span>
                    <select class="timeline" name="timline" style="font-size:medium">
                        <option value="today">Today</option>
                        <option value="1 week">1 week</option>
                        <option value="1 month">1 month</option>
                        <option value="1 year">1 year</option>
                    </select>
                </span>
            </th>
            </thead>

            <tbody>
            <tr class="hover-dark">
                <td style="width:100%" colspan="2">
                    <div class="container-fluid">
                        <asset:image src="Photograph.jpeg" class="img1" alt="profile pic"></asset:image>
                        <h5></h5>
                        <p>Lorem ipsum dolor sit amet, quis in duis, iaculis id felis. Consectetuer vestibulum, nunc urna lectus, erat ligula. </p>
                        <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                        <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                        <asset:image src="google.png" class="icon" alt="google"></asset:image>
                        <a href="" class="viewPost">view post</a>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>

    </form>
</div>

</body>
</html>