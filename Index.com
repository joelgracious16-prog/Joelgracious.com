<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Joe stores Profile</title>
    <link rel="stylesheet" href="styles.css">
<style>
background-color:green;
font align:monarch;
</style>
  </head>
<body>
    <!-- Header & Authentication Links -->
    <header>
        <h1> Gracious joe Fashion Sector</h1>
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Fashion Store — Stylish Background</title> 

  <!-- Nice fonts for a fashion look (falls back to system fonts if blocked) -->
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;700&family=Montserrat:wght@300;600&display=swap" rel="stylesheet"> 

  <link rel="stylesheet" href="style.css" />
</head>
<body>
  <main class="hero">
    <div class="hero__overlay">
      <header class="brand">
        <div class="logo">FLAÏR</div>
        <nav class="nav">
          <a href="#">New</a>
          <a href="#">Women</a>
          <a href="#">Men</a>
          <a href="#">Sale</a>
        </nav>
      </header> 

      <section class="hero__content">
        <h1 class="hero__title">Elevate Your Style</h1>
        <p class="hero__subtitle">Curated pieces • Timeless silhouettes • Conscious materials</p>
        <div class="hero__actions">
          <a class="btn btn-primary" href="#">Shop Collection</a>
          <a class="btn btn-ghost" href="#">Explore Lookbook</a>
        </div>
      </section> 

      <footer class="credit">Free demo background — replace with your photography or keep this stylized design</footer>
    </div>
  </main>
    </header>
    
    <!-- Registration Form Modal -->
    <div id="signup-modal" class="modal">
        <form id="signup-form" class="modal-content">
            <span class="close" onclick="hideForm('signup')">&times;</span>
            <h2>Register for Membership</h2>
            <input type="text" placeholder="Username" required>
            <input type="email" placeholder="Email" required>
            <input type="password" placeholder="Password" required>
            <button type="submit">Register</button>
        </form>
    </div>
    <!-- Sign In Form Modal -->
    <div id="signin-modal" class="modal">
        <form id="signin-form" class="modal-content">
            <span class="close" onclick="hideForm('signin')">&times;</span>
            <h2>Sign In</h2>
            <input type="text" placeholder="Username" required>
            <input type="password" placeholder="Password" required>
            <button type="submit">Sign In</button>
        </form>
    </div>
    
    <main>
        <!-- Sector Links (using example URLs) -->
        <section class="sector-links">
            <h2>Links to Product Websites</h2>
            <ul>
                <li><a href="https://www.nike.com" target="_blank">Nike</a></li>
                <li><a href="https://www.zara.com" target="_blank">Zara</a></li>
                <li><a href="https://www.hm.com" target="_blank">H&M</a></li>
                <!-- Add more links -->
            </ul>
        </section>
        
        <!-- Videos Section -->
        <section class="videos">
            <h2>Clothes Marketing Videos</h2>
            <div class="video-list">
                <video width="320" controls poster="img/clothes1.jpg">
                    <source src="videos/clothes1.mp4" type="video/mp4">
                </video>
                <video width="320" controls poster="img/clothes2.jpg">
                    <source src="videos/clothes2.mp4" type="video/mp4">
                </video>
            </div>
        </section>
        
        <!-- Shorts, Shoes, Hats Sections -->
        <section class="products">
            <h2>Shorts</h2>
            <div class="product-gallery">
                <img src="img/shorts1.jpg" alt="Shorts 1">
                <img src="img/shorts2.jpg" alt="Shorts 2">
            </div>
        </section>
        <section class="products">
            <h2>Shoes</h2>
            <div class="product-gallery">
                <img src="img/shoes1.jpg" alt="Shoes 1">
                <img src="img/shoes2.jpg" alt="Shoes 2">
            </div>
        </section>
        <section class="products">
            <h2>Hats</h2>
            <div class="product-gallery">
                <img src="img/hat1.jpg" alt="Hat 1">
                <img src="img/hat2.jpg" alt="Hat 2">
            </div>
        </section> 

        <!-- Feedback Form -->
        <section class="feedback">
            <h2>Feedback</h2>
            <form id="feedback-form">
                <textarea placeholder="Share your thoughts..." required></textarea>
                <button type="submit">Send Feedback</button>
            </form>
            <div id="feedback-msg"></div>
        </section>
    </main>
    
    <script src="script.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Marketing & Location Finder</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body { font-family: Arial, sans-serif; margin:0; padding:0;}
        header, nav, section, footer { padding: 20px; }
        header { background: #0072ff; color: #fff; }
        nav { background: #eee; }
        nav a { margin-right: 15px; text-decoration: none; color: #0072ff;}
        .container { max-width: 1000px; margin: auto;}
        .map-container { width: 100%; height: 400px; margin-top: 20px;}
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Marketing & Location Finder</h1>
            <p>Your tool for smart marketing and easy location discovery!</p>
        </header>
        <nav>
            <a href="#marketing">Marketing</a>
            <a href="#location">Location Finder</a>
        </nav> 

        <section id="marketing">
            <h2>Marketing Features</h2>
            <ul>
                <li>Highlight your business with our marketing tools.</li>
                <li>Grow your audience using targeted campaigns.</li>
                <li>Analyze engagement and optimize outreach.</li>
            </ul>
        </section> 

        <section id="location">
            <h2>Find Locations Near You</h2>
            <p>Enter your location or let us suggest places for you.</p>
            <!-- Example: Google Maps Embed (for demonstration only) -->
            <div class="map-container">
                <iframe 
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.835434509701!2d144.9537353153105!3d-37.81627997975159!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0xf577a4418d781e35!2sMelbourne%20VIC%2C%20Uganda!5e0!3m2!1sen!2sus!4v1585715151288!5m2!1sen!2sus" 
                    width="100%" 
                    height="100%" 
                    frameborder="0" 
                    style="border:0;" 
                    allowfullscreen="" 
                    aria-hidden="false" 
                    tabindex="0">
                </iframe>
            </div>
        </section> 

        <footer>
            <p>&copy; 2025 Marketing & Location Finder</p>
        </footer>
    </div>
</body>
</html>
