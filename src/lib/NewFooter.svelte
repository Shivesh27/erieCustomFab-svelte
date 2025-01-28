<script>
    import { base } from "$app/paths";
  </script>

<footer class="footer">
    <div class="footer-container">
        <div class="logo-container">
            <div class="logo">
                <img src="/logo.png" alt="ECF_Logo">
            </div>
            <div class="address"> 6 Iroquois Rd, Leamington, <br> ON N8H 3V7, Canada</div>
        </div>
        <div class="nav-links-container">
            <ul>
                <li><a href="{base}/">Home</a></li>
                <li><a href="{base}/about">About</a></li>
                <li><a href="{base}/services">Services</a></li>
                <li><a href="{base}/gallery">Gallery</a></li>
            </ul>
        </div>
        <div class="contact-us-container">
            <div class="title">Contact Us Today</div>
            <div class="phone-number">519-326-9830</div>
            <div class="email">surendral@eriecustomfab.com</div>
        </div>
    </div>
</footer>

<style>
    .footer {
        padding: 100px 30px 120px 30px;
        background-color: rgb(80, 104, 157);
        color: #fafafa;
    }

    .footer-container {
        display: flex;
        justify-content: space-around;
    }
    .logo-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    .address {
        text-align: center;
        font-size: 15px;
    }
    .logo img {
        width: 200px;
        height: auto;
    }

    .nav-links-container ul{
        display: flex;
        list-style: none;
    }
    .nav-links-container a {
      text-decoration: none;
    }
    .nav-links-container li {
        padding: 20px;
        font-size: 20px;
    }
    li, a {
      text-decoration: none;
      color: white;
    }

    a {
        transition: all 0.3s ease 0s;
    }

    a:hover {
        color: #0088a9;
    }

    .contact-us-container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .title {
        font-size: 20px;
        font-weight: 500;
        padding-bottom: 10px;
    }
    .phone-number {
        font-size: 35px;
        padding-bottom: 15px;
    }
    .email {
        font-size: 15px;
    }
</style>