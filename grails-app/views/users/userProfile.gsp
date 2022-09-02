
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="me.png" type="image/x-ico"/>
    <title>user Profile</title>
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
    <div class="container-fluid col-5 scroller" style="position:relative;left:2rem;bottom:46rem;">

        <table class="customTable  ">
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

%{--Posts--}%
<div class="container-fluid col-6 customContainer  bigScroller inbox">

        <table class="customTable ">
            <thead class="">
            <th class="customHead thead-hover hover-dark"><strong>Posts</strong></th>

            <form class="d-flex" role="search"></form>
            <th class="customHead thead-hover hover-dark">
                <input style="position:relative; left: 6rem;top:0.5rem;" class="form-control me-2" type="search"
                       placeholder="Search" aria-label="Search" style="display:inline" size="5">
            </th>
            <th class="customHead thead-hover hover-dark"><button style="position:relative; left:3rem;"
                                                                  class="btn btn-outline-success searchIcon" type="submit" style="display:inline">
                <asset:image src="search.png" alt="search" class="icon"/>
            </button>
            </th>
            </thead>
            <tbody class="">

            <g:each in="${0..5}">
                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <a href="https://www.instagram.com/alberteinstein/?hl=en"
                               style="font-weight:bold">&nbsp;Krishna</a>

                            <p>“Krishna”</p>

                            <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                            <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                            <asset:image src="google.png" class="icon" alt="google"></asset:image>

                            <span class="">
                                <a href="" style="margin:0 0.2em; position:absolute; right:22rem;">Download</a>
                                <a href="" style="margin:0 0.2em; position:absolute; right:15rem;">view full site</a>
                                <a href="" style="margin:0 0.2em; position:absolute; right:8rem;">mark as read</a>
                                <a href="" style="margin:0 0.2em; position:absolute; right:2rem;">view post</a>
                            </span>
                        </div>
                    </td>
                </tr>
            </g:each>

            </tbody>
        </table>

</div>





%{--Topics--}%
<div class="container-fluid col-5 customContainer right-align" style="position:relative;left:2rem;bottom:55rem;">

    <table class="customTable ">
        <thead class="customHead">
        <th class="customHead thead-hover hover-dark" colspan="2"><strong>Topics</strong></th>

        </thead>

        <tbody>

            <tr class="hover-dark">

                <td style="width:100%;">

                    <table class="innerTable">

                        <tr>
                            <td class="innerCell"><a href="">Grails</a> </td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell">
                                %{--                     %{--        //seriousness--}%
                                <div class="dropdown buttonMargin">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Seriousness
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#"> 😎 Causual</a>
                                        <a class="dropdown-item" href="#"> 😐 Serious</a>
                                        <a class="dropdown-item" href="#">😳 Very Serious</a>
                                    </div>
                                </div>

                                <asset:image src="email.png" class="icon" alt="invite"></asset:image>
                            </td>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>

                    <br>
            </tr>

        <tr class="hover-dark">

            <td style="width:100%;">

                <table class="innerTable">

                    <tr>
                        <td class="innerCell"><a href="">Grails</a> </td>
                        <td class="innerCell">Subscriptions</td>
                        <td class="innerCell">Post</td>
                    </tr>
                    <tr>
                        <td class="innerCell">
                            <a href="">Subscribe</a>
                        </td>
                        <td class="innerCell"><a href="">50</a></td>
                        <td class="innerCell"><a href="">30</a></td>
                    </tr>
                </table>

                <br>
        </tr>
        </tbody>
    </table>

</div>


<div class="col-6">

</div>


%{--Subscriptions--}%
<div class="container-fluid col-5 customContainer right-align " style="position:relative;left:2rem;bottom:53rem;">

        <table class="customTable ">
            <thead class="customHead">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Subscriptions</strong></th>

            </thead>

            <tbody>

            <g:each in="${1..2}">
            <tr class="hover-dark">

                <td style="width:100%;">

                    <table class="innerTable">

                        <tr>
                            <td class="innerCell"><a href="">Grails</a> </td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell">
                                %{--                     %{--        //seriousness--}%
                                <div class="dropdown buttonMargin">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Seriousness
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#"> 😎 Causual</a>
                                        <a class="dropdown-item" href="#"> 😐 Serious</a>
                                        <a class="dropdown-item" href="#">😳 Very Serious</a>
                                    </div>
                                </div>

                                <asset:image src="email.png" class="icon" alt="invite"></asset:image>
                            </td>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>

                    <br>
            </tr>
            </g:each>
            </tbody>
        </table>

</div>
</div>
</body>
</html>