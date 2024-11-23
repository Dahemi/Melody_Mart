<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Melody Mart - Artists</title>
    <link rel="stylesheet" href="CSS/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    
    <style>
   .artist-section, .album-section, .song-section {
    display: none;
}

.artist, .album {
    cursor: pointer;
}

.albums, .songs {
    margin-top: 20px;
}

.artist img {
    border-radius: 50%;
    width: 300px;
    height: 300px;
}

.album img {
    border-radius: 0; /* Remove the circular frame */
    width: 300px;
    height: 300px;
    transform: rotateY(15deg); /* Adds a slight 3D tilt */
    perspective: 1000px; /* Creates depth for the 3D effect */
    box-shadow: 5px 5px 15px rgba(0,0,0,0.3); /* Optional: Add a shadow for more depth */
    transition: transform 0.3s ease-in-out;
}

.album img:hover {
    transform: rotateY(0deg) scale(1.05); /* Smooth effect when hovered */
}

.footer {
    margin-top: 50px;
    text-align: center;
}

.artist-container, .album-container, .song-container {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    gap: 30px;
}

/* Play Button Styling */
.play-button {
    background-color: #f39c12; /* Sets background color */
    border: none; /* Removes border */
    font-size: 18px; /* Adjusts the size of the button content */
    cursor: pointer; /* Changes the cursor to a pointer when hovering */
    margin-right: 10px; /* Adds space between the button and the song name */
    border-radius: 50%; /* Makes the button round */
    padding: 10px; /* Creates space around the icon for the circular shape */
    display: flex; /* Ensures the icon is centered inside the button */
    align-items: center; /* Vertically centers the icon */
    justify-content: center; /* Horizontally centers the icon */
}

.fas.fa-play {
    color: #fff; /* Sets the color of the play icon */
}
.fas.fa-play {
    margin-right: 10px; /* Adds space between the icon and the text */
    cursor: pointer; /* Ensures the cursor changes when hovering over the icon */
    font-size: 18px; /* Sets the size of the play icon */
}

li {
    display: flex; /* Aligns the button and song name horizontally */
    align-items: center; /* Vertically centers the button and song name */
    margin-bottom: 10px; /* Adds space between each song */
}
</style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container">
            <div class="header-content">
                <a href="/booking/images/logo2.png" class="logo">
                    <img src="/booking/images/logo2.png" alt="Melody Mart Logo" />
                    Melody Mart
                </a>
                <nav>
                    <ul>
                        <li><a href="homePage.jsp">Home</a></li>
                        <li><a href="productHome.jsp">Products</a></li>
                        <li><a href="lessonPage.jsp">Lessons</a></li>
                        <li><a href="/booking/BookingFront.jsp">Audio Rooms</a></li>
                        <li><a href="artistHome.jsp">Artists</a></li>
                    </ul>
                </nav>
                <a href="loginLandingPage.jsp" class="login-button">
                    <i class="fas fa-user"></i> Login
                </a>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <main>
        <section id="artists">
            <div class="container">
                <h1>Artists</h1>
                <div class="artist-container">
                    <!-- Taylor Swift -->
                    <div class="artist" onclick="showAlbums('taylor')">
                        <img src="https://hips.hearstapps.com/hmg-prod/images/taylor-swift-performs-onstage-during-taylor-swift-the-news-photo-1727383851.jpg?crop=0.66637xw:1xh;center,top&resize=640:*" alt="Taylor Swift">
                        <h3>Taylor Swift</h3>
                    </div>

                    <!-- Blackpink -->
                    <div class="artist" onclick="showAlbums('blackpink')">
                        <img src="https://i.scdn.co/image/ab6761610000e5ebc9690bc711d04b3d4fd4b87c">
                        <h3>Blackpink</h3>
                    </div>

                    <!-- Zayn Malik -->
                    <div class="artist" onclick="showAlbums('zayn')">
                        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCgB8Bp3MjKZBUuMl3eYzU9Zz2vUNqi8n0IQ&s" alt="Zayn Malik">
                        <h3>Zayn Malik</h3>
                    </div>
                </div>
</div>
                <!-- Albums Section -->
                <div id="taylor-albums" class="album-section">
                    <h2>Taylor Swift Albums</h2>
                    <div class="album-container">
                        <div class="album" onclick="showSongs('taylor', 'album1')">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq-Z8d5yd5JDF2Dx3sJ7DQusvwjjDv7xTHoA&s" alt="Taylor Swift Album 1">
                            <p>TaylorSwift2006</p>
                        </div>
                        <div class="album" onclick="showSongs('taylor', 'album2')">
                            <img src="https://ew.com/thmb/IoGKp4nVcNvkhaP5gMWLR9CLlBo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/lover-5394ff4ef58f48aba67d6e4066203fc7.jpg" alt="Taylor Swift Album 2">
                            <p>Lover</p>
                        </div>
                    </div>
                </div>

                <div id="blackpink-albums" class="album-section">
                    <h2>Blackpink Albums</h2>
                    <div class="album-container">
                        <div class="album" onclick="showSongs('blackpink', 'album1')">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU3xlUam38rEgw_RV1tg87eVdJhDSISrBRMA&s" alt="Blackpink Album 1">
                            <p>Born pink</p>
                        </div>
                        <div class="album" onclick="showSongs('blackpink', 'album2')">
                            <img src="https://sokollab.co.uk/cdn/shop/products/BLACKPINK_SQUARE_UP_MINI_HOUSE_1.jpg?v=1553415103" alt="Blackpink Album 2">
                            <p>Square Up</p>
                        </div>
                    </div>
                </div>

                <div id="zayn-albums" class="album-section">
                    <h2>Zayn Malik Albums</h2>
                    <div class="album-container">
                        <div class="album" onclick="showSongs('zayn', 'album1')">
                            <img src="https://upload.wikimedia.org/wikipedia/en/0/0f/Room_Under_the_Stairs.jpg" alt="Zayn Malik Album 1">
                            <p>Room Under the stairs</p>
                        </div>
                        <div class="album" onclick="showSongs('zayn', 'album2')">
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU8_Y9lCWXeDgwSy049qTxaUr43Ug300oypQ&sl" alt="Zayn Malik Album 2">
                            <p>Icarus Falls</p>
                        </div>
                    </div>
                </div>

                <!-- Songs Section -->
               <div id="taylor-album1-songs" class="song-section">
        <h3>Taylor Swift - TaylorSwift2006</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Cold as you</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> The outside</li>
        </ul>
    </div>

    <div id="taylor-album2-songs" class="song-section">
        <h3>Taylor Swift - Lover</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Lover</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Cruel summer</li>
        </ul>
    </div>

    <div id="blackpink-album1-songs" class="song-section">
        <h3>Blackpink - Born pink</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Shut down</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Pink venom</li>
        </ul>
    </div>

    <div id="blackpink-album2-songs" class="song-section">
        <h3>Blackpink - Album 2 Songs</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Lovesick girls</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Forever young</li>
        </ul>
    </div>

    <div id="zayn-album1-songs" class="song-section">
        <h3>Zayn Malik - Room Under the stairs</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Song 1</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Song 2</li>
        </ul>
    </div>

    <div id="zayn-album2-songs" class="song-section">
        <h3>Zayn Malik - Icarus Falls</h3>
        <ul>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Song 1</li>
            <li><button class="play-button"><i class="fas fa-play"></i></button> Song 2</li>
        </ul>
    </div>
        </section>
    </main>

    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="footer-links">
                <a href="AboutUs.jsp">About Us</a>
                <a href="ContactUs.jsp">Contact</a>
                <a href="Terms&C.jsp">Terms of Service</a>
                <a href="privacyPolicy.jsp">Privacy Policy</a>
            </div>
            <div class="social-icons">
                <a href="#" aria-label="Facebook"><i class="fab fa-facebook"></i></a>
                <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
            </div>
            <p>&copy; 2024 Melody Mart. All rights reserved.</p>
        </div>
    </footer>

    <script>
        function showAlbums(artist) {
            // Hide all album sections
            document.querySelectorAll('.album-section').forEach(section => section.style.display = 'none');
            // Hide all song sections
            document.querySelectorAll('.song-section').forEach(section => section.style.display = 'none');
            // Show selected artist's albums
            document.getElementById(artist + '-albums').style.display = 'block';
        }

        function showSongs(artist, album) {
            // Hide all song sections
            document.querySelectorAll('.song-section').forEach(section => section.style.display = 'none');
            // Show selected album's songs
            document.getElementById(artist + '-' + album + '-songs').style.display = 'block';
        }
    </script>
</body>
</html>