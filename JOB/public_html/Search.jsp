<!-- 
Search.jsp :- the jsp for to search the job  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Page</title>

</head>
<body>

	<div style="margin-bottom: 5px; border-bottom: 5px solid green;">
		<h2 class="mt-2"><%-- <s:text name="jobsearch.message" /> --%>
		<s:text name="jobsearch.message"/></h2>
	</div>
	
	<a class="btn btn-primary mt-2" onclick="searchJob()"><s:text name="search.button"/></a>
	<a class="btn btn-primary mt-2" onclick="addPages()"><s:text name="add.button"/></a>
		<a class="btn btn-danger mt-2" onclick="searchPages()"><s:text name="reset.button"/></a>
	<a class="btn btn-secondary mt-2" href="home"><s:text name="back.button"/></a>
	

		<s:if test="hasActionMessages()">
			<div class="alert alert-success alert-dismissible fade show"
				role="alert">
				<h4><s:text name="success"/> !</h4>
				<s:actionmessage />
				<button type="button" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
		</s:if>

		<div class="row">
			<s:form onsubmit="searchJob() ; return false" id="searchForm"
				method="post">

			
				<s:select key="JobCategory" name="category" headerKey="" value=""
					headerValue="--- choose --- " cssStyle="width:210px; height:80"
					class="form-control"
					list="#{'Software & IT':'Software & IT', 'Business Development':'Business Development','Customer Service':'Customer Service','Electrical':'Electrical','Human-Resources':'Human-Resources'}" />

				<s:textfield key="Company" name="cmpName" value=""
					class="form-control mt-3" />


				<s:textfield key="POD" name="postingDate" value=""
					class="form-control" type="date" />

				<s:textfield key="JobTitle" name="jobTitle" value=""
					class="form-control" />

				<s:select key="Skills" cssStyle="width:210px; height:80" size="6"
					name="skills" value="" multiple="true" headerKey=""
					headerValue="--- Multi Select ---" class="form-control" 
					listKey="skill_id" listValue="skill_name"
					list="model.skillList" />


				<s:radio key="JobType" name="jobType" value=""
					list="#{'Remote':' Remote ', 'Onsite':' On-site '}" />




				<s:select key="JobLevel" name="jobLevel" headerKey="" value=""
					headerValue="--- choose --- " cssStyle="width:210px; height:80"
					class="form-control"
					list="#{'Entry-level':' Entry-level ', 'Mid-level':' Mid-level','Senior-level':'Senior-level'}" />

				<s:textfield key="Experience" name="experience" value=""
					id="experience" class="form-control" />

				<s:textfield key="Location" class="form-control" name="locations"
					value="" />



				<div id="validationResult" class="mb-3"
					style="color: red; font-weight: bold; font-style: italic;"></div>

			</s:form>
		

	</div>


</body>
</html>