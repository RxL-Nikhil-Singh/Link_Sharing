
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="me.png" type="image/x-ico"/>
    <title> user profile</title>
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
        <div class="dropdown">
            <button class="btn btn-warning dropdown-toggle" type="button"  data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" style="margin:1rem" id="profileButton">
                <asset:image src="me.png" class="icon"/> ${user.firstName}
            </button>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="font-weight: bolder">
                <g:link controller="users" action="editProfile" id=""><asset:image src="me.png"
                                                                                   class="icon"/> Profile</g:link>
                <g:if test="${user.admin}">
                    <g:link controller="users" action="editProfile" id=""><asset:image src="user.png"
                                                                                       class="icon"/> Users</g:link>
                    <g:link controller="topics" action="topicShow" id="topicShow"><asset:image src="list.png"
                                                                                               class="icon"/> Topics</g:link>
                    <g:link controller="users" action="editProfile" id=""><asset:image src="writing.png"
                                                                                       class="icon"/> Posts</g:link>
                </g:if>
                <g:link controller="users" action="logout" id="logout">
                    <asset:image src="logout.png" class="icon"/> Logout</g:link>

            </div>
        </div>
    </div>
</nav>

<div id="universal-div">

    %{--User Details--}%
    <div class="container-fluid col-5 scroller" style="position:relative;bottom:11rem;">

        <table class="customTable  ">
            <thead class="customHead">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>${user.firstName} </strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image src="ProfilePictures/${user.photo}" alt="profile pic" class="img1"/>

                </td>
                <td style="width:97%">
                    <h5 style=" display:inline "> ${user.firstName} ${user.lastName}</h5>
                    &nbsp;&nbsp;&nbsp;&nbsp;

                    <table class="innerTable">
                        <tr>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Topics</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">
                            ${user.subscription.size()}
                            </a></td>
                            <td class="innerCell"><a href="">
                                ${publicTopicList.size()+privateTopicList.size() }
                            </a></td>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

    </div>

%{--Posts--}%
<div class="container-fluid col-6 customContainer  midScroller inbox">

        <table class="customTable ">
            <thead class="">
            <th class="customHead thead-hover hover-dark"><strong>Posts of ${user.firstName}</strong></th>

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

            <g:each in="${resList}">
                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <a href="https://www.instagram.com/alberteinstein/?hl=en"
                               style="font-weight:bold">&nbsp;${it.topic.name}</a>

                            <p>“${it.description}”</p>

                            <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                            <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                            <asset:image src="google.png" class="icon" alt="google"></asset:image>

                            <span class="">
                                <a href="" style="margin:0 0.2em; position:absolute; right:22rem;">Download</a>
                                <a href="" style="margin:0 0.2em; position:absolute; right:15rem;">view full site</a>
                                <a href="" style="margin:0 0.2em; position:absolute; right:8rem;">mark as read</a>
                <g:link params='[resource: "${it.id}"]' controller="resources" action="post" >
                    view post
                    </g:link>
                            </span>
                        </div>
                    </td>
                </tr>
            </g:each>

            </tbody>
        </table>

</div>





%{--Topics--}%
<div class="container-fluid col-5 customContainer right-align scroller" style="position:relative;bottom:18rem;">

    <table class="customTable ">
        <thead class="customHead">
        <th class="customHead thead-hover hover-dark" colspan="2"><strong>Topics</strong></th>

        </thead>

        <tbody>
            <g:each in="${publicTopicList}">
            <tr class="hover-dark">

                <td style="width:100%;">

                    <table class="innerTable">

                        <tr>
                            <td class="innerCell">
                                <g:link params='[topic: "${it.id}"]' controller="topics" action="topicShow"  >
                                    ${it.name}
                                </g:link>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell">

                    <g:if test="${!(user.id==it.createdBy.id)}">
                                Subscribe

                    </g:if>
                                <asset:image src="email.png" class="icon" alt="invite"></asset:image><br>
                                %{--                     %{--        //seriousness--}%
                                <div class="dropdown buttonMargin">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Seriousness
                                    </button>



                                <br>
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#"> 😎 Causual</a>
                                    <a class="dropdown-item" href="#"> 😐 Serious</a>
                                    <a class="dropdown-item" href="#">😳 Very Serious</a>
                                </div>
                            </div>
                            </td>
                            <td class="innerCell"><a href="">${it.subs.size()}</a></td>
                            <td class="innerCell"><a href="">${it.resource.size()}</a></td>
                        </tr>
                    </table>

                    <br>
            </tr>
            </g:each>
        </tbody>
    </table>

</div>


<div class="col-6">

</div>


%{--Subscriptions--}%
<div class="container-fluid col-5 customContainer right-align scroller" style="position:relative;bottom:16rem;">

        <table class="customTable ">
            <thead class="customHead">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Subscriptions</strong></th>

            </thead>

            <tbody>

            <g:each in="${user.subscription}">
            <tr class="hover-dark">

                <td style="width:100%;">

                    <table class="innerTable">

                        <tr>
                            <td class="innerCell"><a href="">${it.topic.name}</a> </td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell">
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
                            <td class="innerCell"><a href="">${it.topic}</a></td>
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