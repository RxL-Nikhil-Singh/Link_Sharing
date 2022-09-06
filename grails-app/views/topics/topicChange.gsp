
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="writing.png" type="image/x-ico"/>
    <title>Topic Change</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>


<body>
<!-- Modal  Change topic-->
<div class="modal fade randomx" id="changeTopic" tabindex="-1" role="dialog" aria-labelledby="changeTopicTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="changeTopicLongTitle">Change Topic Name</h5>
                <g:link controller="topics" action="abortTopicChange">

                    <span aria-hidden="true"><asset:image src="close.png" class="icon"/></span>

                </g:link>
            </div>
            <g:form controller="topics" action="topicChange" method="post" target="">
                <input type="text" value="${topic.name}" name="topicName" style="display:none">
                <table>

                    <div class="modal-body" >
                        <tr><td><label for="name">Topic Name:</label></td>
                            <td><input   class="form-control" disabled type="text" value="${topic.name}"/></td>
                    </div>

                    <div class="modal-body" >
                        <tr><td><label for="newTopicName">New Topic name:</label></td>
                            <td><input  name="newTopicName" class="form-control"  type="text" placeholder="Please enter new topic name"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <g:link controller="topics" action="abortTopicChange">
                        <button type="button" class="btn btn-success" >Cancel</button>
                    </g:link>
                    <g:submitButton name="changeTopic" controller="topics" action="ChangeTopic" type="submit"
                                    class=" right-align btn btn-danger" value="Change"/>

                </div>

            </g:form>
        </div>
    </div>
</div>



<asset:javascript src="jquery-3.6.0.js"/>
<asset:javascript src="jquery-3.2.1.slim.min.js"/>
<asset:javascript src="bootstrap.js"/>
<asset:javascript src="bootstrap.min.js"/>

<script type="text/javascript">
    $(window).on('load', function() {
        $('#changeTopic').modal('show');
    });
</script>

</body>
</html>