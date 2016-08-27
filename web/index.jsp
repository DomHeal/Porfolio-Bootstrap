<%--
  User: Dominic
  Date: 28-Jun-16
  Time: 9:34 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<HTML>
<head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="js/v1/animation.js" type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
  <link href='css/github.css' rel='stylesheet' type='text/css'>
  <title>Dominic Heal - Software Engineer</title>
  <link rel="stylesheet" href="css/v1/stylesheet.css">
  <link rel="icon" href="favicon.ico" type="image/x-icon"/>
</head>
<body>
<div class="page-wrapper">
  <div class="profile-image">
    <img src="images/me.png">
  </div>
  <div class="title">Dominic Heal</div>
  <div class="subtitle"></div>
  <div id="main-menu" class="menu-wrapper">
    <ul>
      <li><a class="item-red" href="#">HOME</a></li>
      <!-- <li><a class="item-red" href="#">CV</a></li> -->
      <li><a id="main-menulink" class="item-red" href="#">SKILLS</a></li>
      <li><a id="projectlink" class="item-red"href="#">PORTFOLIO</a></li>
      <li><a id="contactlink" class="item-red" href="#">CONTACT</a></li>
    </ul>
  </div>
  <div class="content">
    <div class="content-header"><div class="content-title">Swansea University: Computer Science: Bachelor of Science Degree, 2:1.</div><div class="content-date"><a>2012-2015</a></div></div>
    <ul>
      <li>CS-306 - Writing Mobile Apps</li>
      <li>CS-358 - High-Performance Computing in C/C++</li>
      <li>CS-377 - Data Visualisation</li>
      <li>CS-338 - Web Service Applications</li>
      <li>CS-348 - Web Application Development</li>
      <li>CS-371 - Design Patterns and Generic Programming</li>
      <li>CS-377 - Computer Vision and Pattern Recognition</li>
      <li>CS-349 - Mobile Interaction Design</li>
      <li>Project: Forks in the Stream: Microblogging Content Management (Java & Twitter REST API integration)</li>
    </ul>
  </div>
  <div id="project" class="menu-wrapper">
    <ul class="menu-items">
      <li><a class="item-black portf-item active">ALL</a></li>
      <li><a class="item-red portf-item">JAVA</a></li>
      <li><a class="item-blue portf-item">C++ / C#</a></li>
      <li><a class="item-green portf-item">MOBILE</a></li>
      <li><a class="item-purple portf-item">WEB</a></li>
      <li><a class="item-orange portf-item">MISC</a></li>
    </ul>
  </div>
  <div class="content">
    <div class="java">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> MyTweetHub
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/MyTweetHub">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a id="forkvalue" class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width="400" height="262" src="images/MyTweetHub.png" href="https://github.com/DomHeal/MyTweetHub"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        This application is a part of a third year project which consisted of integration of the Twitter REST API using Twitter4j Library. Features consisted of a graphical user interface of OAuth 2.0 with basic Twitter functionality. Using the JMapViewer library, a map visualisation can be used to visualise Tweets in a specific location with an algorithm for displaying the relationships between each response from a Tweet source ID.
      </p>

      <a class="content-label">Tags:</a> <a class="tags-content">Java</a> <a class="tags-content">Twitter</a> <a class="tags-content">Rest</a>
    </div>
    <hr>
    <div class="mobile">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> Android Memo App
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/Android-Memo-Application">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width="400" height="262" src="images/Android-Memo-Application.png" href="https://github.com/DomHeal/Android-Memo-Application"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        The application allowed users to insert, update and remove tasks from a SQLite database. Additional features such as creating an alarm for urgent tasks could be optionally set using broadcast receivers.
      </p>

      <a class="content-label">Tags:</a> <a class="tags-content">Java</a> <a class="tags-content">Twitter</a> <a class="tags-content">Rest</a>
    </div>
    <hr>
    <div class="java">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> JavaFX-SocketChat
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/JavaFX-Chat">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width="400" height="262" src="images/JavaFX-Chat.png" href="https://github.com/DomHeal/JavaFX-Chat"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        A small application which using JavaFX for a GUI chat application.
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">Java</a> <a class="tags-content">Sockets</a> <a class="tags-content">JavaFX</a>
    </div>
    <hr>
    <div class="java">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> SOAP Chat Room
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/JInsta-SOAP-Messenger">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width="400" height="262" src="images/JInsta-SOAP-Messenger.png" href="https://github.com/DomHeal/JInsta-SOAP-Messenger"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        The application implemented SOAP features with a graphical user interface which users can choose a username and connect to the server. The applications integrated features such as global announcements and private messaging.
        Jinsta (Version 2)
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">Java</a> <a class="tags-content">Webservices</a> <a class="tags-content">WSDL</a>
    </div>
    <hr>
    <div class="web c">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> Interactive Rock, Paper, Scissors, Lizard and Spock
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/Interactive-CSharp-Rock-Paper-Scissors">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width="400" height="262" src="images/Interactive-CSharp-Rock-Paper-Scissors.png" href="https://github.com/DomHeal/Interactive-CSharp-Rock-Paper-Scissors"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        A C# and ASP.NET implementation of a universal game, Rock, Paper, Scissors, Lizard and Spock. The user requirements of the application consisted of a Human vs. Computer logic. The implementation included of each winning/losing/drawing strategies. Game scores are tracked via SQL database for persistence.
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">C#</a> <a class="tags-content">ASP.NET</a> <a class="tags-content">HTML</a>
    </div>
    <hr>
    <div class="C">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> Blackjack Game
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/Blackjack" >View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width"400" height="262" src="images/bj.png" href="https://github.com/DomHeal/Blackjack"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        An implementation of the Blackjack using a graphical user interface provide by cross-platform library QT. Features include, Human vs. Computer logic with detailed statistics with winning/losing/drawing strategies.
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">C++</a> <a class="tags-content">ASP.NET</a> <a class="tags-content">HTML</a>
    </div>
    <hr>
    <div class="misc">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> Prolog / Haskel
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/Prolog-Haskell">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width"400" height="262" src="images/haskell.png" href="https://github.com/DomHeal/Prolog-Haskell"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        Small programs which met the requirements of the assignments at Swansea University
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">Haskell</a> <a class="tags-content">Prolog</a> <a class="tags-content">Functional Programming</a>
    </div>
    <hr>
    <div class="misc">
      <div class="content-header">
        <div class="content-title">
          <a class="content-label">Project Name:</a> Brainf**k
        </div>
        <div class="content-date"><a href="https://github.com/DomHeal/brainf-k">View on GitHub</a><img src="images/star.png" width="18" height="18"/><a class="gitimg">5 Stars</a> <img src="images/fork.png" width="18" height="18"/><a class="gitimg">10 Forks</a></div>
      </div>
      <div class="content-image">
        <img class="tweethub" width"400" height="262" src="images/misc.png" href="https://github.com/DomHeal/brainf-k"/>
      </div>
      <a class="content-label">Description:</a>
      <p>
        Welcome message to myself in the language Brainf**k. Brainf**k is an esoteric programming language noted for its extreme minimalism. It is a Turing tarpit, designed to challenge and amuse programmers, and was not made to be suitable for practical use. It was created in 1993 by Urban Muller.
      </p>
      <a class="content-label">Tags:</a> <a class="tags-content">Brainf**k</a> <a class="tags-content">Fun</a> <a class="tags-content">Brain Teaser</a>
    </div>
    <hr>
  </div>
  <div id="contact" class="contact-wrapper">
    <a class="title-contact">Contact Me</a>
    <form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
      <div class="row">
        <label for="name">Your name:</label><br />
        <input id="name" class="input" name="name" type="text" value="" size="30" /><br />
      </div>
      <div class="row">
        <label for="email">Your email:</label><br />
        <input id="email" class="input" name="email" type="text" value="" size="30" /><br />
      </div>
      <div class="row">
        <label for="message">Your message:</label><br />
        <textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
      </div>
      <input id="submit_button" type="submit" value="Send email" />
    </form>
  </div>
</div>
</body>
</HTML>
