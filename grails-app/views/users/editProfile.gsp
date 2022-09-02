
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="creative-writing.png" type="image/x-ico"/>
    <title>Edit Profile</title>
</head>

<body>

%{--Navbar--}%
<nav class="navbar navbar-expand-lg nav nav1">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%"
           href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt=""
                                                                                width="200%"/></a>




        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="search-box"
                   size="150">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach"
                                                                                          class="icon"/></button>
        </form>

        %{--        //dropdown--}%
        <div class="dropdown" >
            <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" style="margin:1rem">
                <asset:image src="me.png" class="icon"/> Krishna
            </button>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="font-weight: bolder">
                <g:link controller="users" action="editProfile" id=""><asset:image src="me.png"
                                                                                   class="icon"/> Profile</g:link>
                <g:link controller="users" action="editProfile" id=""><asset:image src="user.png"
                                                                                   class="icon"/> Users</g:link>
                <g:link controller="topics" action="topicShow" id="topicShow"><asset:image src="list.png"
                                                                                           class="icon"/> Topics</g:link>
                <g:link controller="users" action="editProfile" id=""><asset:image src="writing.png"
                                                                                   class="icon"/>Posts</g:link>
                <g:link controller="users" action="logout" id="logout">
                    <asset:image src="logout.png" class="icon"/> Logout</g:link>

            </div>
        </div>
    </div>
</nav>

<div id="universal-div">

%{--User Details--}%
<div class="container-fluid col-lg-5 col-md-11 scroller" style="position:relative;top:3rem;left:1rem;">

    <table class="customTable  customContainer">
        <thead class="customHead">
        <th class="customHead thead-hover hover-dark" colspan="2"><strong>Krishna</strong></th>
        </thead>
        <tbody class="">
        <tr class="hover-dark" style="height:fit-content">
            <td>
                <asset:image src="krishna.jpg" alt="profile pic" class="img1"/>

            </td>
            <td style="width:97%">
                <h5 style=" display:inline ">Krishna</h5>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="" style="font-weight:normal;position:absolute;">@Krishna</a>

                <table class="innerTable">
                    <tr>
                        <td class="innerCell">Subscriptions</td>
                        <td class="innerCell">Topics</td>
                    </tr>
                    <tr>
                        <td class="innerCell"><a href="">
%{--                            ${subsList.size()}--}%
                        </a></td>
                        <td class="innerCell"><a href="">
%{--                            ${topicList.size()}--}%
                        </a></td>
                    </tr>
                </table>
            </td>
        </tr>
        </tbody>
    </table>

</div>

%{--Profile--}%
<div class=" container container-fluid col-6   " style="position: relative;left:4rem;">
    <form action="register"  method="post" target="" enctype="multipart/form-data">
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Profile</strong></th>

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
                    <label for="username">Username*</label>
                </td><td> <input required="required" class="form-control" name="username"  type="text" value="" />
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
                    <input type="submit" name="register" class="right-align btn btn-success" value="UPDATE"/>
                </td>

            </tr>



            </tbody>
        </table>
    </form>
</div>

%{--Topics--}%
<div class="container-fluid col-lg-5 " style="position:relative;bottom:1rem;left:1rem;">
<table class="customTable  customContainer" >
    <thead class="">
    <th class="customHead thead-hover hover-dark" colspan="2"><strong>Trending Topics</strong></th>
    </thead>
    <tbody class="">



    <tr class="hover-dark">
        <td>
            <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>

        </td>
        <td style="width:100%;">

            <input type="text" style="border-radius: 5px">
            <button class="btn-primary btn ">Save</button>
            <button class="btn-danger btn ">Cancel</button>
            <br>
            <a href="">@Grails</a>

            <table class="innerTable">

                <tr>
                    <td class="innerCell">@nikhil   </td>
                    <td class="innerCell">Subscriptions</td>
                    <td class="innerCell">Post</td>
                </tr>
                <tr>
                    <td class="innerCell"><a href="">unsubscribe</a></td>
                    <td class="innerCell"><a href="">50</a></td>
                    <td class="innerCell"><a href="">30</a></td>
                </tr>
            </table>



            %{--                     %{--        //seriousness--}%
            <div class="dropdown ">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Seriousness
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"> 😎 Causual</a>
                    <a class="dropdown-item" href="#"> 😐 Serious</a>
                    <a class="dropdown-item" href="#">😳 Very Serious</a>
                </div>
            </div>

            %{--                        Visibility--}%
            <div class="dropdown ">
                <button class="btn btn-danger dropdown-toggle" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Visibility
                </button>
                <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#"> <asset:image src="public.png" class="icon"/> Public</a>
                    <a class="dropdown-item" href="#"> <asset:image src="private.png" class="icon"/> Private</a>
                </div>
            </div>

            <asset:image src="email.png" class="icon" alt="invite"></asset:image>
            <asset:image src="writing.png" class="icon" alt="write"></asset:image>
            <asset:image src="delete.png" class="icon" alt="delete"></asset:image>

        </td>

    </tr>

    </tbody>
</table>
</div>

%{--Change password--}%
<div class="container-fluid col-6   " style="position: relative;left:4rem;bottom: 3rem;">
    <form action="register"  method="post" target="" enctype="multipart/form-data">
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Change Password</strong></th>

            </thead>

            <tbody>


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
                <td></td>
                <td>
                    %{--                    <g:submitButton name="register" type="submit" class=" right-align btn btn-success" value="REGISTER" />--}%
                    <input type="submit" name="register" class="right-align btn btn-success" value="UPDATE"/>
                </td>

            </tr>



            </tbody>
        </table>
    </form>
</div>
</div>
</body>
</html>