<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>home</title>
    <link href="style/Stylehome.css" rel="stylesheet" />
    <link href="style/Stylemain.css" rel="stylesheet" />
   
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #0033CC;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">


          <div class="topnav">
  <a class="active" href="home.aspx">Home</a>
  <a href="news.aspx">Events</a>
  <a href="contact.aspx">Contacts</a>
  <a href="admin.aspx">Admin login</a>
   <a class="sign" href="Login.aspx"><i class="fa fa-sign-in" aria-hidden="true"> Login</i></a>
  <a class="log" href="reg.aspx"><i class="fa fa-user-plus"></i> SignUp</a>

</div>



    <div id="logo">   
        <img id="img" src="pic/h4.jpg" alt="Autism Wing" />    
     </div>


         <div>
        <p id="h1">Autism Speaks</p>
    </div>
   

        <div id="images"> 
    <script>
        var i = 0;
        var images = [];
        var time = 3000;


        images[0] = 'pic/image1.jpg';
        images[1] = 'pic/image2.jpg';
        images[2] = 'pic/image3.jpg';
        images[3] = 'pic/image4.jpg';
        images[4] = 'pic/image5.jpg';
        images[5] = 'pic/image6.jpg';
        images[6] = 'pic/image7.jpg';
        images[7] = 'pic/image8.jpg';
        images[8] = 'pic/image9.jpg';


        function changeImg() {
            document.slide.src = images[i];

            if (i < images.length - 1) {
                i++;
            }
            else {
                i = 0;
            }
            setTimeout("changeImg()", time);
        }

        window.onload = changeImg;
    </script> 

    <img name="slide" width="800" height="500"/>
    </div>



        <div class="des">
         
        <h2 id="desh">Welcome to Autism Speaks!!</h2>
        <p id="desp">Autism Speaks is a specialized organization that values the<br> holistic development of all children with special educational<br>
             needs through multidimensional programms.All the services<br> and facilities are open for all types of children with<br> special needs of 
            Bangladesh and other nationalities. The <br>institute also serves as training and research center for the<br> development of special education
             teachers and therapists.<br><br>
            A multidisciplinary specialist team uses standardized tools <br>for assessment and draw up goals to provide evidence<br> based therapy and
            training for every admitted student.<br>
            An experienced doctor provides health care services and<br> medical records are maintained for 
           special care<br> and management in emergency situations.
        </p>
    </div>



            <div class="navbar">
      	<ul>
      		<li><a href ="home.aspx"><i class="fa fa-home"></i> Home</a></li>
		     <li><a href ="#"><i class="fa fa-info-circle"></i> Information</a>
			     <ul>
                  
               <li><a href="#">Classes</a>
                    <ul>
                       <li><a href="academic.aspx">Academic</a></li>
                        <li><a href="singing.aspx">Singing</a></li>
                      
                        <li><a href="art.aspx">Art</a></li>
                       
                   </ul>
                </li>     
               <li><a href="xmldata.aspx">Our Teachers</a></li>
                     <li><a href="ajax.aspx">Search Teachers</a></li>
              <li><a href="library2.aspx">Library</a></li>
                     <li><a href="comment.aspx">Feedback</a></li>
             
              
             </ul>
		</li>

		
		<li><a href ="#"><i class="fa fa-server"></i> Outdoor Services</a>
            <ul>
             
              <li><a href="therapy.aspx">Therapies</a></li>
                <li><a href="activities.aspx">Activities</a></li>
              <li><a href="club.aspx">Clubs</a></li>
              <li><a href="handcraft.aspx">Handcrafts</a></li>
            </ul>
		</li>
<li><a href ="About.aspx"><i class="fa fa-users"></i> About</a>
          <ul>
              <li><a href="history.aspx">History</a></li>
              <li><a href="service.aspx">Services Available</a></li>
            
              <li><a href="achievement.aspx">Achievements</a></li>
               <li><a href="plan.aspx">Future plan</a></li>
          </ul>
    </li>
              
    <li><a href ="#"> <i class="fa fa-user-plus"></i>Students</a>
                  <ul>        
              <li><a href="stregister.aspx">Register</a></li>
              

                  </ul>
        </li>
     </ul>
   </div>




        <div id="clock"></div>
            <script src="js/radialIndicator.js"></script>
            <script src="js/angular.radialIndicator.js"></script>
            <script type="text/javascript">
                var radialObj = radialIndicator('#clock', {
                    radius: 40,
                    barWidth: 10,
                    barColor: '#ff3968',
                    minValue: 0,
                    maxValue: 60,
                    fontWeight: 'normal',
                    roundCorner: true,
                    format: function (value) {
                        var date = new Date();
                        return date.getHours() + ':' + date.getMinutes();
                    }
                });

                setInterval(function () {
                    radialObj.value(new Date().getSeconds() + 1);
                }, 1000);
          </script>


         <div id="news"> 

        <script src="js/jquery-1.8.2.min.js"></script>
<script>
    $(document).ready(function (e) {
        var newsNum = $(".newsTicker li").length;

        var totalNews_W = 0;
        for (var i = 0; i < newsNum; i++) {
            var news_W = $(".newsTicker li").eq(i).outerWidth(true);
            totalNews_W = totalNews_W + news_W;
        }

        $(".newsTicker").css('width', totalNews_W + 'px');

        var speed = 1, animAmount, animInterval;

        animateNews();

        function animateNews() {
            $(".newsTicker li").eq(0).animate({
                'marginLeft': '-=' + speed + 'px'
            }, 1, function () {
                animAmount = speed;
                var animNews_W = $(".newsTicker li").eq(0).outerWidth(true);

                console.log($(this));

                if (animAmount >= animNews_W) {
                    $(this).parent().append($(this));
                    $(this).removeAttr('style');
                }

                animInterval = setTimeout(function () {
                    animateNews();
                });
            });
        }

        $(".newsTicker").hover(function () {
            clearTimeout(animInterval);
            $(".newsTicker li").eq(0).stop();
        }, function () {
            animateNews();
        });
    });
        </script>
</div>
       
  



    <div class="newsTickerCon">
  <ul class="newsTicker">
    <li>Admission open for B. Sc in Audiology & Speech Language Pathology and B. Ed in Special and Inclusive Education.</li>
    <li>The eleventh annual World Autism Awareness Day, April 2, 2018 is celebrated with unique fundraising and awareness-raising events.</li>
    <li>Autism Speaks teams up with NCAA basketball coaches and fans for Coaches Powering Forward.</li>
    <li>Upcoming Events. 5th Annual Light Up The Blues Concert—An Evening of Music to Benefit Autism Speaks.</li>
    <li>Autism camps for kids specialise in dealing with symptoms of ASD, understanding the needs of autistic kids or children on the Autism Speaks.</li>
    <li>The Summer session admission deadline is 13th march,2018.</li>
    <li>Play-based approach to treatments, including ABA, that help young children with autism spectrum disorders make progress in ways that are fun and meaningful.</li>

  </ul>
</div>

       
     

        <div id="main">

        <div id="a1">
            
            <img src="pic/a111.jpg" />
            <p id="title">Singing Session</p>
            <p id="content">Kids dealing with autism and other developmental disorders by the help of music.</p>
        </div>
        <div id="a2">
            <img src="pic/a2.jpg" />
            <p id="title">Amazing Handcrafts</p>
              <p id="content">Handcrafts are made by students inhancing their creativity and items are sold by the students also.</p>
        </div>

        <div id="a3">
            <img src="pic/a3.jpg" />
            <p id="title">Art Session</p>
             <p id="content">Kids developing skills by participating in art session and drawing helps their mental growth.</p>
        </div>
    </div>



        <div class="auto-style2">

            <br />
            <br />
            <br />
            <br />
            <strong><span class="auto-style1">Our History and Future plan</span></strong><br />
            <br />
            <br />

        </div>

           <a href="#" class="textOverImage" style="background-image:url(pic/s8.jpg)"  data-title="Autism" data-text="Autism, or autism spectrum disorder, refers to a range of conditions characterized by challenges with social skills, repetitive behaviors, speech and nonverbal communication, as well as by unique strengths and differences. We now know that there is not one autism but many types, caused by different combinations of genetic and environmental influences.
	">
</a>

<a href="#" class="textOverImage" style="background-image:url(pic/s9.jpg)" data-title="Spectrum" data-text="The term “spectrum” reflects the wide variation in challenges and strengths possessed by each person with autism.">
</a>

<a href="#" class="textOverImage" style="background-image:url(pic/t4.jpg)" data-title="Organization" data-text="Autism Speaks is an autism organization that, along with its predecessor organizations, has been a source of funding directed towards the causes and treatment of autism spectrum disorders; it also conducts awareness and outreach activities aimed at families, governments and the public.">
</a>

        <a href="#" class="textOverImage" style="background-image:url(pic/s7.jpg)" data-title="Our History" data-text="
On April 2, 2013, the Cloth Hall, Ypres, Belgium with Nieuwerck (nl) was lit up blue for the World Autism Day.
The Walk for Autism Research program conducts an annual autism walk on Long Island, New York; the walk attracted 20,000 participants in October 2006 and raised $2 million.">
</a>
       



 <div class="footer">
            <ul>
               
            <li><a><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            <li><a><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                
                </ul>
              <p id="para">
               ©2018 Autism Speaks Inc. Autism Speaks and Autism Speaks It's Time To Listen &</br> Design are registered trademarks owned by Autism Speaks Inc. All rights reserved.<br />


               Autism Speaks, california-90001, United States.Tel: (9956 41) 769468-75 Fax: (991 41) 774403. 2018 | E-mail:  autismspeaks.org 
   
  
           </p>
        </div>

    </form>
</body>
</html>
