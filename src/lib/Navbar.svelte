<script>
    import { base } from "$app/paths";
    let isMenuOpen = false

    function toggle() {
        isMenuOpen = !isMenuOpen
    }
</script>

<nav>
    <ul class="menu">
      <li class="logo">
        <a href="/"
          ><img class="main_logo" src="/logo.png" alt="logo"/></a>
      </li>
      <li class="item" class:active={isMenuOpen}><a href="{base}/about">About</a></li>
      <li class="item" class:active={isMenuOpen}><a href="{base}/services">Services</a></li>
      <li class="item" class:active={isMenuOpen}><a href="{base}/gallery">Gallery</a></li>
      <li class="item button" class:active={isMenuOpen}><a href="{base}/contact">Contact</a></li>
      <!-- svelte-ignore a11y_click_events_have_key_events -->
      <!-- svelte-ignore a11y_no_noninteractive_element_interactions -->
      <li class="toggle" on:click={toggle}>
        <span class="bars" class:open={isMenuOpen} id="bars"></span>
      </li>
    </ul>
</nav>

<style>
    nav {
    background: rgb(29, 50, 97);
    padding: 5px 20px;
}

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

.menu li {
    font-size: 16px;
    padding: 15px 5px;
}

.menu li a {
    display: block;
}

.logo a {
    font-size: 24px;
}

.main_logo {
    height: 70px;
    width: auto;
}


/* mobile menu */

.menu {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    align-items: center;
}

.toggle {
    order: 1;
    display: flex;
}

.item.button {
    order: 2;
}

.item {
    width: 100%;
    text-align: center;
    order: 3;
    display: none;
}

.item.active {
    display:block;
}

.bars {
    background: #999;
    display: inline-block;
    height: 2px;
    position: relative;
    width: 18px;
    border-radius: 20%;
    transition: all 0.5s ease 0s;
}

.bars:before,.bars:after {
    background: #999;
    content: "";
    display: inline-block;
    height: 2px;
    position: absolute;
    width: 18px;
    border-radius: 20%;
    transition: all 0.5s ease 0s;
}

.toggle {
    cursor: pointer;
    order: 1;
}

.bars:before {
    transform: translateY(5px);
}

.bars:after {
    transform: translateY(-5px);
}

.bars.open {
    transform: translateX(-20px);
    background: transparent;
}

.bars.open:after {
    transform: rotate(45deg) translate(15px, -15px); 
}

.bars.open:before {
    transform: rotate(-45deg) translate(15px, 15px);
}

@media all and (min-width:468px){
    .menu {
        justify-content: center;
    }

    .logo {
        flex: 1;
    }

    .item.button {
        width: auto;
        order: 1;
        display: block;
    }

    .toggle {
        order: 2;
    }
}

@media all and (min-width: 768px) {
    .item {
        display: block;
        width: auto;
        order: 1;
    }

    .toggle {
        display: none;
    }

    .button {
        order: 2;
    }

    .menu li {
        padding: 15px 10px;
    }
}
</style>