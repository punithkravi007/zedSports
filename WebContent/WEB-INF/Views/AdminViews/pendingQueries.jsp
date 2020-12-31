<div class="row">
	<div class="col-md-12">
		<div class="panel-group" id="accordion" role="tablist"
			aria-multiselectable="true"></div>
	</div>
</div>
<script>
$(document).ready(function(){
	getPendingQueries();
});

var getPendingQueries = async function(){
	var param = "queryStatus="+0;
	var response = await serviceCall("${pageContext.request.contextPath}/admin/getUserQueries","POST",param);
	response = JSON.parse(response);
	appendPendingQueries(response);
} 

var respondToUserQuery = async function(queryId){
	var response  = $("#query-response-id-"+queryId).val();
	var param = "queryId="+queryId+"&response="+response+"&isResponded="+1;
	var response = await serviceCall("${pageContext.request.contextPath}/admin/updateUserQueryResponse","POST",param);
	getPendingQueries();
}


var appendPendingQueries = function(response){
	$("#accordion").empty();
	
	var queryDiv = "";
	for(var query = 0; query < response.length; query++){
		queryDiv = queryDiv+
					"<div class='panel panel-default'>"+
						    "<div class='panel-heading' role='tab' id='heading"+query+"'>"+
						        "<h5 class='panel-title'>"+
						            "<a role='button' style='font-size:12px' data-toggle='collapse' data-parent='#accordion' href='#collapse"+query+"' aria-expanded='true' aria-controls='collapse"+query+"'>"+
						                "<div class='row'>"+
						                    "<div class='col-sm-4'>"+
						                        "<font color='black' style='font-style: oblique;'><b>Name : </b></font>"+
						                         "<font color='black' style='font-style: oblique;'>"+response[query].userName+"</font>"+
						                     "</div>"+
						                    "<div class='col-sm-4'>"+
						                        "<font color='black' style='font-style: oblique;'><b>Email : </b></font>"+
						                        "<font color='black' style='font-style: oblique;'>"+response[query].email+"</font>"+
						                     "</div>"+
						                    "<div class='col-sm-4'>"+
						                        "<font color='black' style='font-style: oblique;'><b>Mobile Number : </b></font>"+
						                        "<font color='black' style='font-style: oblique;'>"+response[query].mobileNumber+"</font>"+
						                    "</div>"+
						                "</div>"+
						                "<hr>"+
						                "<div class='row'>"+
						                    "<div class='col-sm-12'>"+
						                        "<font color='black' style='font-style: oblique;'><b>Subject : </b></font>"+
						                        "<font color='brown' style='font-style: oblique;'> "+response[query].subject+"</font>"+
						                    "</div>"+
						                "</div>"+
						            "</a>"+
						        "</h5>"+
						    "</div>"+
						    "<div id='collapse"+query+"' class='panel-collapse collapse' role='tabpanel' aria-labelledby='heading"+query+"'>"+
						        "<div class='panel-body' style='border: 1px solid; padding: 20px; background-color: ghostwhite;'>"+
						            "<div class='row'>"+
						                "<div class='col-sm-12' style='font-style: oblique;'>"+response[query].message+"</div>"+
						            "</div>"+
						            "<hr>"+
						            "<div class='row'>"+
						                "<div class='col-sm-12'>"+
						                    "<div class='input-group'>"+
						                        "<textarea class='form-control' rows='3' id='query-response-id-"+response[query].queryId+"' placeholder='Type Your Reply Here...' style='resize: none'></textarea>"+
						                        "<span class='input-group-addon btn btn-primary' onclick='respondToUserQuery("+response[query].queryId+")'>Send</span>"+
						                    "</div>"+
						                "</div>"+
						            "</div>"+
						        "</div>"+
						    "</div>"+
						"</div>";
				}
			$("#accordion").append(queryDiv);
}

</script>