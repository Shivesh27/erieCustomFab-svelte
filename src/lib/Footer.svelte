<script>
  import { base } from "$app/paths";
</script>

<footer class="footer">
    <div class="footer__addr">
      <h1 class="footer__logo">Erie Custom Fab Inc</h1>

      <!-- <h2>Contact</h2> -->

      <address>
        6 Iroquois Rd.
        <br/> 
        Leamington, 
        <br/>
        ON N8H 3V7<br/>
        Canada
        <br />
        Ph.No: 519-326-9830

        <a class="footer__btn" href="mailto:surendral@eriecustomfab.com"
          >Email Us</a
        >
      </address>
    </div>

    <ul class="footer__nav">
      <li class="nav__item">
        <h2 class="nav__title">Links</h2>

        <ul class="nav__ul">
          <li>
            <a href="{base}/">Home</a>
          </li>

          <li>
            <a href="{base}/about">About us</a>
          </li>

          <li>
            <a href="{base}/gallery">Gallery</a>
          </li>
          <li>
            <a href="{base}/services">Services</a>
          </li>
        </ul>
      </li>

      <!-- <li class="nav__item">
        <h2 class="nav__title">Social</h2>

        <ul class="nav__ul">
          <li>
            <a href="#">Instagram</a>
          </li>

          <li>
            <a href="#">YouTube</a>
          </li>

          <li>
            <a href="#">Twitter</a>
          </li>
        </ul>
      </li> -->
    </ul>

    <div class="legal">
      <p>&copy; 2024 All rights reserved.</p>

      <div class="legal__links">
        <span>Made with <span class="heart">♥</span></span>
      </div>
    </div>
</footer>

<style>

/* @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap'); */


  ul {
      list-style-type: none;
  }
  li, a {
      text-decoration: none;
      color: white;
      font-weight: 500;
      font-size: 16px;
  }

  a {
      transition: all 0.3s ease 0s;
  }

  a:hover {
      color: #0088a9;
  }


  /* mobile menu */


  .footer {
      display: flex;
      flex-flow: row wrap;
      padding: 30px 30px 20px 30px;
      color: #2f2f2f;
      background-color: #fff;
      border-top: 1px solid #e5e5e5;
    }
    
    .footer > * {
      flex:  1 100%;
    }
    
    .footer__addr {
      margin-right: 1.25em;
      margin-bottom: 2em;
    }
    
    .footer__logo {
      font-size: 1.5rem;
    }
    
    .footer__addr h2 {
      margin-top: 1.3em;
      font-size: 15px;
      font-weight: 400;
    }
    
    .nav__title {
      color: #2f2f2f;
      font-weight: 400;
      font-size: 15px;
    }
    
    .footer address {
      font-style: normal;
      color: #999;
    }
    
    .footer__btn {
      display: flex;
      align-items: center;
      justify-content: center;
      height: 36px;
      max-width: max-content;
      background-color: rgb(33, 33, 33, 0.07);
      border-radius: 100px;
      color: #2f2f2f;
      line-height: 0;
      margin: 0.6em 0;
      font-size: 1rem;
      padding: 0 1.3em;
    }
    
    .footer ul {
      list-style: none;
      padding-left: 0;
    }
    
    .footer li {
      line-height: 2em;
    }
    
    .footer a {
      text-decoration: none;
    }
    
    .footer__nav {
      display: flex;
        flex-flow: row wrap;
    }
    
    .footer__nav > * {
      flex: 1 50%;
      margin-right: 1.25em;
    }
    
    .nav__ul a {
      color: #999;
    }
    
    .legal {
      display: flex;
      flex-wrap: wrap;
      color: #999;
    }
      
    .legal__links {
      display: flex;
      align-items: center;
    }
    
    .heart {
      color: #2f2f2f;
    }
    
    @media screen and (min-width: 24.375em) {
      .legal .legal__links {
        margin-left: auto;
      }
    }
    
    @media screen and (min-width: 40.375em) {
      .footer__nav > * {
        flex: 1;
      }
      
      .footer__addr {
        flex: 1 0px;
      }
      
      .footer__nav {
        flex: 2 0px;
      }
    }


</style>