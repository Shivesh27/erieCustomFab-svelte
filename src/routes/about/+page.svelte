<script lang="ts">

	import Navbar from "$lib/Navbar.svelte";
	import { onMount } from "svelte";

    let aboutData: any

    onMount(() => {
        fetch("/data/AboutUs.json")
            .then((response) => response.json())
            .then((data) => (aboutData = data))
    })

    

</script>

<div class="hero-container">
    <Navbar/>
</div>

<div class="video-container">
    <div class="video">
      <img src="images/bg.jpg" alt="">
    </div>
  </div>
  

  <!-- banner -->
  <div class="about-container">
    <div class="about-content">
        {#if aboutData}
            <div class="about-title">{aboutData.aboutTitle}</div>
            <div class="about-desc">
                {#each aboutData.aboutContent as content }
                    {@html content}
                    <br>
                    <br>
                {/each}
            </div>
            {:else}
                <div>...Loading</div>
        {/if}    
    </div>
</div>

<style>

.video-container {
    width: 100%;
    margin-top: 50px;
    padding: 0 20px;
}

.video {
    display: flex;
    justify-content: center;
    align-items: center;
}

.video-container .video img {
    width: 100%;
    height: auto;
    -o-object-fit: cover;
    object-fit: cover;
}

    .about-container {
    position: relative;
    padding: 90px 0;
}
.about-content {
    width: 100%;
    max-width: 300px;
    margin-left: auto;
    margin-right: auto;
    text-align: left;
    color: black;
}
.about-title {
    font-size: 2rem;
    font-weight: bold;
}

.about-desc {
    margin-top: 15px;
}

@media all and (min-width:468px){

    .about-content {
        max-width: 420px;
    }

    .video-container .video img {
        max-width: 420px;
        height: auto;
        -o-object-fit: cover;
        object-fit: cover;
    }
}

/* desktop menu */

@media all and (min-width: 768px) {

    .about-content {
        max-width: 720px;
    }

    .video-container .video img {
        max-width: 720px;
        height: auto;
        -o-object-fit: cover;
        object-fit: cover;
    }
}

</style>
      