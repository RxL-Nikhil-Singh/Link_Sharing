
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="list.png" type="image/x-ico"/>
    <title>Topic Show</title>
</head>

<body>

<nav class="navbar navbar-expand-lg nav nav1" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%" href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt="" width="200%"/></a>

        <ul class="navbar-nav me-auto mb-2 mb-lg-0">


            <li class="nav-item">
                <a class="nav-link"title="Create resource" href="#" data-bs-toggle="modal" data-bs-target="#createResource" id="#createResource">
                    <asset:image src="link.png" alt="create resource" class="icon" style="position:absolute;right:27rem; top:2.5rem;"></asset:image>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link"title="" href="#" data-bs-toggle="modal" data-bs-target="#" id="#note">
                    <asset:image src="note.png" alt="" class="icon" style="position: absolute; right:24rem; top:2.5rem;"></asset:image>
                </a>
            </li>

        </ul>






        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="search-box" size="150">
            <button class="btn btn-outline-success searchIcon" type="submit"><asset:image src="search.png" alt="serach" class="icon"/></button>
        </form>
        <div class="dropdown" style="margin-left:1rem;border-radius: 10px;background-image: url('https://c.tenor.com/6Andtbkh8cwAAAAM/rain-transparent.gif')">
            <button class="btn  dropdown-toggle " type="button dropdown" data-bs-toggle="dropdown" aria-expanded="false">
                Nikhil
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#"><strong>Profile</strong></a></li>
                <li><a class="dropdown-item" href="#"><strong>User</strong></a></li>
                <li><a class="dropdown-item" href="#"><strong>Topic</strong></a></li>
                <li><a class="dropdown-item" href="#"><Strong>Class</Strong></a></li>
                <li><a class="dropdown-item" href="#"><Strong>Logout</Strong></a></li>
            </ul>
        </div>

    </div>

</nav>

<div id="universal-div">

    <div class="container-fluid col-lg-5 col-md-11 scroller" >

        <table class="customTable  customContainer" >
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
                            <td class="innerCell"> @rcthomas</a></td>
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
                        <button class="btn  dropdown-toggle btn-primary" type="button dropdown" data-bs-toggle="dropdown" aria-expanded="false">
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

    <div class="container-fluid col-6 customContainer  scroller inbox" >
        <form action="" method="" target="">
            <table class="customTable " >
                <thead class="">
                <th  class="customHead thead-hover hover-dark"><strong>Posts: "Grails"</strong></th>
                <form class="d-flex" role="search">
                    <th class="customHead thead-hover hover-dark">
                        <input style="position:relative; left: 6rem;top:0.5rem;" class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="display:inline" size="5">
                    </th ><th class="customHead thead-hover hover-dark"><button style="position:relative; left:3rem;" class="btn btn-outline-success searchIcon" type="submit" style="display:inline">
                    <asset:image src="search.png" alt="search" class="icon"/>
                </button>
                </th>      </form>

                </thead>
                <tbody class="">
                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <asset:image class="img1" src="einstein.jpeg" alt="profile pic"></asset:image>
                            <strong>Albert Einstein </strong>
                            <a href="https://www.instagram.com/alberteinstein/?hl=en" style="font-weight:lighter">&nbsp;@Einstein</a>

                            <p>“Imagination is more important than knowledge. Knowledge is limited. Imagination circles the world.” </p>

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

                <tr class="hover-dark">
                    <td colspan="3">
                        <div class="">
                            <asset:image class="img1" src="newton.jpeg" alt="profile pic"></asset:image>
                            <strong>Issac Newton </strong>&nbsp;
                            <a href="https://www.instagram.com/sir.isaac.newton/?hl=en" style="font-weight:lighter">@newton</a>


                            <p>“Imagination is more important than knowledge. Knowledge is limited. Imagination circles the world.” </p>

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

                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <asset:image class="img1" src="neo.jpeg" alt="profile pic"></asset:image>
                            <strong>Neo </strong>
                            <a href="https://www.instagram.com/alberteinstein/?hl=en" style="font-weight:lighter">&nbsp;@neo</a>

                            <p>" Glitch in the Matrix." </p>

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

                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <asset:image class="img1" src="einstein.jpeg" alt="profile pic"></asset:image>
                            <strong>Albert Einstein </strong>
                            <a href="https://www.instagram.com/alberteinstein/?hl=en" style="font-weight:lighter">&nbsp;@Einstein</a>

                            <p>“Imagination is more important than knowledge. Knowledge is limited. Imagination circles the world.” </p>

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

                <tr class="hover-dark">
                    <td colspan="3">
                        <div class="">
                            <asset:image class="img1" src="newton.jpeg" alt="profile pic"></asset:image>
                            <strong>Issac Newton </strong>&nbsp;
                            <a href="https://www.instagram.com/sir.isaac.newton/?hl=en" style="font-weight:lighter">@newton</a>


                            <p>“Imagination is more important than knowledge. Knowledge is limited. Imagination circles the world.” </p>

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

                <tr class="hover-dark">
                    <td colspan="3">
                        <div style="width:97%" class="">
                            <asset:image class="img1" src="neo.jpeg" alt="profile pic"></asset:image>
                            <strong>Neo </strong>
                            <a href="https://www.instagram.com/alberteinstein/?hl=en" style="font-weight:lighter">&nbsp;@neo</a>

                            <p>" Glitch in the Matrix." </p>

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
                </tbody>
            </table>
        </form>
    </div>



    <!--section 2-->

    <div class="container-fluid col-lg-5 col-md-11 " style="position:relative; bottom:5rem; ">

        <table class="customTable  customContainer" >
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