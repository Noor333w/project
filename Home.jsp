<%-- 
    Document   : Home
    Created on : Jan 3, 2025, 7:12:15 AM
    Author     : mahno
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pinterest UI</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f8f8f8;
    }

    .navbar {
      display: flex;
      align-items: center;
      justify-content: space-between;
      background-color: white;
      padding: 10px 20px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .logo {
      font-size: 24px;
      color: #5e3a73;
      margin: 0;
    }

    .search-bar {
      flex: 1;
      margin: 0 20px;
      padding: 8px 15px;
      font-size: 1rem;
      border: 1px solid #ddd;
      border-radius: 20px;
    }

    .container {
      display: grid;
      grid-template-columns: repeat(5, 1fr);
      gap: 16px;
      padding: 20px;
      grid-auto-rows: minmax(200px, auto);
    }

    .box {
      display: inline-block;
      position: relative;
      overflow: hidden;
      break-inside: avoid; /* Prevent breaks inside items for masonry effect */
        margin-bottom: 20px;
  display: flex;
  flex-direction: column;

    }

    .box img {
      width: 100%;
      height: auto;
      object-fit: cover;
      border-top-left-radius: 8px;
  border-top-right-radius: 8px;
    }

    .card-info {
      padding: 10px;
      text-align: center;
    }

    .author {
       margin-top: 5px;
      font-size: 16px;
      font-weight: bold;
      justify-content: center; 
    }

    .description {
      font-size: 12px;
      color: #ddd;
      margin: 5px 0;
    }

    .actions {
      display: flex;
      justify-content: center; /* Center the buttons horizontally */
      gap: 10px;
      margin-top: 5px;
    }

    .btn {
      font-size: 24px;
      cursor: pointer;
      border: none;
      background: none;
      color: #333;
    }

    .like-btn {
      font-family: Arial, sans-serif; /* Ensure a compatible font */
      font-size: 28px;
      color: black; /* Blank heart */
      background: none;
      border: none;
      cursor: pointer;
      outline: none;
    }

    .like-btn.liked {
      color: red;
    }

    .comment-btn {
      font-size: 20px;
      color: #555;
    }

    .comment-btn:hover {
      color: #000; /* Hover effect for comment button */
    }
    .popup {
      display: none;
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 300px;
      padding: 20px;
      background-color: white;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
      z-index: 2000;
      border-radius: 8px;
    }

    .popup textarea {
      width: 100%;
      height: 80px;
      margin-bottom: 10px;
      font-size: 16px;
      padding: 8px;
      border: 1px solid #ddd;
      border-radius: 4px;
    }

    .popup button {
      padding: 8px 15px;
      font-size: 16px;
      cursor: pointer;
      border: none;
      border-radius: 4px;
      background-color: #5e3a73;
      color: white;
    }

    .popup button.close {
      background-color: #ddd;
      color: black;
      margin-left: 10px;
    }

    @media (max-width: 760px) {
      .container {
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
      }
    }

    @media (max-width: 480px) {
      .container {
        grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
      }
    }
  </style>
</head>
<body>
<header class="navbar" style="display: flex; align-items: center; justify-content: space-between; padding: 10px 20px; background-color: #f5f5f5; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
    <!-- Logo -->
    <div class="logo" style="font-weight: bold; font-size: 24px;">PinAura</div>

    <!-- Search Bar -->
  

    <!-- Navigation Links -->
    <nav class="nav-links" style="display: flex; gap: 15px;">
        <a href="AboutUs.jsp" style="text-decoration: none; color: #462754; font-size: 14px;">About Us</a>
        <a href="ContactUs.jsp" style="text-decoration: none; color: #462754; font-size: 14px;">Contact Us</a>
        <a href="PrivacyPolicy.jsp" style="text-decoration: none; color: #462754; font-size: 14px;">Privacy Policy</a>
        <a href="dashboard.jsp" style="text-decoration: none; color: #462754; font-size: 14px;">Search</a>
        <a href="pin.jsp" style="text-decoration: none; color: #462754; font-size: 14px;">Create</a>
    </nav>
</header>


  <main class="container">
    <!-- Example Cards -->
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=6bb35329091703c9f2579d863afad43dc17f2be7-5116917-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
      <button class="btn comment-btn" onclick="redirectToCommentSection('pin-1')">&#x1F4AC;</button>
    </div>
        </div>
      </div>
    </div>

    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=2a00000179f26a24ab3d1dfde518e06ec56b-4322170-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: Jane Doe</p>
        <p class="description">Perfect for casual outings and brunches.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-2')">&#x1F4AC;</button>
        </div>
      </div>
    </div>

    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=e18535444d1dfa2bb3efe910e3d32d60edc39dd1-8497639-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Smith</p>
        <p class="description">A minimalist look with a modern twist.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-3')">&#x1F4AC;</button>
        </div>
      </div>
    </div>

    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=84b1ba0dfd6117b45f99ae6c71b32e442728f5d9-10919913-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: Alice Brown</p>
        <p class="description">Dress for success with this outfit.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-4')">&#x1F4AC;</button>
        </div>
      </div>
    </div>

    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=eff037ea9baf952de026adbe29885eef1a7ed2ae-4227431-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Smith</p>
        <p class="description">A minimalist look with a modern twist.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-3')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
   <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9e4d7d0e7c6fb0b915759190a6d1fc0e87381060-9702242-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=d4a639407202c0e35e47356fa3816ced444e0509-8356639-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Smith</p>
        <p class="description">A minimalist look with a modern twist.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-3')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9e4d7d0e7c6fb0b915759190a6d1fc0e87381060-9702242-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=500a268985c0d157529fb775530db67bab0f31d3-7458047-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=07a7e98900e8da340a65197460b2e19eb118111b-4835259-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=cb763bb2da51a232b608243a6a80f104a48c4d7b-5434353-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=42391ad0da29356e7901bb157e7c94b216bab47a-9235087-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=251ea8162fc3d99c2c4c53f5720be029a4b1778b-10703429-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9a1f95df0666373306ccd319a91b481b41fdbc68-5338379-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=79f25724403333480e88bb6e0a4a3986aeed34cb-7025550-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b00797f4583d794073f78c36e1f4f39fc10ab3ac-6018989-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=f0e29786ce598803337b558771874bd6e2e3ba10-12521952-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=1d155c8fa771c524e81734af694b03a6eddad4c5-8567399-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=00f5e1a7d9cbcf04967ddf36fec8606f51ebe118-4458035-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=655be47810bf1046c1bcdec3cb19994424147cdf-11936956-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b09813b5d123e5811642d0b5aa32be920ff7b644-5127171-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=d4ecfaf0bf9d6e7ec1e63c6e3946d1c470cb015b-9985849-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=1f9e31e44e3064d461cfe138b16e8f8b9e2752a8-7756218-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=fb1209cf674aea165032cf0b2ada299a-5669151-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=d311cca396027903ff3392efd69d3a0bc6ed50ec3117c98b-5329060-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=8109c914595a1103c67db2cb355af6da-4453150-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=f35d011da14ab93df350e4aedfb74524baefdb26-10341337-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=0245cf3261350c51b8d5494edb76e44f74da531a-4936102-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b63e8175ebf3927ff5e97196b1eb992fa73085af-8229244-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=6aa37fa897fc79f05648ad37be1a73ca9724f654-5238257-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=408055ad8af390447a7357d9fe13155b52476007-5282425-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=ae634a26dd84dd1d7aaac7bdbc1f3c22-5277428-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=1c92cd77af23490fd04c9f7fa8e9dc14a794663a69cc3c74-12757031-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=93a21546870326124a9c1bbf1bd9ea17ba7d351e-5232881-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=a56a95f2c907478fd09bedfda30fa2a2a2994f81-7056086-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=16e7cb3faa0fcfddabd3b2deb09988527d862ff5-8981832-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9ef46eb8478298da84477155258dbd2576d98331-10752752-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=953670d28b0b6a27ad67bb723289ea63f5ae92af-7998332-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=1c05611c06f8edb5619f1a63225e1c936e37d7f5-7755899-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=4bd4d6bc8cc6a3aba4549ca92658d7d2dafb53e7-5878385-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=55f84943a886d7651245c5b2141fd94a17ee1e6c-5617347-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=2a0000017a145d7d58a5c31b2c1b355a2378-4884516-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b18d2556935b8e6d838f42f150ed6e63c95e7006-7950464-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=4987c63a3f4905ccd1dc230764d8f244f3920279-7015779-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=042e62c6273944919919ea9ec2e775683bd8496a-5243656-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=caf005a2443bfac5cc727ffb1f83b86583c4a907-9837727-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=ac3959fed90e53d9522995d4e9343eaaef7a6aa2-5879784-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=38e4a7500b85ae5d0ecc8f48c1128512f5511828-7942262-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=bd239cef03464bf04041c703c591e793d996ba8b-10209290-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=c3ee21f3ac751de8cd8873ae61f9e18b01680f6c-4826372-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9510cb7a6af6d957a273d0ff1f626ec84e45d2fa-9066083-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=f37ae4ebc70a11541e2d8bd9839f4903e2917fa5-4577184-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=cb1af88763729364ea5c9d38ce0f5e61cdd17023-5086868-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=ac6eea4e881804cbc3896baa4f0aa066cb944b72-8000127-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=2a0000017a0956e56b76b98d7a0ee5f58c63-4895906-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=bfaabab4df9382576c8df3a965c358139f0b7722-8567975-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=c3c64fd61a20db1142775c2294e0be89635fa4be-9053088-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9b6d8a3c5b13edd3b0dc3ab13f55e61accb8714d-10093903-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=f70defb4f267eb931dc05cdf728538e08dada039-5234911-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b6f28d68622fe885433a9895bafc4eb7dba046fb-4010468-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=3a13b64581196beef269e4375ea6ae759783c59b-4607549-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=001b6f62a0831ad1b65063148a5ede0884e66914-8754774-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=927a2b7ef8a8276f1582237f774a41b5491b9a3f-10467945-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=69455fabed009d4682199a62177d86ad6944bd00-7682919-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=d041bac12cd5579b43182f1f8065dd2e-4033338-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=393696c94ccebc21ede764d986a7e88024584821-7998362-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=972bd97cf2da0e5b06887b84fd9d387662d3cddc-10385090-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=1d1afa188e95ec2fc5f16f554c5d5827292c2722-4901319-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=39ac79b264b7a791dd6da5d68eb08add4cc9bbd038f7135d-10701561-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=9d8e5346d9391a50fac74762a77f943e577df138-3589653-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=522d74a0deddeac012966bcd7ae88efbcca6e41e-9842925-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
  <img src="https://avatars.mds.yandex.net/i?id=4ffca021a472c7e43c0d9106ed8912695d027be3-11271031-images-thumbs&n=13" alt="Pin Image">
  <div class="card-info">
    <p class="author">Author: John Doe</p>
    <p class="description">A stylish new outfit to brighten your day.</p>
    <div class="actions">
      <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
      <button class="btn comment-btn" onclick="redirectToCommentSection('pin-1')">&#x1F4AC;</button>
    </div>
  </div>
</div>

    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=b07343aec8da884da7eca064a9496db399d52923-10022975-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=96547281dd57c1239fab21b13cbb35e2-4599985-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
        </div>
      </div>
    </div>
    <div class="box">
      <img src="https://avatars.mds.yandex.net/i?id=27703a06934851cf330cbcf8818cc4aeee32fef9-7333143-images-thumbs&n=13" alt="Pin Image">
      <div class="card-info">
        <p class="author">Author: John Doe</p>
        <p class="description">A stylish new outfit to brighten your day.</p>
        <div class="actions">
          <button class="btn like-btn" onclick="toggleLike(this)">&#x2661;</button>
          <button class="btn comment-btn" onclick="openCommentPopup('pin-1')">&#x1F4AC;</button>
          
        </div>
        
      </div>
    </div>
    
    
  </main>
    

  <!-- Comment Popup -->
  <div id="comment-popup" class="popup" style="display: none;">
  <div class="popup-content">
    <span class="close-btn" onclick="closeCommentPopup()">&#10005;</span>
    <h3>Comments</h3>
    <div id="comments-list"></div>
    <textarea id="new-comment" placeholder="Write your comment..."></textarea>
    <button action ="comments.jsp" class="btn" onclick="submitComment()">Submit</button>
  </div>
</div>

  <script>
    let currentPinId = null;

  function openCommentPopup(pinId) {
    currentPinId = pinId;
    document.getElementById('comment-popup').style.display = 'block';

    // Fetch and display existing comments (mockup)
    const comments = JSON.parse(localStorage.getItem(pinId)) || [];
    const commentsList = document.getElementById('comments-list');
    commentsList.innerHTML = comments.map(comment => `<p><strong>${comment.username}:</strong> ${comment.text}</p>`).join('');
  }

  function closeCommentPopup() {
    document.getElementById('comment-popup').style.display = 'none';
    document.getElementById('new-comment').value = '';
  }

  function submitComment() {
    const commentText = document.getElementById('new-comment').value.trim();
    if (!commentText) return;

    const username = 'CurrentUser'; // Replace with the logged-in username.
    const newComment = { username, text: commentText };

    // Store in localStorage (replace this with your database interaction).
    const comments = JSON.parse(localStorage.getItem(currentPinId)) || [];
    comments.push(newComment);
    localStorage.setItem(currentPinId, JSON.stringify(comments));

    // Refresh comments list.
    openCommentPopup(currentPinId);
    document.getElementById('new-comment').value = '';
  }
  function redirectToCommentSection(pinId) {
    // Redirect to the comment section for the specific pin
    window.location.href = "comments.jsp?pin_id=" + pinId;
}
function toggleLike(button) {
  button.classList.toggle('liked');
  button.innerHTML = button.classList.contains('liked') ? '&#x2764;' : '&#x2661;';
}


  </script>
</body>
</html>
