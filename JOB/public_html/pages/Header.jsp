<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
    .nav-item:hover{
    background-color:#454545;
    border-radius: 5px;
    }
    
    
    </style>
<script>

$(document).ready(function(){
    $('#featuresDropdown').mouseover(function(){
        $(this).addClass('show');
        $(this).find('a').attr('aria-expanded', true);
        $(this).find(' ul').addClass('show');
    });

    $('#featuresDropdown').mouseout(function(){
        $(this).removeClass('show');
        $(this).find(' a').attr('aria-expanded', false);
        $(this).find(' ul').removeClass('show');
    });
    $('#tools').mouseover(function(){
        $(this).addClass('show');
        $(this).find('a').attr('aria-expanded', true);
        $(this).find(' ul').addClass('show');
    });

    $('#tools').mouseout(function(){
        $(this).removeClass('show');
        $(this).find(' a').attr('aria-expanded', false);
        $(this).find(' ul').removeClass('show');
    });
    
  
});



</script>
    </head>
<body>
<div class="bootstrap-container">



    <nav class="navbar navbar-expand-lg navbar-light " id="navColor" style="background-color: green;">
       <div class="container-fluid">
       <a class="navbar-brand"
                style="color: white; letter-spacing: 5px; border-radius: 25px; margin-right: 15px;">JPS</a>
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               
                <li class="nav-item dropdown" id="featuresDropdown">
                    <a class="nav-link dropdown-toggle p-2 rounded text-white"  role="button"
                        data-bs-toggle="dropdown" style="background-color: #454545;">
                        <s:text name="features.header"/>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item"  role="button" onclick="searchPages()"><s:text name="jobsearch.message"/></a></li>
                        
                    </ul>
                </li>
            </ul>


	<ul class="nav">

				
       <li class="nav-item dropdown" id="tools">
      <a class="nav-link active dropdown-toggle" role="button" title="tools" data-bs-toggle="dropdown">
         <i class="fa-solid fa-wrench fa-beat text-white"></i>
      </a>
      <ul class="dropdown-menu">


         <li class="nav-items dropdown" id="menud"><a role="button">
            <i class="fa fa-plus-square">&nbsp</i><s:text name="themes.header"/></a>
            <div style="display:none" class="menu">
               <ul style="list-style: none;">
                
				<li><a onmouseover="changeNavBarColor('#0171c7')" role="button" style="color:#0171c7"><i class="fa-solid fa-circle">&nbsp</i><s:text name="blue"/></a></li>
				<li><a onmouseover="changeNavBarColor('#585858')" role="button" style="color:#585858"><i class="fa-solid fa-circle">&nbsp</i><s:text name="grey"/></a></li>
 				<li><a onmouseover="changeNavBarColor('green')" role="button" style="color:green"><i class="fa-solid fa-circle">&nbsp </i><s:text name="green"/></a></li>
 				<li><a onmouseover="changeNavBarColor('teal')" role="button" style="color:teal"><i class="fa-solid fa-circle">&nbsp </i><s:text name="teal"/></a></li>
               </ul>
            </div>
         </li>
      </ul>
   </li>

						<li class="nav-item"><a class="nav-link active" title="tools"href="home"><i class="fas fa-home text-white"></i></a>
							</li>
						<li class="nav-item"><a title="mail" href="mailto:your-email@jps.com"
							class="nav-link"> <i class="fas fa-envelope text-white"></i>
						</a></li>
						<li class="nav-item"><a title="sign-out" class="nav-link" href="signOut"><i
								class="fas fa-sign-out-alt text-white"></i></a></li>
					</ul>

				</div>
		
				
			
        </div>
    </nav>
    
</div>


</body>
</html>