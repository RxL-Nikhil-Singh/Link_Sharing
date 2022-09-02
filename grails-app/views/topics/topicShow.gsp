<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout"/>
    <asset:link rel="icon" href="list.png" type="image/x-ico"/>
    <title>Topic Show</title>
</head>

<body>

<nav class="navbar navbar-expand-lg nav nav1">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%"
           href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt=""
                                                                                width="230%"/></a>

        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            <li class="nav-item">
                <a class="nav-link" title="create link resource" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createLinkResource">
                    <asset:image src="link.png" alt="create link resource" class="icon"
                                 style="position:absolute;right:33rem; top:2.5rem;"></asset:image>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" title="create document resource" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createDocumentResource">
                    <asset:image src="note.png" alt="create document resource" class="icon"
                                 style="position: absolute; right:30rem; top:2.5rem;"></asset:image>
                </a>
            </li>

        </ul>


        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="search-box"
                   size="180">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach"
                                                                                          class="icon"/></button>
        </form>

        <div class="dropdown">
            <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" style="margin:1rem">
                <asset:image src="me.png" class="icon"/> ${user.firstName}
            </button>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="font-weight: bolder">
                <g:link controller="users" action="editProfile" id=""><asset:image src="me.png"
                                                                                   class="icon"/>Profile</g:link>
                <g:link controller="users" action="logout" id="logout">
                    <asset:image src="logout.png" class="icon"/> Logout</g:link>

            </div>
        </div>

    </div>

</nav>

<div id="universal-div">

%{--    user profile--}%
    <div class="container-fluid col-lg-5 col-md-11 scroller">

        <table class="customTable  customContainer">
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Topic: "Grails"</strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image class="img1" src="Grails-logo.webp" alt="profile pic"></asset:image>

                </td>
                <td style="width:100%;">

                    <a href="">@Grails</a>

                    <table class="innerTable">

                        <tr>
                            <td class="innerCell">@rcthomas</a></td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">subscribe</a></td>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>


                    <div class="dropdown">
                        <button class="btn  dropdown-toggle btn-primary" type="button dropdown"
                                data-bs-toggle="dropdown" aria-expanded="false">
                            Seriousness
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><strong>Causual</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Serious</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Very Serious</strong></a></li>

                        </ul>
                    </div>




                    <asset:image src="email.png" alt="email" class="icon"/>
                </td>

            </tr>

            </tbody>
        </table>

    </div>

    <!-- Posts -->

    <div class="container-fluid col-6 customContainer  scroller inbox">
        <form action="" method="" target="">
            <table class="customTable ">
                <thead class="">
                <th class="customHead thead-hover hover-dark"><strong>All Topics</strong></th>

                <form class="d-flex" role="search">
                    <th class="customHead thead-hover hover-dark">
                        <input style="position:relative; left: 6rem;top:0.5rem;" class="form-control me-2" type="search"
                               placeholder="Search" aria-label="Search" style="display:inline" size="5">
                    </th><th class="customHead thead-hover hover-dark"><button style="position:relative; left:3rem;"
                                                                               class="btn btn-outline-success searchIcon"
                                                                               type="submit" style="display:inline">
                    <asset:image src="search.png" alt="search" class="icon"/>
                </button>
                </th></form>

                </thead>
                <tbody class="">

                <g:each in="${topicList}">
                    <tr class="hover-dark">
                        <td colspan="3">
                            <div style="width:97%" class="">
                                <asset:image class="img1" src="einstein.jpeg" alt="profile pic"></asset:image>
                                <strong>${it.createdBy.firstName} &nbsp; ${it.createdBy.lastName}</strong>
                                <a href="https://www.instagram.com/alberteinstein/?hl=en"
                                   style="font-weight:lighter">&nbsp;@${it.createdBy.username}</a>

                                <p>“${it.name}”</p>

                                <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                                <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                                <asset:image src="google.png" class="icon" alt="google"></asset:image>
                                <span class="">
                                    <a href="" style="margin:0 0.25em">Download</a>
                                    <a href="" style="margin:0 0.25em">view full site</a>
                                    <a href="" style="margin:0 0.25em">mark as read</a>
                                    <a href="" style="margin:0 0.2em">view post</a>
                                </span>
                            </div>
                        </td>
                    </tr>
                </g:each>

                </tbody>
            </table>
        </form>
    </div>



    <!--section 2-->

    <div class="container-fluid col-lg-5 col-md-11 " style="position:relative; bottom:5rem; ">

        <table class="customTable  customContainer">
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>Users: "Grails"</strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>
                </td>
                <td style="width:97%">
                    <h5 style=" display:inline ">Nikhil</h5>

                    <a href="">@Nikhil</a>

                    <table class="innerTable">
                        <tr>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Topics</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image class="img1" src="krishna.jpg" alt="profile pic"></asset:image>
                </td>
                <td style="width:97%">
                    <h5 style=" display:inline ">Krishna</h5>

                    <a href="">@Krishna</a>

                    <table class="innerTable">
                        <tr>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Topics</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">5000</a></td>
                            <td class="innerCell"><a href="">3000</a></td>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

    </div>

</div>

</body>
</html>