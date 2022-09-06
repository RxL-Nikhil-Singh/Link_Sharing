
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="LinkSharingLayout" />
    <asset:link rel="icon" href="delete.png" type="image/x-ico"/>
    <title>Delete</title>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="bootstrap.css"/>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>


<body>
<!-- Modal  Delete topic-->
<div class="modal fade randomx" id="deleteTopic" tabindex="-1" role="dialog" aria-labelledby="deleteTopicTitle"
     aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteTopicLongTitle">Are You Sure?</h5>
                <g:link controller="topics" action="abortDeletion">

                    <span aria-hidden="true"><asset:image src="close.png" class="icon"/></span>

                </g:link>
            </div>
            <g:form controller="topics" action="deleteTopic" method="post" target="">
                <input type="text" value="${topic.name}" name="topicName" style="display:none">
                <table>

                    <div class="modal-body" >
                        <tr><td><label for="name">Delete Content:</label></td>
                            <td><input   class="form-control" disabled type="text" value="${topic.name}"/></td>
                    </div>


                    <div class="modal-body">
                        <tr><td><label for="visibility">Visibility:</label></td>
                            <td><input  class="form-control" disabled type="text" value="${topic.visibility}"/></td></tr>
                    </div>
                    <div class="modal-body">
                        <tr><td><label for="password">Password:</label></td>
                            <td><input  name="password" class="form-control"  type="password" placeholder="Please verify with your password"/></td></tr>
                    </div>
                </table>

                <div class="modal-footer">
                    <g:link controller="topics" action="abortDeletion">
                    <button type="button" class="btn btn-success" >Cancel</button>
                    </g:link>
                    <g:submitButton name="deleteTopic" controller="topics" action="deleteTopic" type="submit"
                                    class=" right-align btn btn-danger" value="Delete"/>

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
        $('#deleteTopic').modal('show');
    });
</script>

</body>
</html>