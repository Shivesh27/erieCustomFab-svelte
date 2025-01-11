<script lang="ts">
	import IconCard from '$lib/IconCard.svelte';
	import HeroBox from '$lib/HeroBox.svelte';
	import Navbar from '$lib/Navbar.svelte';
	import { onMount } from 'svelte';

	let homepageData: any;

	onMount(() => {
		fetch('/data/HomePage.json')
			.then((response) => response.json())
			.then((data) => (homepageData = data))
	});
</script>

<div class="hero-container">
	<Navbar />
	<HeroBox />
</div>

<div class="services-container">
	<div class="services-heading">
		<div class="services-title">You've Entered the Right Place for All Your Custom Fab Needs!</div>
		<div class="services-subtitle">Welcome to ECF, where precision meets innovation in custom metal fabrication! We specialize in transforming your ideas into high-quality, durable metal products with expert craftsmanship. Whether you're looking for custom designs, prototypes, or large-scale projects, our team is committed to delivering excellence and reliability every step of the way. Thank you for choosing us<br><span style="font-style: italic;">You think it We make it.</span></div>
	</div>
	<div class="cards-container">
		{#if homepageData}
			{#each homepageData.services as service}
				<IconCard cardTitle={service.cardTitle} cardIcon={service.cardIcon}/>
			{/each}
		{:else}
			<p>Loading...</p>
		{/if}
	</div> 
</div>

<div class="about-container">
    <div class="bg-container">
      <img src="images/about_us.jpg" alt="" />
    </div>

    <div class="about-content">
        {#if homepageData}
        <div class="about-title">{homepageData.aboutTitle}</div>
        <div class="about-desc">
          {homepageData.aboutContentLine1}
          <br />
          <br />
          {homepageData.aboutContentLine2}
          <br />
          <br />
          <!-- Whether it's designing custom parts for greenhouses or providing intricate components for automotive manufacturing, we work closely with our clients to bring their ideas to life. Our team is dedicated to ensuring every project meets the highest standards of quality, performance, and durability, tailored to the unique needs of each industry.
              Starting in Leamington, we've built our reputation by understanding the specific challenges of local industries and providing solutions that make a difference. 
              <br>
              <br>             
              From prototyping and small-scale runs to large-scale production, we offer flexibility, reliability, and top-tier craftsmanship in every project.
              When you work with Erie Custom Fab Inc, you're not just getting a fabricator—you're getting a dedicated partner who understands the importance of your vision. You think it, we make it. Let’s create something great together. -->
        </div>
        {/if}
      
    </div>
  </div>

<style>

    @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');

    :global(body) {
        font-family: "Montserrat", sans-serif;
    }
    :global(*) {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }
    .services-container{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }
	.services-heading {
		margin-top: 20px;
		padding: 30px;
		align-items: center;
		text-align: center;
        width: 60%;
        border-radius: 5px;
        box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;
	}

	.services-title {
		font-size: 30px;
		font-weight: 500;
        padding-bottom: 40px;
	}

	.services-subtitle {
		margin-top: 8px;
		font-size: 16px;
		font-weight: 300;
	}

    .cards-container {
    margin-top: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
    gap: 120px;
    margin-left: 15px;
    margin-right: 15px;
    margin-bottom: 50px;
    }

    .about-container {
    position: relative;
    padding: 90px 0;
}

.bg-container {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    overflow: hidden;
    z-index: -1;
}

.about-container .bg-container img{
    width: 100%;
    height: 100%;
    -o-object-fit: cover;
    object-fit: cover;
    filter: blur(1px);
}

.about-content {
    width: 100%;
    max-width: 300px;
    margin-left: auto;
    margin-right: auto;
    text-align: center;
    color: white;
    text-shadow: 2px 2px 10px #000;
}

.about-title {
    font-size: 2rem;
    font-weight: bold;
}

.about-desc {
    margin-top: 15px;
}

	@media all and (min-width: 468px) {

        .about-content {
        max-width: 420px;
    }
	}

	/* desktop menu */

	@media all and (min-width: 768px) {


        .about-content {
        max-width: 720px;
    }
	}
</style>
