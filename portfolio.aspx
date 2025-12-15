<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="portfolio.aspx.cs" Inherits="WebApplication1.portfolio" %>


<!DOCTYPE html>
<!-- Created By CodingNepal -->
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Personal Portfolio Website</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=fire|neon|outline|emboss|shadow-multiple">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.11/typed.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   <%-- <a href="App_Data/">App_Data/</a>--%>
    <script src="https://smtpjs.com/v3/smtp.js"></script>
    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.2/css/all.min.css" />

<style>
    /*  import google fonts */
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;800;900&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
}
html {
  scroll-behavior:smooth;
}

/* custom scroll bar */
::-webkit-scrollbar {
  width: 10px;
}
::-webkit-scrollbar-track {
  background: #f1f1f1;
}
::-webkit-scrollbar-thumb {
  background: #888;
}

::-webkit-scrollbar-thumb:hover {
  background: #555;
}

/* all similar content styling codes */
section {
  padding: 100px 0;
}
.max-width {
  max-width: 1300px;
  padding: 0 80px;
  margin: auto;
}
.about,
.services,
.skills,
.teams,
.contact,
footer {
  font-family: "Poppins", sans-serif;
}
.about .about-content,
.services .serv-content,
.skills .skills-content,
.contact .contact-content {
  
  display: -webkit-flex; 
   flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
}
section .title {
  position: relative;
  text-align: center;
  font-size: 40px;
  font-weight: 500;
  margin-bottom: 60px;
  padding-bottom: 20px;
  font-family: "Ubuntu", sans-serif;
}
section .title::before {
  content: "";
  position: absolute;
  bottom: 0px;
  left: 50%;
  width: 180px;
  height: 3px;
  background: #111;
  transform: translateX(-50%);

  
}
section .title::after {
  position: absolute;
  bottom: -8px;
  left: 50%;
  font-size: 20px;
  color: #4070f4;
  padding: 0 5px;
  background: #fff;
  transform: translateX(-50%);

  /*position:absolute;
  left:-30%;
  top 5px;
  width:160%;
  height:80px;
  clip-path: polygon(5% 100% 0px, 75% opx, 95% 100%);
  background:linear-gradient(to botton, rgba(255, 255, 255, 0.3) -50%, rgba(255, 255, 255, 0) 90%);
  pointer-events:non;*/
}

/* navbar styling */
.navbar {
  position: fixed;
  width: 100%;
  z-index: 999;
  padding: 30px 0;
  font-family: "Ubuntu", sans-serif;
  transition: all 0.3s ease;
}
.navbar.sticky {
  padding: 15px 0;
  /* background: #4070f4; */
  background:#A5B381;
}
.navbar .max-width {
  display: -webkit-flex;
  align-items: center;
  justify-content: space-between;
}
.navbar .logo a{
  color: black;
  font-size: 35px;
  font-weight: 600;
}

 .navbar .max-width .menu{
  border-radius:20px;
 }

.navbar .logo a span {
color: #4070f4;  
  transition: all 0.3s ease;
  
}
.navbar.sticky .logo a span {
  color: #fff;
 
}
.navbar .menu li {
  list-style: none;
  display: inline-block;
}
.navbar .menu li a {
  display: block;
  color: black;
  font-size: 18px;
  font-weight: 500;
  margin-left: 25px;
  transition: color 0.3s ease;
}
.navbar .menu li a:hover,
.navbar .menu li .active a{
 color: #4070f4;
 
}
.navbar.sticky .menu li a:hover{
  color: #fff;
}
.scroll-up-btn {
  position: fixed;
  height: 45px;
  width: 42px;
  background: #4070f4;
  right: 30px;
  bottom: 10px;
  text-align: center;
  line-height: 45px;
  color: #fff;
  z-index: 9999;
  font-size: 30px;
  border-radius: 6px;
  border-bottom-width: 2px;
  cursor: pointer;
  opacity: 0;
  pointer-events: none;
  transition: all 0.3s ease;
}
.scroll-up-btn.show {
  bottom: 30px;
  opacity: 1;
  pointer-events:all;
  
}
.scroll-up-btn:hover {
  filter: brightness(90%);
}

/* home section styling */
.home {
  display: -webkit-flex;
  width: 100%;
  height: 100vh;
  color: black;
  min-height: 50px;
  font-family: "Ubuntu", sans-serif;
  /*background-color: white;*/
  background: linear-gradient(270deg, #8d6a90, #838c63, #b35ba0);
  /*z-index: -1;*/
  background-size: 600% 600%;
  animation: borderMove 8s ease infinite;
 
}
@keyframes borderMove {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
.home .max-width {
  width: 100%;
  /*display: flex;*/


}
.home .max-width .row {
  margin-right: 0;
}
.home .home-content .text-1 {
  font-size: 27px;
  cursor:none;
}
.home .home-content .text-2 {
  font-size: 75px;
  font-weight: 600;
  margin-left: -3px;
  font-family: "Sofia";
  text-shadow: 3px 3px 3px #ababab;
  cursor:none;
}
.home .home-content .text-3 {
  font-size: 40px;
  margin: 5px 0;
}
.home .home-content .text-3 span {
  color: #4070f4;
  font-weight: 500;
}
.home .home-content a {
  display: inline-block;
  background: #4070f4;
  color: #fff;
  font-size: 25px;
  padding: 12px 36px;
  margin-top: 20px;
  font-weight: 400;
  border-radius: 6px;
  border: 2px solid #4070f4;
  transition: all 0.3s ease;
}
.home .home-content a:hover {
  color: #4070f4;
  background: none;
}
.navbar .media-icons a {
  color: black;
  font-size: 18px;
  margin: 0 6px;
}
nav.sticky .media-icons a {
  color: #fff;
}
.image {
  width: 45%;
  height: 80%;
  position: absolute;
  bottom: 0;
  right: 100px;
}
.image img {
  height:350px;
  width:350px;
  position: absolute;
  left:50%;
  bottom: 60px;
  border-top: 3px solid rgb(235, 55, 223);
  border-bottom: 3px solid rgb(85, 55, 235);
  transform:translateX(-30%);
  transition: bottom 1s, left 1s;
  border-radius: 50%;
 box-shadow: 0 22px 20px rgb(195, 95, 188);
}

.image:hover .background {
  bottom: 10px;
    
}
.image:hover .prince {
  left: 50px;
   
}
   
/* about section styling */
/* .about .title::after {
  content: "who i am";
} */
.about .about-content .left {
  width: 45%;
}
.about .about-content .left img {
  width: 350px;
  height: 350px;
  /*display: flex;*/
  display: -webkit-flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 22px 20px rgb(50, 97, 110);
  border-radius: 50%;
  border-top:5px solid rgba(242, 241, 241, 0.998);
  border-bottom:  5px solid rgba(242, 241, 241, 0.998);

}

.left-content .image img{
  width: 300px;
  height: 256px;
  border-radius: 50%;
}
.about .about-content .right {
  width: 55%;
}
.about .about-content .right .text {
  font-size: 25px;
  font-weight: 600;
  margin-bottom: 10px;
}
.about .about-content .right .text span {
  color: #4070f4;
}
.about .about-content .right p {
  text-align: justify;
}
.about .about-content .right a {
  display: inline-block;
  background: #4070f4;
  color: #fff;
  font-size: 20px;
  font-weight: 500;
  padding: 10px 30px;
  margin-top: 20px;
  border-radius: 6px;
  border: 2px solid #4070f4;
  transition: all 0.3s ease;
}
.about .about-content .right a:hover {
  color: #4070f4;
  background: none;
}

/* services section styling */
.services,
.teams {
  color: #fff;
  background: #111;
}
.services .title::before,
.teams .title::before {
  background: #fff;
}

.services .serv-content .card {
  width: calc(33% - 20px);
  background: #222;
  text-align: center;
  border-radius: 6px;
  padding: 50px 25px;
  cursor: pointer;
  transition: all 0.3s ease;
}

.services .serv-content .card .box {
  transition: all 0.3s ease;
}
.services .serv-content .card:hover .box {
  transform: scale(1.05);
}
.services .serv-content .card i {
  font-size: 50px;
  color: #4070f4;
  transition: color 0.3s ease;
}
.services .serv-content .card:hover i {
  color: #fff;
}
.services .serv-content .card .text {
  font-size: 25px;
  font-weight: 500;
  margin: 10px 0 7px 0;
}

.skills .skills-content .column {
  width: calc(50% - 30px);
}
.skills .skills-content .left .text {
  font-size: 20px;
  font-weight: 600;
  margin-bottom: 10px;
}
.skills .skills-content .left p {
  text-align: justify;
}
.skills .skills-content .left a {
  display: inline-block;
  background: #4070f4;
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  padding: 8px 16px;
  margin-top: 20px;
  border-radius: 6px;
  border: 2px solid #4070f4;
  transition: all 0.3s ease;
}
.skills .skills-content .left a:hover {
  color:#4070f4;
  background: none;
}
.skills .skills-content .right .bars {
  margin-bottom: 15px;
}
.skills .skills-content .right .info {
  /*display: flex;*/
  display: -webkit-flex; 
  margin-bottom: 5px;
  align-items: center;
  justify-content: space-between;
}
.skills .skills-content .right span {
  font-weight: 500;
  font-size: 18px;
}
.skills .skills-content .right .line {
  height: 5px;
  width: 100%;
  background: lightgrey;
  position: relative;
}
.skills .skills-content .right .line::before {
  content: "";
  position: absolute;
  height: 100%;
  left: 0;
  top: 0;
  background: #4070f4;
  
}
.skills-content .right .html::before {
  width: 90%;
}
.skills-content .right .css::before {
  width: 90%;
}
.skills-content .right .js::before {
  width: 70%;
}
.skills-content .right .react::before {
  width: 70%;
}
.skills-content .right .node::before {
  width: 60%;
}
.skills-content .right .python::before {
  width: 60%;
}
.skills-content .right .GitHub::before {
  width: 80%;
}

/* contact section styling */
/* .contact .title::after{
  content: "get in touch";
} */
.contact .contact-content .column{
  width: calc(50% - 30px);
}
.contact .contact-content .text{
  font-size: 20px;
  font-weight: 600;
  margin-bottom: 10px;
  margin-top: -100px;
}
.contact .contact-content .left p{
  text-align: justify;
}
.contact .contact-content .left .icons{
  margin: 10px 0;
}
.contact .contact-content .row{
  /*display: flex;*/
  display: -webkit-flex;
  height: 65px;
  align-items: center;
}
.contact .contact-content .row .info{
  margin-left: 30px;
}
.contact .contact-content .row i{
  font-size: 25px;
 color: #4070f4; 
  
}
.contact .contact-content .info .head{
  font-weight: 500;
}
.contact .contact-content .info .sub-title{
  color: #333;
}
div.container {
  margin:0;
   padding: 0;
  height: 55vh;
  display:flexbox;
  align-items: center;
  justify-content: center;
  background-color: white;
  transform: translateY(-83px);
}
.container {
  margin-bottom: 40px;
  width: 400px;
  background-color: #4070f4;
  border-radius: 5px;
  padding: 20px;
  text-align: center;
}
.container input {
  width: 100%;
  padding: 15px;
  border: none;
  border-bottom: 2px solid #777777;
  margin-bottom: 15px;
  font-size: 16px;
  outline: none;
}
.btn {
  border: none !important;
  cursor: pointer;
  background-color: #4070f4;
  margin: 15px 0;
  font-size: 16px;
  width: 40%;
  padding: 14px;
  border-radius: 5px;
}
.btn:hover {
  background-color: #4070f4;
  color: white;
}

/* footer section styling */
footer {
  background: #111;
  padding: 15px 23px;
  color: #fff;
  text-align: center;
}
footer span a {
  color: #3978f4;
  text-decoration: none;
}
footer span a:hover {
  text-decoration: underline;
}
.media-icons a{
  display: inline-flexbox;  
  padding: 8px;
 border: 2px solid black;
 border-radius: 50%;
 font-size: 20px;
 color: black;
margin: 0 8px;
box-shadow: 2px 4px 5px black;
}
.media-icons a:hover{
  font-size: 20px;
}
.navbar logo a{
  box-shadow: 2px 4px 5px black;
}
#home{
  background-color: lightgrey;
}
#about{
  background-color:#332B47;
  color: white;
}
#skills{
  background-color: #BCCAD6;
}
#contact{
  background-color: #A8E5F0;
}
    .auto-style1 {
        width:420px;
        justify-content:center;
    }
    .auto-style4 {
        text-align: center;
        width: 387px;
    }


    .auto-style5 {
        text-align: center;
        height: 52px;
        width: 387px;
    }
.prince12{
    margin-top:20px;
}
.card{
    border:2px solid blue;
}
.services .serv-content .card:hover {
  background: #4070f4;
   box-shadow: 1px 2px 2px 2px  red ;
   border:none;
  
}
.menu li a {
  padding: 6px 25px;
  border-radius: 50px;
  cursor: pointer;
  border: 0;
  background-color: white;
  box-shadow: 0 0 8px rgba(0,0,0,0.5);
  letter-spacing: 1.5px;
  text-transform: uppercase;
  font-size: 15px;
  transition: all 0.5s ease;
}

.menu li a:hover {
  letter-spacing: 3px;
  background-color: hsl(261, 80%, 48%);
  color: hsl(0, 0%, 100%);
  box-shadow: 0px 7px 29px 0px;
}

.menu li a:active {
  letter-spacing: 3px;
    background-color: hsl(261, 80%, 48%);
  color: hsl(0, 0%, 100%);
  box-shadow: rgb(93, 24, 220) 0px 0px 0px 0px;
  transform: translateY(10px);
  transition: 100ms;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="scroll-up-btn">
        <i class="fas fa-angle-up"></i>
    </div>
    
    <nav class="navbar">
        
        <div class="max-width">
            <div class="logo"><a href="#">Pr<span>ince.</span></a></div>
          
            <ul class="menu">
                <li><a href="#home" class="menu-btn" id="active">Home</a></li>
                <li><a href="#about" class="menu-btn">About</a></li>
                <li><a href="#services" class="menu-btn">Services</a></li>
                <li><a href="#skills" class="menu-btn">Skills</a></li>
                <li><a href="#contact" class="menu-btn">Contact</a></li>
            </ul>
            <div class="media-icons">
                <a
                    href="https://www.linkedin.com/in/prince-bari-16514a274?"><i
                        class="fab fa-linkedin"></i></a>
                <a href="https://github.com/prince7762"><i class="fab fa-github"></i></a>
                <a href="https://www.instagram.com/prince_bari208/profilecard/?igsh=Nm9jajN0ajU5OWJl"><i
                        class="fab fa-instagram"></i></a>
                    
            </div>
        </div>
    </nav>
      
         
    <!-- home section start -->
    <section class="home" id="home">
        <div class="max-width">
            <div class="home-content">
                <div   class="text-1" >Hello, my name is</div>
                <div class="text-2">Prince Bari</div>
                <a href="#">Hire me</a>
            </div>
        </div>
    </section>
    <div class="image">
        <img src="images/prince13.jpg" class="background"> 
        <img src="images/prince15.jpg" class="prince">
    </div>

    <!-- about section start -->
    <section class="about" id="about">
        <div class="max-width">
            <h2 class="title">About me</h2>
            <div class="about-content">
                <div class="column left">
                    <img src="images/prince_2.jpeg" alt="">
                </div>
                <div class="column right">
                    <div class="text">I'm Prince and I'm a <span class="typing-2"></span></div>
                    <p>Enthusiastic and self-motivated web designer with the experience of many small projects
                        during my college curriculum. Eager to join Studio Shodwe and bring my skill in frontend
                        development, and visual design to every project that will be received in the future. Highly
                        skilled in communication, collaboration, and technical documentation. Solution-oriented
                        and problem solver with the experience of many small projects during my college
                        curriculum building and maintaining software and software architecture.</p>
                    <a href="pdf\Prince_Resume_!2024.pdf">Download CV</a>
                </div>
            </div>
        </div>
    </section>

    <!-- services section start -->
    <section class="services" id="services">
        <div class="max-width">
            <h2 class="title">My services</h2>
            <div class="serv-content">
                <div class="card">
                    <div class="box">
                        <i class="fas fa-code"></i>
                        <div class="text">Asp.Net Developer</div>
                        <p>I enjoy building everything from small businesse sites to rich interactive web apps.</p>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <i class="fas fa-paint-brush"></i>
                        <div class="text">Web Design</div>
                        <p>I am a designer focusing on web design, collaborating and using to create unique design.</p>
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <i class="fas fa-chart-line"></i>
                        <div class="text">Web Developer</div>
                        <p>I have designed interactive experiences for websites, web-based games, and tools.</p>
                    </div>
                </div>
                
            </div>
        </div>
        
    </section>

    <!-- skills section start -->
    <section class="skills" id="skills">
        <div class="max-width">
            <h2 class="title">My skills</h2>
            <div class="skills-content">
                <div class="column left">
                    <div class="text">My creative skills & experiences.</div>
                    <p>I have a passion for frontend web development and have experience in coding HTML, CSS,
                        JavaScript, SQL Server and Asp.Net Using C#</p>
                    <a href="#">Read more</a>
                    <marquee direction="right">
                         <img src="logo/visual_!.png" style="width:70px; border-radius:50%; margin:15px;" />
                        <img src="logo/git.png"style="width:70px; border-radius:50%; margin:15px;" />
                         <img src="logo/python_1.png"style="width:70px; margin:15px;"/> 
                        <img src="logo/sql_server_!.png"style="width:70px; margin:15px;" />
                         <img src="logo/ASP.Net.jpeg"style="width:70px; border-radius:50%; margin:15px;"/>
                         <img src="logo/javascript_1.png" style="width:80px; margin:15px;" />
                        <img src="logo/css3.png" style="width:70px; margin:15px;"\>
                        <img src="logo/html_1.png" style="width:70px; margin:15px;"\>
                    </marquee>
                </div>
                <div class="column right">
                    <div class="bars">
                        <div class="info">
                            <span>HTML</span>
                            <span>90%</span>
                        </div>
                        <div class="line html"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>CSS</span>
                            <span>90%</span>
                        </div>
                        <div class="line css"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>JavaScript</span>
                            <span>70%</span>
                        </div>
                        <div class="line js"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>Asp.Net Using C#</span>
                            <span>85%</span>
                        </div>
                        <div class="line react"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>SQL Server</span>
                            <span>70%</span>
                        </div>
                        <div class="line node"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>Python</span>
                            <span>60%</span>
                        </div>
                        <div class="line python"></div>
                    </div>
                    <div class="bars">
                        <div class="info">
                            <span>Git & GitHub</span>
                            <span>80%</span>
                        </div>
                        <div class="line Git & GitHub"></div>
                    </div>   
                </div>
            </div>
        </div>
    </section>
    <!-- contact section start -->

    <section class="contact" id="contact">
        <div class="max-width">
            <h2 class="title">Contact me</h2>
            <div class="contact-content">
                <div class="column left">
                    <div class="text">Get in Touch</div>
                    <p>You have to contact me with your name and email or talk about any subject, then you can send
                        message and then i will get in touch with you.</p>
                    <div class="icons">
                        <div class="row">
                            <i class="fas fa-user"></i>
                            <div class="info">
                                <div class="head">Name</div>
                                <div class="sub-title">Prince Bari</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-map-marker-alt"></i>
                            <div class="info">
                                <div class="head">Address</div>
                                <div class="sub-title">Gurugram, Haryana</div>
                            </div>
                        </div>
                        <div class="row">
                            <i class="fas fa-envelope"></i>
                            <div class="info">
                                <div class="head">Email</div>
                               <div class="sub-title">princebari208@gmail.com</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div <%--class="container"--%>>
                     <table class="auto-style1" >
        <tr>
            <td class="auto-style5" style="font-size: 25px"><strong>Name&nbsp; </strong><asp:TextBox ID="TextBox1" runat="server" CausesValidation="True" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="#CA0220"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="font-size: 25px"><strong>Phone </strong><asp:TextBox ID="TextBox2" runat="server" CausesValidation="True" TextMode="Phone" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="#CB011B"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="font-size: 25px"><strong>Email&nbsp; </strong><asp:TextBox ID="TextBox3" runat="server" CausesValidation="True" TextMode="Email" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="#CC001A"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Submit" Height="39px" Width="98px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
         
                </div>
            </div>
        </div>
    </section>
   
    <!-- footer section start -->
    <footer>
        <span>Created By <a href="#">Prince</a> | <span class="far fa-copyright"></span> 2025 All rights reserved.</span>
    </footer>
    </form>
</body>

</html>
