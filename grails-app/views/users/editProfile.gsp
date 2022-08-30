
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="note.png" type="image/x-ico"/>
    <title>Edit Profile</title>
</head>

<body>

<nav class="navbar navbar-expand-lg nav nav1" >
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><asset:image src="worldwide.png" id="logo2" alt="LOGO"/></a>
        <a class="navbar-brand" style="margin-right:50%" href="https://nikhiliitbhu.github.io/Personal_Website/"><asset:image src="LINK-SHARING-4-8-2022.png" alt="" width="200%"/></a>

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



</body>
</html>