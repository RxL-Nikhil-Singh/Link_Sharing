<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout"/>
    <g:set var="user" value="${user}"/>
    <asset:link rel="icon" href="dashboard.png" type="image/x-ico"/>
    <title>Dashboard</title>
</head>

<body style="height:80rem" id="bodyId">

<!-- Modal  create topic-->
<div class="modal fade" id="createTopic" tabindex="-1" role="dialog" aria-labelledby="createTopicTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createTopicLongTitle">Create Topic</h5>
                <button class="btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><asset:image src="close.png" class="icon"/></span>

                </button>
            </div>
            <g:form controller="topics" action="createTopic" method="post" target="">
                <table>

                    <div class="modal-body">
                        <tr><td><label for="name">Topic Name:</label></td>
                            <td><input required="required" class="form-control" name="name" type="text" value=""/></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="visibility">Visibility:</label></td>
                            <td><g:select class="form-control" name="visibility" from="['PUBLIC', 'PRIVATE']" value=""
                                          noSelection="['': '-Select Privacy -']"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <g:submitButton name="createTopic" controller="topics" action="createTopic" type="submit"
                                    class=" right-align btn btn-success" value="Create Topic"/>

                </div>

            </g:form>
        </div>
    </div>
</div>

<!-- Modal  send invitation-->
<div class="modal fade" id="sendInvitation" tabindex="-1" role="dialog" aria-labelledby="sendInvitationTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="sendInvitationLongTitle">Send Invitation</h5>
                <button class="btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><asset:image src="close.png" class="icon"></asset:image></span>
                </button>
            </div>
            <g:form controller="topics" action="sendInvitation" method="post" target="">
                <table>

                    <div class="modal-body">
                        <tr><td><label for="email">Email:</label></td>
                            <td><input required="required" class="form-control" name="email" type="email" value=""/>
                            </td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="topic">Topic:</label></td>
                            <td><g:select name="topic" from="" value=""
                                          noSelection="['': '-Topic -']"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <g:submitButton name="createTopic" controller="topics" action="createTopic" type="submit"
                                    class=" right-align btn btn-success" value="Create Topic"/>

                </div>

            </g:form>
        </div>
    </div>
</div>

%{--Create Link Resource--}%
<div class="modal fade" id="createLinkResource" tabindex="-1" role="dialog" aria-labelledby="createLinkResourceTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createLinkResourceLongTitle">Create Link Resource</h5>
                <button class="btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><asset:image src="close.png" class="icon"/></span>

                </button>
            </div>
            <g:form controller="resources" action="createLinkResource" method="post" target="">
                <table>

                    <div class="modal-body">
                        <tr><td><label for="url">URL Link:</label></td>
                            <td><input required="required" class="form-control" name="url" type="urlq" value=""/></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="description">Description:</label></td>
                            <td><textarea required="reqiured" class="form-control" name="description" type="text"
                                          value=""></textarea></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="topic">Select Topic:</label></td>
                            <td><g:select required="required" class="form-control" name="topic" from="${topicList}"
                                          value=""
                                          noSelection="['': '-Select Topic -']"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <g:submitButton name="createLinkResource" controller="resources" action="createLinkResource"
                                    type="submit" class=" right-align btn btn-success" value="Create Link Resource"/>

                </div>

            </g:form>
        </div>
    </div>
</div>

%{--Create Document Resource--}%
<div class="modal fade" id="createDocumentResource" tabindex="-1" role="dialog"
     aria-labelledby="createDocumentResourceTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="createDocumentResourceLongTitle">Create Document Resource</h5>
                <button class="btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><asset:image src="close.png" class="icon"/></span>

                </button>
            </div>
            <g:form controller="resources" action="createDocumentResource" method="post" target="">
                <table>

                    <div class="modal-body">
                        <tr><td><label for="filePath">Browse Document:</label></td>
                            <td><input required type="file" name="docFile" class="form-control"/>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="description">Description:</label></td>
                            <td><textArea required="required" class="form-control" name="description" type="text"
                                          value=""></textArea></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="topic">Select Topic:</label></td>
                            <td><g:select class="form-control" name="topic" from="${topicList}" value=""
                                          noSelection="['': '-Select Topic -']"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <g:submitButton name="createDocumentResource" controller="resources" action="createDocumentResource"
                                    type="submit" class=" right-align btn btn-success"
                                    value="Create Document Resource"/>

                </div>

            </g:form>
        </div>
    </div>
</div>

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
            <button class="btn btn-warning dropdown-toggle" type="button"  data-toggle="dropdown"
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
    %{--  User Details--}%
    <div class="container-fluid col-lg-5 col-md-11 scroller">

        <table class="customTable  customContainer">
            <thead class="customHead">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>${user.firstName}</strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:fit-content">
                <td>
                    <asset:image src="ProfilePictures/${user.photo}" alt="profile pic" class="img1"/>

                </td>
                <td style="width:97%">
                    <h5 style=" display:inline ">${user.firstName}</h5>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="" style="font-weight:normal;position:absolute;">@${user.username}</a>

                    <table class="innerTable">
                        <tr>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Topics</td>
                        </tr>
                        <tr>
                            <td class="innerCell"><a href="">${subsList.size()}</a></td>
                            <td class="innerCell"><a href="">${topicList.size()}</a></td>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

    </div>


%{--    inbox--}%
    <div class="container-fluid col-6 customContainer  scroller inbox">
        <form action="" method="" target="">
            <table class="customTable ">
                <thead class="customHead">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Inbox</strong></th>

                </thead>
                <tbody class="">

                <g:each in="${inbox}">
                    <tr class="hover-dark">
                        <td>
                            <div style="width:97%" class="">
                                <asset:image src="einstein.jpeg" class="img1" alt="einstein"></asset:image>
                                <strong>${it.user.firstName}&nbsp;${it.user.lastName}</strong>
                                <a href="https://www.instagram.com/alberteinstein/?hl=en"
                                   style="font-weight:lighter">&nbsp;@${it.user.username}</a>

                                <p>“${it.resource.description}”</p>

                                <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                                <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                                <asset:image src="google.png" class="icon" alt="google"></asset:image>
                                <a href="" style="position: relative; left:22rem;">view post</a>
                            </div>
                        </td>
                    </tr>
                </g:each>

                </tbody>
            </table>
        </form>
    </div>



    %{--    Subscriptions--}%

    <div class="container-fluid col-5 customContainer subscriptions scroller">
        <form action="">
            <table class="customTable ">
                <thead class="">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Subscriptions</strong>

                    <a href="" style="font-size:smaller; position:absolute; left:30rem; top:1rem;">View All</a>
                </th>
                </thead>

                <tbody>
                <tr class="hover-dark" style="height:fit-content">
                    <td>
                        <asset:image src="Photograph.jpeg" class="img1" alt="profile "/>

                    </td>
                    <td style="width:100%;">

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
                        <div class="dropdown buttonMargin" >
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Seriousness
                            </button>
                            <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="#"> 😎 Causual</a>
                                <a class="dropdown-item" href="#"> 😐 Serious</a>
                                <a class="dropdown-item" href="#">😳 Very Serious</a>
                            </div>
                        </div>

                        %{--                        Visibility--}%
                        <div class="dropdown buttonMargin">
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

                <tr class="hover-dark" style="height:fit-content">
                    <td>
                        <asset:image src="einstein.jpeg" class="img1" alt="einstein"></asset:image>
                    </td>
                    <td style="width:100%;">

                        <a href="">@JS</a>

                        <table class="innerTable">

                            <tr>
                                <td class="innerCell">@mr_x</td>
                                <td class="innerCell">Subscriptions</td>
                                <td class="innerCell">Post</td>
                            </tr>
                            <tr>
                                <td class="innerCell"><a href="">unsubscribe</a></td>
                                <td class="innerCell"><a href="">50</a></td>
                                <td class="innerCell"><a href="">30</a></td>
                            </tr>
                        </table>


                        %{--        //seriousness--}%
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
                </tr>
                </tbody>
            </table>

        </form>
    </div>


    %{--Trending Topics--}%
    <div class="container-fluid col-6 customContainer right-align trendingTopics">
        <form action="" method="" target="">
            <table class="customTable ">
                <thead class="customHead">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Trending Topics</strong></th>

                </thead>

                <tbody>
                <tr class="hover-dark">
                    <td>
                        <asset:image src="newton.jpeg" class="img1" alt="einstein"></asset:image>
                    </td>
                    <td style="width:100%;">

                        <a href="">@JQurery</a>

                        <table class="innerTable">

                            <tr>
                                <td class="innerCell">@mr_y</td>
                                <td class="innerCell">Subscriptions</td>
                                <td class="innerCell">Post</td>
                            </tr>
                            <tr>
                                <td class="innerCell"><a href="">subscribe</a></td>
                                <td class="innerCell"><a href="">50</a></td>
                                <td class="innerCell"><a href="">30</a></td>
                            </tr>
                        </table>

                        <br>
                </tr>

                <tr class="hover-dark">
                    <td>
                        <asset:image class="img1" src="Photograph.jpeg" alt="profile pic"></asset:image>

                    </td>
                    <td style="width:100%;">

                        <input type="text" style="border-radius: 5px">
                        <button class="btn-primary btn buttonMargin">Save</button>
                        <button class="btn-danger btn buttonMargin">Cancel</button>
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

%{--                        Visibility--}%
                        <div class="dropdown buttonMargin">
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
        </form>
    </div>
</div>

</body>