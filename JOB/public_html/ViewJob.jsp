
<!-- ViewJob.jsp :- the jsp for to show the job data or details individually, when click in the eye butto in jqGrid -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
  <s:iterator value="jobList">
    <a class="btn btn-secondary mt-2" onclick="cancel()"><s:text name="cancel.button"/></a>
	 <a class="btn btn-primary mt-2" onclick="editPage('toEditPage?jobId=<s:property value="jobId"/>')">Edit</a>
   			 
 <div class="container mt-3  rounded" style="height: auto; background: white; padding: 20px;">
    <table class="table table-light">
      
            <tr>
                <th>Job Title </th>
                <td><s:property value="jobTitle" /></td>
            </tr>
            <tr>
                <th>Company Name</th>
                <td><s:property value="cmpName" /></td>
            </tr>
            <tr>
                <th>Requester Name</th>
                <td><s:property value="reqName" /></td>
            </tr>
            <tr>
                <th>Company Website</th>
                <td><s:property value="cmpWebsite" /></td>
            </tr>
            <tr>
                <th>Posting Date</th>
                <td><s:property value="postingDate" /></td>
            </tr>
            <tr>
                <th>Skills</th>
                <td><s:property value="skills" /></td>
            </tr>
            <tr>
                <th>CTC From</th>
                <td><s:property value="ctcFrom" /></td>
            </tr>
            <tr>
                <th>CTC To</th>
                <td><s:property value="ctcTo" /></td>
            </tr>
            <tr>
                <th>Job Type</th>
                <td><s:property value="jobType" /></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><s:property value="cmpEmail" /></td>
            </tr>
            <tr>
                <th>Job Level</th>
                <td><s:property value="jobLevel" /></td>
            </tr>
            <tr>
                <th>Experience</th>
                <td><s:property value="experience" /></td>
            </tr>
            <tr>
                <th>Locations</th>
                <td><s:property value="locations" /></td>
            </tr>
            <tr>
                <th>Job Description</th>
			<td><c:out value="${jobDescription}" escapeXml="false" /></td>
            </tr>
            
           
     
    </table>
    </div>
    </s:iterator>
</body>
</html>
