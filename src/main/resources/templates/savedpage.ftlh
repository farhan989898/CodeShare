<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CodeShareBox - Code Snippet</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/highlight.js@11.2.0/styles/default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap" rel="stylesheet">
</head>
<style>
    /* Reset default margin and padding */
    * {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html,
body {
  height: 100%;
}

body {
  font-family: "Poppins", sans-serif;
  background: url('data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" width="400" height="400" viewBox="0 0 400 400"><path d="M0 10 L200 200 L400 10 Z" fill="%230c1b39"/><circle cx="60" cy="40" r="15" fill="%230c0f21"/><circle cx="120" cy="80" r="15" fill="%230c0f21"/><circle cx="180" cy="120" r="15" fill="%230c0f21"/><circle cx="240" cy="160" r="15" fill="%230c0f21"/><circle cx="300" cy="200" r="15" fill="%230c0f21"/><circle cx="360" cy="240" r="15" fill="%230c0f21"/><line x1="60" y1="40" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="120" y1="80" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="180" y1="120" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="240" y1="160" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="300" y1="200" x2="200" y2="200" stroke="%23666" stroke-width="2"/><line x1="360" y1="240" x2="200" y2="200" stroke="%23666" stroke-width="2"/></svg>')
    repeat;
  background-color: #1a1a1a;
  margin: 0;
  color: #fff; /* Set text color to white */
}

.header {
  background-color: #0c1b39;
  padding: 20px;
  text-align: left;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.logo {
  width: 40px;
  height: auto;
  margin-right: 10px;
}

.logo-text {
  font-size: 28px;
  font-weight: bold;
  color: #fff;
  text-decoration: none;
  transition: color 0.3s ease;
}

.logo-text:hover {
  color: #ff9900;
}

.navigation {
  display: flex;
  align-items: center;
}

.navigation a {
  color: #fff;
  text-decoration: none;
  margin: 0 20px;
  font-weight: bold;
  letter-spacing: 1px;
  transition: color 0.3s ease;
}

.navigation a:hover {
  color: #ff9900;
}
.custom-result {
  padding: 32px 32px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 1px;
}

.custom-title {
  font-family: "Quicksand", sans-serif;
  font-size: 32px;
  text-align: center;
  margin-bottom: 20px;
  opacity: 1;
  transform: translateY(0);
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
  animation: slideIn 0.5s forwards, fadeIn 0.5s forwards,
    highlightText 2s infinite alternate;
}

.custom-icon {
  width: 40px;
  height: 40px;
  vertical-align: middle;
  margin-right: 10px;
}

.highlight-text {
  color: #ff5722; /* Change to your desired text color */
  font-weight: bold; /* Make the text bold */
}

.button-container {
  margin-top: 20px;
}

.custom-button {
  background-color: #007bff;
  color: #fff;

  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
  border: 2px solid #007bff; /* Add border */
  border-radius: 15px;
}

.custom-button:hover {
  background-color: #0056b3;
}
.button-text {
  font-family: "Quicksand", sans-serif; /* Change to your desired font */
  font-size: 18px; /* Change to your desired font size */
}

/* Add animation for the highlighted text */
@keyframes highlightText {
  0% {
    color: #ff5722;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
  }
  100% {
    color: #00e676; /* Change to your desired text color */
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
  }
}
.x_panel {
  position: relative;
  color: #f0f0f0;

  background-color: #25282d;
  border-radius: 20px;
  box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
  animation: fadeInUp 1s ease-out;

  margin-top: 2.5rem;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  border-radius: 15px;
  max-width: 650px;
}

.highlight {
  color: #ff6347;
}

.seealso_header {
  font-size: 36px;
  margin-bottom: 1rem;
  font-weight: 600;
  color: #3498db;
  text-align: center;
}

.share-text {
  text-align: center;
  margin-top: 25px;
  margin-bottom: 20px;
  font-size: 26px;
  font-weight: bold;
  color: #ff9900;
}

.x_content {
  padding: 25px;
}

.seealso {
  list-style: none;
  padding: 0;
  display: flex;
  justify-content: space-between;
  flex-direction: column;
}

.seealso li {
  display: flex;
  align-items: center;
  font-size: 20px;
  transition: transform 0.3s ease-in-out;
  cursor: pointer;
  margin-bottom: 1.2rem;
}

.seealso li:hover {
  transform: translateY(-5px);
}

.icon {
  width: 50px;
  height: 50px;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #1e90ff;
  color: white;
  border-radius: 50%;
  margin-right: 18px;
  font-size: 28px;
}

.jssocials-share {
  display: inline-block;
  vertical-align: top;
  margin: 0.8em 0.8em 0.8em 0;
}

.center-container {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 85vh;
  border-radius: 12px;
  margin-top: 0.5rem;
}
.dynamic-text {
  color: #ff9900; /* Bright orange color */
  font-weight: 600;
  font-size: 16px;
  display: flex;
  align-items: center;
  padding-left: 0.8rem;
  opacity: 0.8;
  transition: opacity 0.3s ease-in-out;
  font-family: "Raleway", sans-serif; /* Use the Raleway font or another Google Font */
}

.dynamic-text:hover {
  opacity: 1;
}

.jssocials-share-twitter .jssocials-share-link {
  background: #00aced;
}

.jssocials-share-twitter .jssocials-share-link:hover {
  background: #0087ba;
}

.jssocials-share-facebook .jssocials-share-link {
  background: #3b5998;
}

.jssocials-share-facebook .jssocials-share-link:hover {
  background: #2d4373;
}

.jssocials-share-googleplus .jssocials-share-link {
  background: #dd4b39;
}

.jssocials-share-googleplus .jssocials-share-link:hover {
  background: #c23321;
}

.jssocials-share-linkedin .jssocials-share-link {
  background: #007bb6;
}

.jssocials-share-linkedin .jssocials-share-link:hover {
  background: #005983;
}

.jssocials-share-pinterest .jssocials-share-link {
  background: #cb2027;
}

.jssocials-share-pinterest .jssocials-share-link:hover {
  background: #9f191f;
}

.jssocials-share-email .jssocials-share-link {
  background: #3490f3;
}

.jssocials-share-email .jssocials-share-link:hover {
  background: #0e76e6;
}

.jssocials-share-stumbleupon .jssocials-share-link {
  background: #eb4823;
}

.jssocials-share-stumbleupon .jssocials-share-link:hover {
  background: #c93412;
}

.jssocials-share-whatsapp .jssocials-share-link {
  background: #29a628;
}

.jssocials-share-whatsapp .jssocials-share-link:hover {
  background: #1f7d1e;
}

.jssocials-share-telegram .jssocials-share-link {
  background: #2ca5e0;
}

.jssocials-share-telegram .jssocials-share-link:hover {
  background: #1c88bd;
}

.jssocials-share-line .jssocials-share-link {
  background: #25af00;
}

.jssocials-share-line .jssocials-share-link:hover {
  background: #1a7c00;
}

.jssocials-share-viber .jssocials-share-link {
  background: #7b519d;
}

.jssocials-share-viber .jssocials-share-link:hover {
  background: #61407b;
}

.jssocials-share-pocket .jssocials-share-link {
  background: #ef4056;
}

.jssocials-share-pocket .jssocials-share-link:hover {
  background: #e9132e;
}

.jssocials-share-messenger .jssocials-share-link {
  background: #0084ff;
}

.jssocials-share-messenger .jssocials-share-link:hover {
  background: #006acc;
}

.jssocials-share-vkontakte .jssocials-share-link {
  background: #45668e;
}

.jssocials-share-vkontakte .jssocials-share-link:hover {
  background: #344d6c;
}

.jssocials-share-link {
  display: inline-block;
  text-align: center;
  text-decoration: none;
  line-height: 1;
  -webkit-transition: background 0.2s ease-in-out, border-color 0.2s ease-in-out;
  transition: background 0.2s ease-in-out, border-color 0.2s ease-in-out;
  padding: 0.5em 0.6em;
  color: #fff;
}
.jssocials-share-logo {
  width: 1em;
  vertical-align: middle;
  font-size: 1.5em;
}

.btn-copy {
  /* ... existing styles ... */
  position: relative;
}
/* Add the following styles to your existing CSS */
.btn-copy {
  background-color: #ff9900;
  color: #fff;
  border: none;
  border-radius: 0.25rem;
  padding: 0.5rem 0rem;
  font-size: 16px;
  transition: background-color 0.3s ease;
  cursor: pointer;
  flex: 0.7;
  margin-left: 0.1rem;
}

.btn-copy:hover {
  background-color: #ff7700;
}

#copyLink {
  border: none;
  border-radius: 0.25rem;
  padding: 1.15rem;
  font-size: 16px;
  background-color: #333;
  color: #fff;
  margin-bottom: 1px;
}

#copyLink:focus {
  outline: none;
  box-shadow: none;
}

.copy-link-container {
  position: relative;
  display: flex;
  align-items: center;
  flex-direction: row;
  margin-bottom: 1rem;
}

.form-control {
  display: block;
  width: 100%;
  height: 29px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  flex: 2.5;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 4px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out 0.15s,
    box-shadow ease-in-out 0.15s;
  -o-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  -webkit-transition: border-color ease-in-out 0.15s,
    -webkit-box-shadow ease-in-out 0.15s;
  transition: border-color ease-in-out 0.15s,
    -webkit-box-shadow ease-in-out 0.15s;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
  transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s,
    -webkit-box-shadow ease-in-out 0.15s;
}
@keyframes slideIn {
  from {
    transform: translateY(-20px);
  }
  to {
    transform: translateY(0);
  }
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
.dynamic-text {
  color: #ff9900; /* Bright orange color */
  font-weight: 600;
  font-size: 16px;
  display: flex;
  align-items: center;
  padding-left: 0.8rem;
  opacity: 0.8;
  transition: opacity 0.3s ease-in-out;
  font-family: "Raleway", sans-serif; /* Use the Raleway font or another Google Font */
}

.dynamic-text:hover {
  opacity: 1;
}
</style>
<body>
<div class="header">
    <a href="/code/new" class="logo-text" style="display: flex; align-items: center; text-decoration: none;">
        <img src="https://pastebin.com/themes/pastebin/img/pastebin_logo_side_outline_support_ukraine.webp" alt="CodeShareBox Logo" class="logo"> CodeShareBox </a>
    <div class="navigation">
        <a href="/code/new">Home</a>
        <a href="/code/latest">Latest CodeShares</a>
        <a href="/code/about">About</a>
    </div>
</div>
<div class="custom-container">
    <div class="custom-result">
        <div class="custom-title">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" style="width: 40px; height: 40px; vertical-align: middle; margin-right: 10px;">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
            </svg> Snippet Saved Successfully!
        </div>
        <div class="button-container">
            <button id="createNewButton" type="button" class="custom-button">
            <span role="img" aria-label="reload" class="custom-icon">
              <svg viewBox="64 64 896 896" focusable="false" class="" data-icon="reload" width="1em" height="1em" fill="currentColor" aria-hidden="true">
                <path d="M909.1 209.3l-56.4 44.1C775.8 155.1 656.2 92 521.9 92 290 92 102.3 279.5 102 511.5 101.7 743.7 289.8 932 521.9 932c181.3 0 335.8-115 394.6-276.1 1.5-4.2-.7-8.9-4.9-10.3l-56.7-19.5a8 8 0 00-10.1 4.8c-1.8 5-3.8 10-5.9 14.9-17.3 41-42.1 77.8-73.7 109.4A344.77 344.77 0 01655.9 829c-42.3 17.9-87.4 27-133.8 27-46.5 0-91.5-9.1-133.8-27A341.5 341.5 0 01279 755.2a342.16 342.16 0 01-73.7-109.4c-17.9-42.4-27-87.4-27-133.9s9.1-91.5 27-133.9c17.3-41 42.1-77.8 73.7-109.4 31.6-31.6 68.4-56.4 109.3-73.8 42.3-17.9 87.4-27 133.8-27 46.5 0 91.5 9.1 133.8 27a341.5 341.5 0 01109.3 73.8c9.9 9.9 19.2 20.4 27.8 31.4l-60.2 47a8 8 0 003 14.1l175.6 43c5 1.2 9.9-2.6 9.9-7.7l.8-180.9c-.1-6.6-7.8-10.3-13-6.2z"></path>
              </svg>
            </span>
                <span style="color: #fff;">Create New</span>
            </button>
        </div>
    </div>
</div>
<div class="center-container">
    <div class="x_panel">
        <div class="x_title" style="margin-bottom: 0px;">
            <div class="seealso_header">File <span class="highlight">Description </span>
            </div>
        </div>
        <div class="x_content">
            <ul class="seealso">
                <li>
                    <div class="icon" title="Views Restriction">
                        <i class="fa fa-eye" aria-hidden="true"></i>
                    </div>
                    <span class="dynamic-text">${views}</span>
                </li>
                <li>
                    <div class="icon" title="Time Remaining">
                        <i class="fa fa-hourglass" aria-hidden="true"></i>
                    </div>
                    <span class="dynamic-text">${time} secs</span>
                </li>
                <li>
                    <div class="icon" title="Date">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                    </div>
                    <span class="dynamic-text">${date}</span>
                </li>
                <li>
                    <div class="icon" title="Size Of File">
                        <i class="fa fa-calculator" aria-hidden="true"></i>
                    </div>
                    <span class="dynamic-text">${size} kb </span>
                </li>
            </ul>
            <div class="share-text"> You can Share it: </div>
            <div class="copy-link-container">
                <input type="text" id="copyLink" class="form-control" readonly>
                <button id="copyURL" class="btn-copy"> Copy Link </button>
            </div>
            <div class="sharePopup jssocials" style="font-size:11px;text-align: center;">
                <div class="jssocials-shares">
                    <div class="jssocials-share jssocials-share-twitter">
                        <a id="twitterShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-twitter jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-facebook">
                        <a id="facebookShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-facebook jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-googleplus">
                        <a id="googleShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-google jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-linkedin">
                        <a id="linkedinShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-linkedin jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-pinterest">
                        <a id="pinterestShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-pinterest jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-stumbleupon">
                        <a id="stumbleuponShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-stumbleupon jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-whatsapp">
                        <a id="whatsappShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-whatsapp jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-viber">
                        <a id="viberShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-volume-control-phone jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-telegram">
                        <a id="telegramShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-paper-plane jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-email">
                        <a id="emailShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-at jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-messenger">
                        <a id="messengerShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-commenting jssocials-share-logo"></i>
                        </a>
                    </div>
                    <div class="jssocials-share jssocials-share-pocket">
                        <a id="pocketShareLink" class="jssocials-share-link" target="_blank">
                            <i class="fa fa-get-pocket jssocials-share-logo"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jssocials/1.4.0/jssocials.min.js"></script>
<script>
      function getDynamicUrl() {
        const currentUrl = window.location.href;
        const baseUrl = currentUrl.substring(0, currentUrl.indexOf("/code"));
        return baseUrl;
      }
    </script>
<script>
      document.addEventListener("DOMContentLoaded", function() {
        const copyLinkInput = document.getElementById("copyLink");
        const dynamicUrl = getDynamicUrl() + "/code/${id}";
        copyLinkInput.value = dynamicUrl;
        const twitterShareLink = document.getElementById("twitterShareLink");
        twitterShareLink.href = "https://twitter.com/intent/tweet?text=" + dynamicUrl;
        const facebookShareLink = document.getElementById("facebookShareLink");
        facebookShareLink.href = "https://www.facebook.com/sharer/sharer.php?u=" + dynamicUrl;
        const googleShareLink = document.getElementById("googleShareLink");
        googleShareLink.href = "https://plus.google.com/share?url=" + dynamicUrl;
        const linkedinShareLink = document.getElementById("linkedinShareLink");
        linkedinShareLink.href = "https://www.linkedin.com/shareArticle?mini=true&url=" + dynamicUrl;
        const pinterestShareLink = document.getElementById("pinterestShareLink");
        pinterestShareLink.href = "https://www.pinterest.com/pin/create/button/?url=" + dynamicUrl;
        const stumbleuponShareLink = document.getElementById("stumbleuponShareLink");
        stumbleuponShareLink.href = "http://www.stumbleupon.com/submit?url=" + dynamicUrl;
        const whatsappShareLink = document.getElementById("whatsappShareLink");
        whatsappShareLink.href = "whatsapp://send?text=" + dynamicUrl;
        const viberShareLink = document.getElementById("viberShareLink");
        viberShareLink.href = "viber://forward?text=" + dynamicUrl;
        const telegramShareLink = document.getElementById("telegramShareLink");
        telegramShareLink.href = "tg://msg?text=" + dynamicUrl;
        const emailShareLink = document.getElementById("emailShareLink");
        emailShareLink.href = "mailto:?subject=$" + dynamicUrl;
        const messengerShareLink = document.getElementById("messengerShareLink");
        messengerShareLink.href = "fb-messenger://share?link=" + dynamicUrl;
        const pocketShareLink = document.getElementById("pocketShareLink");
        pocketShareLink.href = "https://getpocket.com/edit?url=" + dynamicUrl;
      });
    </script>
<script>
      // Script to handle copying the link
      document.getElementById("copyURL").addEventListener("click", function() {
        var copyLinkInput = document.getElementById("copyLink");
        copyLinkInput.select();
        document.execCommand("copy");
        var copyButton = this;
        copyButton.textContent = "Copied!";
        setTimeout(function() {
          copyButton.textContent = "Copy Link";
        }, 2000);
      });
    </script>
<script>
      document.getElementById('createNewButton').addEventListener('click', function() {
        // ... Other logic ...
        // Redirect to the desired URL
        window.location.href = '/code/new';
      });
    </script>
</body>
</html>