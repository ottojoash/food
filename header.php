<nav class="navbar navbar-inverse navabar-fixed-top">
               <div class="container">
                   <div class="navbar-header">
                       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                       </button>
                       <a href="index.php" class="navbar-brand">Chamb Services</a>
                   </div>
                   
                   <div class="collapse navbar-collapse" id="myNavbar">
                       <ul class="nav navbar-nav navbar-right">
                           <?php
                           if(isset($_SESSION['email'])){
                           ?>
                            
                           <li><a class="home" href="index.php">Home</a></li>
            
                           <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Services</a></li>
                           <li><a href="settings.php"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
                           <li><a href="about.html"><span class="glyphicon glyphicon-about"></span>About</a></li>
                           <li><a href="form.php"><span classs="glyphicon glyphicon-contact"></span>Contact</a></li>
                           <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                           <?php
                           }else{
                            ?>
                            <li><a href="siginup.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                           <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                           <?php
                           }
                           ?>
                           
                       </ul>
                   </div>
               </div>
</nav>