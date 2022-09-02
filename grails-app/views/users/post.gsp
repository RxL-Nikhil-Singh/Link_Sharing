
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="writing.png" type="image/x-ico"/>
    <title>Post</title>
</head>

<body>

%{--Navbar--}%
<nav class="navbar navbar-expand-lg nav nav1">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%"
           href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt=""
                                                                                width="200%"/></a>

        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            <li class="nav-item">
                <a class="nav-link" title="Create topic" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createTopic">
                    <asset:image src="speech-bubble.png" alt="create topic" class="icon "
                                 style="position:absolute;right:39rem; top:2.5rem;"></asset:image>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" title="Send Invitation" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#sendInvitation">
                    <asset:image src="email.png" alt="send invitation" class="icon"
                                 style="position:absolute;right:36rem; top:2.5rem;"></asset:image>
                </a>
            </li>
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
                   size="150">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach"
                                                                                          class="icon"/></button>
        </form>

        %{--        //dropdown--}%
        <div class="dropdown">
            <button class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false" style="margin:1rem">
                <asset:image src="me.png" class="icon"/> ${user.firstName}
            </button>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="font-weight: bolder">
                <g:link controller="users" action="editProfile" id=""><asset:image src="me.png"
                                                                                   class="icon"/>Profile</g:link>
                <g:link controller="users" action="editProfile" id=""><asset:image src="user.png"
                                                                                   class="icon"/>Users</g:link>
                <g:link controller="topics" action="topicShow" id="topicShow"><asset:image src="list.png"
                                                                                           class="icon"/>Topics</g:link>
                <g:link controller="users" action="editProfile" id=""><asset:image src="writing.png"
                                                                                   class="icon"/>Posts</g:link>
                <g:link controller="users" action="logout" id="logout">
                    <asset:image src="logout.png" class="icon"/> Logout</g:link>

            </div>
        </div>
    </div>



</nav>


<div id="universal-div">

    <div class="container-fluid col-lg-6 col-md-11 scroller"  >

        <table class="customTable  customContainer" >
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="3"><strong></strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:"fit-content">


            <td style="width:5rem;" class="">
                <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>
            </td>
            <td>
                <strong>Nikhil Kumar Singh</strong>
                <br>
                <a href="" style="font-weight:lighter">&nbsp;@Nikhil</a>
            </td>
            <td style="text-align:right;">
                <a href="" > Grails</a>
                <br>
                <span id="date" ></span>
                <br>
                star rating goes here
            </td>
    </div>
</td>

</tr>
    <tr class="hover-dark">
        <td colspan="3">
            <p>
                HARE KRISHNA HARE KRISHNA KRISHNA KRISHNA HARE HARE
                HARE RAMA HARE RAMA RAMA RAMA HARE HARE HARE KRISHNA HARE KRISHNA KRISHNA KRISHNA HARE HARE
                HARE RAMA HARE RAMA RAMA RAMA HARE HARE
            </p>
        </td>
    </tr>

    <tr class="hover-dark">
        <td colspan="3">
            <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
            <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
            <asset:image src="google.png" class="icon" alt="google"></asset:image>
            <a href="" style="margin-left:14rem">Delete</a>
            <a href="" style="margin-left:1rem">Edit</a>
            <a href="" style="margin-left:1rem">Download</a>
            <a href="" style="margin-left:1rem">View Full Site</a>
        </td>
    </tr>

</tbody>
</table>


</div>

<div class="container-fluid col-5 customContainer trendingTopics "  >
    <form action="">
        <table class="customTable " >
            <thead class="">
            <th class="customHead thead-hover hover-dark" colspan="3"><strong >Trending Topics</strong>

            </thead>

            <tbody>
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>
                </td>
                <td style="width:100%;">
                    <h5 style="display:inline;">Nikhil Kumar Singh</h5>

                    <a href="" style="position:relative; left:10rem;">Grails</a>
                    <table class="innerTable">
                        <tr>
                            <td class="innerCell"> @nikhil</a></td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">unsubscribe</a></td>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>

                </td>
            </tr>
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>

                </td>
                <td style="width:100%;">
                    <h5 style="display:inline;">Nikhil Kumar Singh</h5>

                    <a href="" style="position:relative; left:10rem;">Grails</a>
                    <table class="innerTable">
                        <tr>
                            <td class="innerCell"> @nikhil</a></td>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Post</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">unsubscribe</a></td>
                            <td class="innerCell"><a href="">50</a></td>
                            <td class="innerCell"><a href="">30</a></td>
                        </tr>
                    </table>






                    <div class="dropdown">
                        <button class="btn  dropdown-toggle btn-primary" type="button dropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Seriousness
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><strong>Causual</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Serious</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Very Serious</strong></a></li>

                        </ul>
                    </div>


                    <div class="dropdown">
                        <button class="btn  dropdown-toggle btn-danger" type="button dropdown" data-bs-toggle="dropdown" aria-expanded="false">
                            Modify
                        </button>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#"><strong>Delete</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Edit</strong></a></li>
                            <li><a class="dropdown-item" href="#"><strong>Private</strong></a></li>

                        </ul>
                    </div>


                    <asset:image class="icon" src="email.png" alt="email"></asset:image>
                    <asset:image class="icon" src="writing.png" alt="file"></asset:image>
                    <asset:image class="icon" src="delete.png" alt="delete"></asset:image>
                </td>



            </tr>

            </tbody>
        </table>

    </form>
</div>

</body>
</html>