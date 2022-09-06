<%@ page import="link_sharing.Enums" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout"/>
    <g:set var="user" value="${user}"/>
    <asset:link rel="icon" href="dashboard.png" type="image/x-ico"/>
    <title>Dashboard</title>

</head>

<body style="height:80rem" id="bodyId">

<!-- Modal  create topic-->
<div class="modal fade randomx" id="createTopic" tabindex="-1" role="dialog" aria-labelledby="createTopicTitle"
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
                            <td><input maxlength="255" required="required" class="form-control" name="name" type="text" value=""/></td>
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
                            <td><input maxlength="255" required="required" class="form-control" name="url" type="urlq" value=""/></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label  for="description">Description:</label></td>
                            <td><g:textArea maxlength="8000" required="reqiured" class="form-control" name="description" type="text"
                                          value=""></g:textArea></td>
                    </div>

                    <div class="modal-body">
                        <tr><td><label for="topic">Select Topic:</label></td>
                            <td><g:select required="required" class="form-control" name="topic" from="${subscriptionList.topic.name}"
                                          value="${(subscriptionList)?(subscriptionList.topic.name.first()):null}"
                                         /></td></tr>
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

%{--Create Document resource--}%
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
            <form  action="../resources/createDocumentResource" method="post" enctype="multipart/form-data">
                <table>

                    <div class="modal-body">
                        <tr><td><label for="docFile">Browse Document:</label></td>
                            <td><input type="file" name="docFile" class="form-control" accept=".jpg,.png,.jpeg"/>

                    </div>

                    <div class="modal-body">
                        <tr><td><label for="description">Description:</label></td>
                            <td><textArea maxlength="8000" required="required" class="form-control" name="description" type="text"
                                          value=""></textArea></td>

                    </div>

                    <div class="modal-body">
                        <tr><td><label for="topic">Select Topic:</label></td>
                            <td><g:select class="form-control" name="topic" from="${subscriptionList.topic.name}" value="${(subscriptionList)?(subscriptionList.topic.name.first()):null}"
                                         /></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <g:submitButton name="createDocumentResource" controller="resources" action="createDocumentResource"
                                    type="submit" class=" right-align btn btn-success"
                                    value="Create Document Resource"/>

                </div>

            </form>
        </div>
    </div>
</div>



%{--Navbar--}%
<nav class="navbar navbar-expand-lg nav nav1">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%"
           href="http://localhost:7070/users/home"><asset:image src="LINK-SHARING-4-8-2022.png" alt=""
                                                                                width="200%"/></a>

        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

            <li class="nav-item">
                <a class="nav-link" title="Create topic" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createTopic" id="createTopicIcon">
                    <asset:image src="speech-bubble.png" alt="create topic" class="icon "
                                 style="position:absolute;right:39rem; top:2.5rem;"></asset:image>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" title="Send Invitation" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#sendInvitation" id="sendInvitationIcon">
                    <asset:image src="email.png" alt="send invitation" class="icon"
                                 style="position:absolute;right:36rem; top:2.5rem;"></asset:image>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" title="create link resource" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createLinkResource" id="createLinkResourceIcon">
                    <asset:image src="link.png" alt="create link resource" class="icon"
                                 style="position:absolute;right:33rem; top:2.5rem;"></asset:image>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" title="create document resource" href="#" data-bs-toggle="modal" data-toggle="modal"
                   data-target="#createDocumentResource" id="createDocumentResourceIcon">
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
    %{--  User Details--}%
    <div class="container-fluid col-lg-5 col-md-11 scroller">

        <table class="customTable  customContainer">
            <thead class="customHead">
            <th class="customHead thead-hover hover-dark" colspan="2"><strong>${user.firstName}</strong></th>
            </thead>
            <tbody class="">
            <tr class="hover-dark" style="height:fit-content">
                <td>
                <g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
                    <asset:image src="ProfilePictures/${user.photo}" alt="profile pic" class="img1"/>
                </g:link>
                </td>
                <td style="width:97%">
                    <h5 style=" display:inline ">${user.firstName}</h5>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                <g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
                 @${user.username}</g:link>

                    <table class="innerTable">
                        <tr>
                            <td class="innerCell">Subscriptions</td>
                            <td class="innerCell">Topics</td>
                        </tr>
                        <tr>
                            <td class="innerCell">
                                <g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
                                 ${subscriptionList.size()}
                                </g:link> </td>
                            <td class="innerCell">
<g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
    ${topicCount}
                                </g:link>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>

    </div>

%{--Inbox--}%
    <div class="container-fluid col-6 customContainer  scroller inbox">
        <form action="" method="" target="">
            <table class="customTable ">
                <thead class="customHead">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Inbox</strong></th>

                </thead>
                <tbody class="">

                <g:each in="${finalInbox}">
                    <tr class="hover-dark">
                        <td>
                            <div style="width:97%" class="">
                    <g:link params='[user: "${it.createdBy.id}"]' controller="users" action="userProfile" >
                        <asset:image src="ProfilePictures/${it.createdBy.photo}" class="img1" alt="einstein"></asset:image>
                    </g:link>
                                <strong>${it.createdBy.firstName}&nbsp;${it.createdBy.lastName}</strong>

                    <g:link params='[user: "${it.createdBy.id}"]' controller="users" action="userProfile"  >
                        @${it.createdBy.username}
                    </g:link>
                    <g:link params='[user:"${it.topic.createdBy.id}",topic: "${it.topic.id}"]' controller="topics" action="topicShow" style="position: absolute;right:2rem;">
                        ${it.topic.name}
                    </g:link>
                                <p>“${it.description}”</p>

                                <span>
                                <asset:image src="facebook.png" class="icon" alt="facebook"></asset:image>
                                <asset:image src="instagram.png" class="icon" alt="instagram"></asset:image>
                                <asset:image src="google.png" class="icon" alt="google"></asset:image>
                                <a href="" style="margin-left:2rem;">
                                    Download
                                </a>
                                <a href="" style="margin-left:1rem;">view Full Site</a>
                                <a href="" style="margin-left:1rem;">Mark as read</a>
                                <g:link params='[resource: "${it.id}"]' style="margin-left:1rem;" controller="resources" action="post">
                                    view post
                                </g:link>
                                </span>
                            </div>
                        </td>
                    </tr>
                </g:each>

                </tbody>
            </table>
        </form>
    </div>



    %{--    Subscriptions--}%

    <div class="container-fluid col-5 customContainer subscriptions midScroller">
        <form action="">
            <table class="customTable ">
                <thead class="">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Subscriptions</strong>

                </th>
                </thead>

                <tbody>
                <g:each var="top" in="${subscriptionList}">
                <tr class="hover-dark" style="height:fit-content">
                    <td>
                    <g:link params='[user: "${top.topic.createdBy.id}"]' controller="users" action="userProfile" method="post" >
                        <asset:image src="ProfilePictures/${top.topic.createdBy.photo}" class="img1" alt="profile "/>
                    </g:link>
                    </td>
                    <td style="width:100%;">

                    <g:link params='[user:"${top.topic.createdBy.id}",topic: "${top.topic.id}"]' controller="topics" action="topicShow" method="post" >
                      <span class="originalTopicName">  @${top.topic.name}</span>
                    </g:link>

                        <table class="innerTable">

                            <tr>
                                <td class="innerCell">
                    <g:link params='[user: "${top.topic.createdBy.id}"]' controller="users" action="userProfile" method="post" >
                        @${top.topic.createdBy.username}
                    </g:link>
                                </td>
                                <td class="innerCell">Subscriptions</td>
                                <td class="innerCell">Post</td>
                            </tr>
                            <tr>
                                <td class="innerCell">


                                <g:if test="${!(top.topic.createdBy.id==user.id)}">
                                    <button class="btn btn-warning" style="padding: 1px">
                                <g:link params='[topic: "${top.topic.id}"]' controller="subscriptions" action="unsubscribe" style="color:black;font-weight: bold;">

                                    Unsubscribe

                                </g:link></button>
                                </g:if>



                                    </td>
                                <td class="innerCell"><a href="">
                    <g:link params='[user:"${top.topic.createdBy.id}",topic: "${top.topic.id}"]' controller="topics" action="topicShow" method="post" >
                                    ${top.topic.subs.size()}
                    </g:link>
                                </a></td>
                                <td class="innerCell"><a href="">
                                <g:link params='[user:"${top.topic.createdBy.id}",topic: "${top.topic.id}"]' controller="topics" action="topicShow" method="post" >
                                    ${top.topic.resource.size()}</a></td>
                    </g:link>
                            </tr>
                        </table>



                    <g:if test="${!(top.topic.createdBy.id==user.id)}">
                        %{--                     %{--        //seriousness--}%
                        <div class="dropdown buttonMargin" >
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${top.seriousness}
                            </button>
                            <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">

                        <g:if test="${!(top.seriousness==link_sharing.Enums.Seriousness.CASUAL)}">
                            😎&nbsp;<g:link params='[subscription:"${top.id}" ,newSerVal: "${link_sharing.Enums.Seriousness.CASUAL}"]'  method="post" controller="subscriptions" action="modSeriousness" >
                                     ${link_sharing.Enums.Seriousness.CASUAL}
                                </g:link><br>
                        </g:if>

                        <g:if test="${!(top.seriousness==link_sharing.Enums.Seriousness.SERIOUS)}">
                            😐&nbsp;<g:link params='[subscription:"${top.id}" ,newSerVal: "${link_sharing.Enums.Seriousness.SERIOUS}"]'  method="post" controller="subscriptions" action="modSeriousness">
                                 ${link_sharing.Enums.Seriousness.SERIOUS}
                                </g:link><br>
                        </g:if>

                                <g:if test="${!(top.seriousness==link_sharing.Enums.Seriousness.VERY_SERIOUS)}">
                                    😳&nbsp;<g:link params='[subscription:"${top.id}" ,newSerVal: "${link_sharing.Enums.Seriousness.VERY_SERIOUS}"]'  method="post" controller="subscriptions" action="modSeriousness">
                                    ${link_sharing.Enums.Seriousness.VERY_SERIOUS}
                            </g:link>
                        </g:if>
                            </div>
                        </div>
                    </g:if>
                        <g:else>
                            <button class="" type="button" title="You have to be Very Serious for your own topic">
                                ${top.seriousness}
                            </button>
                        </g:else>


                        <g:if test="${top.topic.createdBy.id==user.id}">
                        %{--                        Visibility--}%
                        <div class="dropdown buttonMargin">
                            <button class="btn btn-danger dropdown-toggle" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${top.topic.visibility}
                            </button>
                            <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
                                <g:if test="${top.topic.visibility==link_sharing.Enums.Visibility.PRIVATE}">
                                <g:link  params='[topic: "${top.topic.id}"]' controller="topics" action="pubVisibility">
                                    <asset:image src="public.png" class="icon"/> ${link_sharing.Enums.Visibility.PUBLIC}
                                </g:link>
                                </g:if>
                            <g:if test="${top.topic.visibility==link_sharing.Enums.Visibility.PUBLIC}">
                                <g:link  params='[topic: "${top.topic.id}"]' controller="topics" action="pvtVisibility">
                                    <asset:image src="private.png" class="icon"/> ${link_sharing.Enums.Visibility.PRIVATE}
                                </g:link>
                            </g:if>
                            </div>
                        </div>
                        </g:if>
                        <g:else>
                            <button class="" type="button" title="Sorry, you are not creator for this topic">
                                ${top.topic.visibility}
                            </button>
                        </g:else>

                        <asset:image src="email.png" class="icon" title="send invitation" alt="invite"></asset:image>

                    <g:if test="${top.topic.createdBy.id==user.id}">
                        <g:link params='[topic: "${top.topic.id}"]' controller="topics" action="topicChangeRender">
                        <asset:image src="writing.png" title="edit topic" class="editTopic icon" alt="write"></asset:image>
                        </g:link>
                    <g:link params='[topic: "${top.topic.id}"]' controller="topics" action="deleteConfirmation">
                        <asset:image src="delete.png" class="deleteTopic icon " title="delete topic" alt="delete"></asset:image>
                    </g:link>
                    </g:if>
                    </td>

                </tr>
                </g:each>

                </tbody>
            </table>

        </form>
    </div>


    %{--Trending Topics--}%
    <div class="container-fluid col-6 customContainer right-align trendingTopics midScroller">
            <table class="customTable ">
                <thead class="customHead">
                <th class="customHead thead-hover hover-dark" colspan="2"><strong>Trending Topics</strong></th>

                </thead>

                <tbody>

                <g:each in="${trendingTopics}">
                <tr class="hover-dark">
                    <td>
                    <g:link params='[user: "${it.createdBy.id}"]' controller="users" action="userProfile" method="post" >
                        <asset:image class="img1" src="ProfilePictures/${it.createdBy.photo}" alt="profile pic"></asset:image>
                    </g:link>
                    </td>

                    <td style="width:100%;">

                        <a href="">
                    <g:link params='[user:"${it.createdBy.id}",topic: "${it.id}"]' controller="topics" action="topicShow" method="post" >
                            @${it.name}
                    </g:link>
                        </a>

                        <table class="innerTable">

                            <tr>
                                <td class="innerCell">
                    <g:link params='[user: "${it.createdBy.id}"]' controller="users" action="userProfile" method="post" >
                                    @${it.createdBy.username}
                    </g:link> </td>
                                <td class="innerCell">Subscriptions</td>
                                <td class="innerCell">Post</td>
                            </tr>
                            <tr>
                                <td class="innerCell"><a href="">

                    <g:if test="${!(user.id==it.createdBy.id)}">
                       <g:if test="${it.subs.user.id.contains(user.id)}">
                           <button class="btn btn-warning" style="padding: 1px">
                           <g:link params='[topic: "${it.id}"]' controller="subscriptions" action="unsubscribe" style="color:black;font-weight: bold;" >
                               Unsubscribe
                           </g:link>
                           </button>
                        </g:if>
                      <g:else>
                          <button class="btn btn-info" style="padding: 1px">
                          <g:link params='[topic: "${it.id}"]' controller="subscriptions" action="subscribe" style="color:black;font-weight: bold;" >
                          Subscribe
                          </g:link>
                          </button>
                    </g:else>
                    </g:if>

                                </a></td>
                                <td class="innerCell">
                    <g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
                        ${it.subs.size()}
                    </g:link> </td>
                                <td class="innerCell">
                    <g:link params='[user: "${user.id}"]' controller="users" action="userProfile" method="post" >
                        ${it.resource.size()}
                    </g:link></td>
                    </tr>
                </table>

                        <g:if test="${(it.subs.user.id.contains(user.id))}">
                            <g:if test="${(!(it.createdBy.id==user.id))}">
                            %{--                        Seriousness--}%
                                <div class="dropdown buttonMargin">
                                    <button class="btn btn-primary dropdown-toggle" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        ${subscriptionList[subscriptionList.topic.name.indexOf(it.name)].seriousness}
                                    </button>
                                    <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">

                                        <g:if test="${!(subscriptionList[subscriptionList.topic.name.indexOf(it.name)].seriousness==link_sharing.Enums.Seriousness.CASUAL)}">
                                            😎&nbsp;<g:link params='[subscription:"${subscriptionList[subscriptionList.topic.name.indexOf(it.name)].id}" ,newSerVal: "${link_sharing.Enums.Seriousness.CASUAL}"]'  method="post" controller="subscriptions" action="modSeriousness" >
                                            ${link_sharing.Enums.Seriousness.CASUAL}
                                        </g:link><br>
                                        </g:if>

                                        <g:if test="${!(subscriptionList[subscriptionList.topic.name.indexOf(it.name)].seriousness==link_sharing.Enums.Seriousness.SERIOUS)}">
                                            😐&nbsp;<g:link params='[subscription:"${subscriptionList[subscriptionList.topic.name.indexOf(it.name)].id}" ,newSerVal: "${link_sharing.Enums.Seriousness.SERIOUS}"]'  method="post" controller="subscriptions" action="modSeriousness">
                                            ${link_sharing.Enums.Seriousness.SERIOUS}
                                        </g:link> <br>
                                        </g:if>

                                        <g:if test="${!(subscriptionList[subscriptionList.topic.name.indexOf(it.name)].seriousness==link_sharing.Enums.Seriousness.VERY_SERIOUS)}">
                                            😳&nbsp;<g:link params='[subscription:"${subscriptionList[subscriptionList.topic.name.indexOf(it.name)].id}" ,newSerVal: "${link_sharing.Enums.Seriousness.VERY_SERIOUS}"]'  method="post" controller="subscriptions" action="modSeriousness">
                                            ${link_sharing.Enums.Seriousness.VERY_SERIOUS}
                                        </g:link>
                                        </g:if>
                                    </div>
                                </div>
                            </g:if>
                            <g:else>
                                <button class="" type="button" title="You have to be Very Serious for your own topic">
                                    ${subscriptionList[subscriptionList.topic.name.indexOf(it.name)].seriousness}
                                </button>
                            </g:else>
                        </g:if>

                        <g:if test="${user.id==it.createdBy.id}">
%{--                        Visibility--}%
                            <div class="dropdown buttonMargin">
                                <button class="btn btn-danger dropdown-toggle" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    ${it.visibility}
                                </button>
                                <div class="dropdown-menu " aria-labelledby="dropdownMenuButton">
                                    <g:if test="${it.visibility==link_sharing.Enums.Visibility.PRIVATE}">
                                        <g:link  params='[topic: "${it.id}"]' controller="topics" action="pubVisibility">
                                            <asset:image src="public.png" class="icon"/> ${link_sharing.Enums.Visibility.PUBLIC}
                                        </g:link>
                                    </g:if>
                                    <g:if test="${it.visibility==link_sharing.Enums.Visibility.PUBLIC}">
                                        <g:link  params='[topic: "${it.id}"]' controller="topics" action="pvtVisibility">
                                            <asset:image src="private.png" class="icon"/> ${link_sharing.Enums.Visibility.PRIVATE}
                                        </g:link>
                                    </g:if>
                                </div>
                            </div>
                        </g:if>
                        <g:else>
                            <button class="" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                ${it.visibility}
                            </button>
                        </g:else>

                        <asset:image src="email.png" class="icon" title="send invitation" alt="invite"></asset:image>
                    <g:if test="${user.id==it.createdBy.id}">
                        <g:link params='[topic: "${it.id}"]' controller="topics" action="topicChangeRender">
                            <asset:image src="writing.png" title="edit topic" class="editTopic icon" alt="write"></asset:image>
                        </g:link>
                        <g:link params='[topic: "${it.id}"]' controller="topics" action="deleteConfirmation">
                            <asset:image src="delete.png" title="delete topic" class="icon" alt="delete"></asset:image>
                        </g:link>
                    </g:if>
                    </td>

                </tr>
                </g:each>
                </tbody>
            </table>
        </form>
    </div>
</div>
</body>