<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Music Store</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #1a0e2e;
            --secondary-color: #2d1a4a;
            --accent-color: #9b4dca;
            --text-color: #ffffff;
            --background-color: #1a0e2e;
        }

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            background-color: var(--secondary-color);
            padding: 20px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: #ffffff;
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .logo img {
            height: 50px;
            margin-right: 15px;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        nav ul li {
            margin: 0 15px;
        }

        nav ul li a {
            color: #ffffff;
            text-decoration: none;
            font-weight: 600;
            font-size: 20px;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: var(--accent-color);
        }

        .login-button {
            background-color: var(--accent-color);
            color: #ffffff;
            padding: 10px 20px;
            border-radius: 25px;
            text-decoration: none;
            font-weight: 600;
            font-size: 16px;
            transition: background-color 0.3s ease;
            display: flex;
            align-items: center;
        }

        .login-button:hover {
            background-color: #7b3aa0;
        }

        .hero {
            background: linear-gradient(135deg, #1a0e2e, #2d1a4a);
            padding: 120px 0;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .hero h1 {
            font-size: 64px;
            margin-bottom: 20px;
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        .hero h2 {
            font-size: 24px;
            font-weight: 300;
            margin-bottom: 40px;
            font-style: italic;
        }

        .catalog {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        .product-card {
            background-color: var(--secondary-color);
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .product-card h3 {
            font-size: 20px;
            margin: 10px 0;
            color: var(--accent-color);
        }

        .product-card p {
            font-size: 16px;
            color: var(--text-color);
        }

        .product-card span {
            font-size: 18px;
            font-weight: bold;
            color: var(--accent-color);
        }

        .product-card:hover {
            transform: scale(1.05);
        }
       
       .add-to-cart-button {
            background-color: var(--accent-color);
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
            margin-top: 10px;
        }

        .add-to-cart-button:hover {
            background-color: #7b3aa0;
        }
        footer {
            background-color: var(--secondary-color);
            padding: 60px 0;
            color: #ffffff;
        }

        .footer-content {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .footer-links {
            display: flex;
            flex-direction: column;
        }

        .footer-links a {
            color: #ffffff;
            text-decoration: none;
            margin-bottom: 10px;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: var(--accent-color);
        }

        .social-icons {
            display: flex;
        }

        .social-icons a {
            color: #ffffff;
            font-size: 24px;
            margin: 0 10px;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .social-icons a:hover {
            color: var(--accent-color);
        }

        .copyright {
            text-align: center;
            margin-top: 40px;
            font-size: 14px;
        }

        .search-container {
            display: flex;
            align-items: center;
            margin-left: 20px;
        }

        .search-container input {
            padding: 8px;
            border: none;
            border-radius: 4px 0 0 4px;
        }

        .search-container button {
            padding: 8px 12px;
            background-color: var(--accent-color);
            color: white;
            border: none;
            border-radius: 0 4px 4px 0;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-content">
            <a href="/booking/images/logo2.png" class="logo">
                    <img src="/booking/images/logo2.png" alt="Melody Mart Logo" />
                    Melody Mart
            </a>
            
            <div class="search-container">
                    <input type="text" id="search-input" placeholder="Search for products...">
                    <button onclick="performSearch()">Search</button>
             </div>
             
            <nav>
                <ul>
                    <li><a href="homePage.jsp">Home</a></li>
                    <li><a href="productHome.jsp">Products</a></li>
                    <li><a href="lessonPage.jsp">Lessons</a></li>
                    <li><a href="/booking/BookingFront.jsp">Audio Rooms</a></li>
                    <li><a href="/Artist/home.jsp">Artists</a></li>
                </ul>
            </nav>
            
            <a href="loginLandingPage.jsp" class="login-button">Login</a>
        </div>
    </header>
    

    <section class="hero">
        <h1>Welcome to the Music Store</h1>
        <h2>Your one-stop shop for musical instruments</h2>
    </section>

    <section class="catalog">
        <!-- Repeat this block for 20 products -->
        <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy0TTqF2dbaMIbDHcwZHplAG-d3PfKRJE3Bw&s" alt="Instrument 1">
            <h3>Guitar</h3>
            <p>Beautiful acoustic guitar with a rich sound.</p>
            <span>$299.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5d9LhJ41HMZIGQnXvFjUWRvPem5NkkvXrGg&s" alt="Instrument 2">
            <h3>Piano</h3>
            <p>High-quality digital piano with weighted keys.</p>
            <span>$499.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt2v0uBqMA-6El2HhpjZAWMmyg5-8bU2WacQ&s" alt="Instrument 3">
            <h3>Violin</h3>
            <p>Professional violin with a warm tone.</p>
            <span>$399.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        
        <div class="product-card">
            <img src="https://media.guitarcenter.com/is/image/MMGS7/L84561000001001-00-600x600.jpg" alt="Instrument 5">
            <h3>Flute</h3>
            <p>Silver flute with a clear and bright sound.</p>
            <span>$199.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://www.marshallmusic.co.za/wp-content/uploads/2021/01/Hcbc59dc53df044018fb8b2b304dbdcc0Q.jpg_960x960.webp" alt="Instrument 6">
            <h3>Saxophone</h3>
            <p>Jazz saxophone with a smooth finish.</p>
            <span>$549.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://haydockmusic.co.uk/media/catalog/product/cache/f13e847bf306f1f03bb4d85aff3c19a8/p/r/prima-200-cello.jpg" alt="Instrument 6">
            <h3>Cello</h3>
            <p>A larger string instrument with a deep, rich sound, played while seated.</p>
            <span>$549.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/51vYgaSBKjL.jpg" alt="Instrument 6">
            <h3>Trumpet</h3>
            <p>A brass instrument with a bright and powerful tone, typically used in jazz and classical music.</p>
            <span>$549.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://kesslerandsons.com/wp-content/uploads/yamaha-clarinet-ycl-200adii-clarinet2.jpg" alt="Instrument 6">
            <h3>Clarinet</h3>
            <p>A single-reed woodwind instrument with a rich, warm tone.</p>
            <span>$549.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        <div class="product-card">
            <img src="https://m.media-amazon.com/images/I/61XOyU7Q4TL.jpg" alt="Instrument 6">
            <h3>Harmonica</h3>
            <p>A small wind instrument played by drawing air through holes, creating melodies and chords</p>
            <span>$549.99</span>
            <button class="add-to-cart-button">Add to Cart</button>
        </div>
        
        <script>
        const queryString = window.location.search;
        const urlParams = new URLSearchParams(queryString);
        const searchQuery = urlParams.get('query');

        document.addEventListener('DOMContentLoaded', function() {
            if (searchQuery) {
                fetchProducts(searchQuery);
            }
        });

        function fetchProducts(query) {
            // This function would call the back-end and fetch product details based on the search query
            const resultsDiv = document.getElementById('search-results');
            // Use AJAX or Fetch API to fetch the products based on the query
            // Mockup results for now
            const mockResults = [
                { name: 'Guitar ', price: '$299.99' },
               
            ];

            let resultHTML = '<ul>';
            mockResults.forEach(product => {
                resultHTML += <li><strong>${product.name}</strong> - ${product.price}</li>;
            });
            resultHTML += '</ul>';

            resultsDiv.innerHTML = resultHTML;
        }
    </script>
        
        
    
       
</body>
</html>