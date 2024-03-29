
<!-- JobPost.jsp :- the jsp add or edit the job details -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.errorMessage {
    font-weight: bold;
    list-style: none;
}

label:not([for="CTCFrom"]):not([for="CTCTo"]):after {
    content: ' *';
    color: red;
}

</style>
<script>
$(document).ready(function(){
    var maxCharacters = 2000;  

    $("#textArea").on('input', function(){
        var characterCount = $(this).val().length;
        var remainingCharacters = maxCharacters - characterCount;

        $("#textCount").text("Character count: " + characterCount + " / " + maxCharacters);

         
        if (remainingCharacters < 100) {
            $("#textCount").addClass("text-danger");  
        } else {
            $("#textCount").removeClass("text-dange"); 
        }
    });
});


</script>
</head>
<body>

	<div style="margin-bottom: 5px; border-bottom: 5px solid green;">
		<h2 class="mt-2">
			<s:text name="job"/>
			<s:property value="actionName" />
		</h2>
	</div>
	<s:if test="actionName == 'Add'">
		<a class="btn btn-primary mt-2" onclick="actionAddEdit()"><s:text name="save.button"/> </a>
	</s:if>

	<s:if test="actionName == 'Edit'">
		<a class="btn btn-primary mt-2" onclick="actionAddEdit()"><s:text name="savereturn.button"/></a>
	</s:if>
	<s:if test="actionName == 'Add'">
		<a class="btn btn-danger mt-2" onclick="addPages()"><s:text name="reset.button"/></a>
	</s:if>


	<s:if test="actionName == 'Edit'">
		<a class="btn btn-secondary mt-2" onclick="cancel()"><s:text name="back.button"/></a>
	</s:if>
	<s:else>
		<a class="btn btn-secondary mt-2" onclick="searchPages()"><s:text name="back.button"/></a>
	</s:else>

		<s:form onsubmit="actionAddEdit() ; return false" method="post" class="mt-2"	
			id="addEditForm">
			 
			     <s:if test="hasActionErrors()">
            <div class="alert alert-danger alert-dismissible fade show mt-2" role="alert">
                <h4><s:text name="Warning"/> !</h4>
                <s:actionerror/>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </s:if>

			<s:if test="actionName == 'Edit'">

				<s:hidden name="jobId" value="%{jobId}" />
			</s:if>

			<s:hidden name="model.actionName" value="%{actionName}" />


		<s:textfield name="reqName" class="form-control" id="reqName" key="req.Name"
			mandatory="true" />


		<s:select name="category" headerKey="" headerValue="--- choose --- " key="job.Category"
			cssStyle="width:210px; height:80" class="form-control" id="category"
			list="#{'Software & IT':'Software & IT', 'Business Development':'Business Development','Customer Service':'Customer Service','Electrical':'Electrical','Human-Resources':'Human-Resources'}" />


		<s:textfield key="Company" name="cmpName" class="form-control" />

			<s:textfield key="Website" name="cmpWebsite"
				class="form-control control-label" />

			<s:textfield key="POD" name="postingDate"
				class="form-control" type="date" />

			<s:textfield key="JobTitle" name="jobTitle" class="form-control" />

			<s:select label="Skills" cssStyle="width:210px; height:80" size="6"
					name="skills"  multiple="true" headerKey=""
					headerValue="--- Multi Select ---" class="form-control" 
					listKey="skill_id" listValue="skill_name"
					list="model.skillList" />
					
					<s:textfield key="CTCFrom" name="ctcFrom" class="form-control" id="CTCFrom"/>
					<s:textfield key="CTCTo" name="ctcTo" class="form-control" id="CTCTo"/>
					
			<s:radio  name="jobType" id="JobType" key="JobType"
				list="#{'Remote':' Remote ', 'Onsite':' On-site '}" />


			<s:textfield key="CompanyEmail" name="cmpEmail"
				class="form-control" />

			<s:select key="JobLevel" name="jobLevel" headerKey=""
				headerValue="--- choose --- " cssStyle="width:210px; height:80"
				class="form-control"
				list="#{'Entry-level':' Entry-level ', 'Mid-level':' Mid-level','Senior-level':'Senior-level'}" />

			<s:textfield key="Experience" name="experience"
				id="experience" class="form-control" />

			<s:textfield key="Location" name="locations" class="form-control" />

			<s:textarea key="JobDescription" name="jobDescription" id="textArea"
				class="form-control" />
	


		</s:form>
<div  class="text-secondary" style="margin-left: 180px" id="textCount"></div>




	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>

	<script>
		$(document).ready(function() {
			$('#Skills').select2({
				placeholder : 'Select Skills',
				allowClear : true,
			});
		});
	</script>
</body>
</html>