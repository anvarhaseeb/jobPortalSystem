
 <!--Job.jsp :- the jsp load other jsp here as per ajax -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Job Portal</title>
<link rel="icon"
	href="https://media.licdn.com/dms/image/C560BAQF5u5PbEVctsA/company-logo_200_200/0/1659672152895?e=2147483647&v=beta&t=eft03TQpH38N009tAS6gYYjFW41Re7vS4_w53agHpYg"
	sizes="32x32" type="image/png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/themes/redmond/jquery-ui.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/css/ui.jqgrid.min.css">
<link rel="stylesheet" href="./css/Job.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/f8ecaab97d.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/free-jqgrid/4.15.5/jquery.jqgrid.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
a { color: green; } 
.testimonial-container {
    display: flex;
    justify-content: space-between; 
}

.testimonial-card {
    flex: 1; 
    height: 250px;
    transition: filter 0.3s ease-in-out;
    filter: blur(5px);
}

.testimonial-card.active {
    filter: blur(0); 
}


</style>
<script>
let currentIndex = 1; 

function showCard(index) {
    const cards = document.querySelectorAll('.testimonial-card');
    cards.forEach((card, i) => {
        card.classList.toggle('active', i === index);
    });
}

function nextCard() {
    currentIndex = (currentIndex + 1) % 3;
    showCard(currentIndex);
}

setInterval(nextCard, 2000); 


    $(document).ready(function() {
        var savedColor = localStorage.getItem('colors');

        if (savedColor) {
            $("#navColor, #footerColor, #nav2color").css("background-color", savedColor);
            $(".jobIcon").css("color", savedColor);
        }

        $("#menud").click(function(e) {
            e.stopPropagation();
            $(".menu").toggle(100);
        });

    });
</script>

</head>

<body style="margin: 0 margin: 0; 
    padding: 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;" >
	<s:include value="./pages/Header.jsp" />

	<div class="content">
	
		<div class="container mt-3 mb-3"
			style="background: #95959513; padding: 20px;">

			<div id="content" style="min-height: calc(100vh - 290px);">
				<div class="d-flex align-items-center flex-column">
					<h3 class="p-2"
						style="background-color: #a00; width: 101%; color: white; text-align: center; font-weight: bold; font-family: sans-serif;">
						<s:text name="welcome.message" />

					</h3>

					<div id="carouselExample1" class="carousel slide"
						style="width: 100%; height: 100%">
						<div class="carousel-indicators">
				    	<button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    	<button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    	<button type="button" data-bs-target="#carouselExample1" data-bs-slide-to="2" aria-label="Slide 3"></button>
				 			 </div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="./images/jpsbgg.jpg" class="d-block w-100"
									alt="Slide 1" style="width: 100%; height: 500px" />
							</div>

							<div class="carousel-item">
								<img src="./images/jpsbgg4.jpg" class="d-block w-100"
									alt="Slide 3" style="width: 100%; height: 500px" />
							</div>
							<div class="carousel-item">
								<img src="./images/jpsbg6.jpg" class="d-block w-100"
									alt="Slide 3" style="width: 100%; height: 500px" />
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExample1" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExample1" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>


					<div class="container mt-3 mb-3">
						<h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">
							<s:text name="jobdescription.messages" />
						</h1>
						<div class="row g-4">
							<s:iterator value="jobCounts">
								<div class="col-lg-3 col-sm-6 wow fadeInUp"
									data-wow-delay="0.1s">
									<div class="rounded p-4 bg-white">
										<s:set var="iconClass">
											<s:if test="category == 'Software & IT'">fa fa-3x fa-laptop fa-flip</s:if>
											<s:elseif test="category == 'Customer Service'">fa fa-3x fa-headset  fa-shake</s:elseif>
											<s:elseif test="category == 'Business Development'">fa fa-3x fa-chart-line</s:elseif>
											<s:elseif test="category == 'Electrical'">fa fa-3x fa-solid fa-light fa-bolt fa-beat
                        </s:elseif>
											<s:else>fa fa-3x  fa-duotone fa-user-tie fa-bounce</s:else>
										</s:set>
										<a class="cat-item rounded p-4"
											onclick="toSearchPages('search?category=<s:property value="category" />&actionName=home')"
											style="text-decoration: none" role="button"> <s:hidden
												name="category" value='<s:property value="category" />'></s:hidden>
											<i class="fa <s:property value="#iconClass" /> jobIcon mb-4"></i>
											<h6 class="mb-3">
												<s:property value="category" />
											</h6>
											<p class="mb-0">
												<s:property value="count" />
												Vacancy
											</p>
										</a>
									</div>
								</div>
							</s:iterator>
						</div>
					</div>
					<br>
					<div class=" container bg-white p-3">
							
				<div class="testimonial-container mt-3 gap-3">
							
				    <div class="testimonial-card  ">
				        <div class="d-flex flex-column text-white gap-2 p-3 rounded" style="width: 300px; height: 250px;" id="navColor">
				            <div>
				                <i class="fa fa-quote-left fa-2x text-white mb-3 "></i>
				                <p>Thanks to this incredibly user-friendly job portal system, navigating through opportunities was a breeze, ultimately landing me my dream job!</p>
				            </div>
				            <div>
				                <span>Customer Review 1</span>
				            </div>
				        </div>
				    </div>
				
				    <div class="testimonial-card active" >
				        <div class="d-flex flex-column text-white gap-2 p-3 rounded" style="width: 300px; height: 250px;" id="navColor">
				            <div>
				                <i class="fa fa-quote-left fa-2x text-white mb-3"></i>
				                <p>The intuitive interface and personalized job recommendations played a pivotal role in helping me secure employment swiftly – kudos to this platform!</p>
				            </div>
				            <div>
				                <span>Customer Review 2</span>
				            </div>
				        </div>
				    </div>
				
				    <div class="testimonial-card">
				        <div class="d-flex flex-column text-white gap-2 p-3 rounded" style="width: 300px; height: 250px;" id="navColor">
				            <div>
				                <i class="fa fa-quote-left fa-2x text-white mb-3"></i>
				                <p>This job portal's simplicity made the job search process enjoyable, leading me to discover and successfully secure a fantastic career opportunity.</p>
				            </div>
				            <div>
				                <span>Customer Review 3</span>
				            </div>
				        </div>
				    </div>
				</div>
			</div>

				</div>
			</div>
		</div>
		<div></div>
	</div>

	<div id="logoFoot">

			<div class="container">
				<div class="row">
					<div class="col-8"></div>
					<div class="col-4">
						<div style="text-align: right;">
							<img src="./images/JPS.png" alt="logo" style="height: 100px; margin: 0;" />
						</div>
					</div>
				</div>
			</div>

		</div>
	
	
	<s:include value="./pages/Footer.jsp" />
	<script>
	
    function toSearchPages(viewPageLink){
    	debugger;
    	 console.log('View Page Link:', viewPageLink);
    	$('body').append('<div class="overlay"><div class="loading  gap-2"><img src="./images/proload.gif" alt=""><s:text name="loading.content"/></div></div>');

        $.ajax({
            url: viewPageLink,
            method: 'POST',
            success: function (data) {
            	$('.overlay').remove();
                $('#content').html(data);

            },
            error: function (error) {
                console.error('Error fetching data:', error);
            }
        });
    }
	function changeNavBarColor(color) {
		localStorage.setItem('colors', color);
	    document.querySelector("#navColor").style.backgroundColor = color;
	    document.querySelector("#footerColor").style.backgroundColor = color;
	    document.querySelector("#nav2color").style.backgroundColor = color;
	    var jobIcons = document.querySelectorAll(".jobIcons");
	    jobIcons.forEach(function(icon) {
	        icon.style.color = localStorage.getItem('colors');
	    });
	    
	  
	    
	}

		window.history.pushState(null, null, window.location.href);
		window.onpopstate = function() {
			window.history.go(1);
		};
	
		function searchPages() {
			$('body').append('<div class="overlay"><div class="loading  gap-2"><img src="./images/proload.gif" alt=""><s:text name="loading.content"/></div>');
			$.ajax({
				url : 'searchPage',
				method : 'POST',
				success : function(data) {
					$('.overlay').remove();			
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}
		function signOut() {
			$.ajax({
				url : 'signOut',
				method : 'POST',
				success : function(data) {
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}
		function addPages() {
			$.ajax({
				url : 'addPage',
				method : 'POST',
				success : function(data) {
					localStorage.setItem('addDatas', data);
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}

		function actionAddEdit() {
			var formData = $('#addEditForm').serialize();
			console.log(formData);
			$.ajax({
				url : 'actionNames',
				method : 'POST',
				data : formData,
				success : function(data) {
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}

		function searchJob() {
			$('body').append('<div class="overlay"><div class="loading  gap-2"><img src="./images/proload.gif" alt=""><s:text name="loading.content"/> </div>');

			var formData = $('#searchForm').serialize();
			console.log(formData);
			$.ajax({
				url : 'search',
				method : 'POST',
				data : formData,
				success : function(data) {
					$('.overlay').remove();
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}
		function cancel() {
			$('body')
					.append(
							'<div class="overlay"><div class="loading  gap-2"><img src="./images/proload.gif" alt=""><s:text name="loading.content"/></a></div></div>');

			$.ajax({
				url : 'cancel',
				method : 'POST',
				success : function(data) {
					$('.overlay').remove();
					$('#content').html(data);

				},
				error : function(error) {
					console.error('Error fetching data:', error);
				}
			});
		}
	</script>
</body>
</html>