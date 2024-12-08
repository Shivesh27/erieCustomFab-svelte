<script lang="ts">
	import Card from '$lib/Card.svelte';
	import HeroBox from '$lib/HeroBox.svelte';
	import Navbar from '$lib/Navbar.svelte';
	import { onMount } from 'svelte';

	let homepageData: any;

	onMount(() => {
		fetch('/data/HomePage.json')
			.then((response) => response.json())
			.then((data) => (homepageData = data));
	});
</script>

<div class="hero-container">
	<Navbar />
	<HeroBox />
</div>

<div class="services-container">
	<div class="services-heading">
		<div class="services-title">Custom fabrication</div>
		<div class="services-subtitle">Expert welding services for all your needs</div>
	</div>
	<div class="cards-container">
		{#if homepageData}
			{#each homepageData.services as service}
				<Card cardTitle={service.cardTitle} cardDesc={service.cardDesc} />
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
      <div class="about-title">About us</div>
      <div class="about-desc">
        Founded in 2020 in Leamington, Ontario, Erie Custom Fab Inc was
        created to support the vital greenhouse and automobile industries that
        are at the heart of our community. With a commitment to craftsmanship
        and innovation, we specialize in custom fabrication, offering
        precision solutions for a diverse range of sectors, from agriculture
        to automotive and beyond.
        <br />
        <br />
        At Erie Custom Fab Inc, we believe that "You think, we make it."
        <br />
        <br />
        <!-- Whether it's designing custom parts for greenhouses or providing intricate components for automotive manufacturing, we work closely with our clients to bring their ideas to life. Our team is dedicated to ensuring every project meets the highest standards of quality, performance, and durability, tailored to the unique needs of each industry.
            Starting in Leamington, we've built our reputation by understanding the specific challenges of local industries and providing solutions that make a difference. 
            <br>
            <br>             
            From prototyping and small-scale runs to large-scale production, we offer flexibility, reliability, and top-tier craftsmanship in every project.
            When you work with Erie Custom Fab Inc, you're not just getting a fabricator—you're getting a dedicated partner who understands the importance of your vision. You think it, we make it. Let’s create something great together. -->
      </div>
      <div class="about-cta"><a href="about.html">Read More</a></div>
    </div>
  </div>

<style>
	.services-heading {
		margin-top: 20px;
		padding: 8px 8px;
		align-items: center;
		text-align: center;
	}

	.services-title {
		font-size: 30px;
		font-weight: bold;
	}

	.services-subtitle {
		margin-top: 8px;
		font-size: 14px;
		font-weight: 300;
	}

    .cards-container {
    margin-top: 50px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
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
		.services-title {
			font-size: 30px;
			font-weight: bold;
		}

		.services-subtitle {
			margin-top: 8px;
			font-size: 14px;
			font-weight: 300;
		}
        .about-content {
        max-width: 420px;
    }
	}

	/* desktop menu */

	@media all and (min-width: 768px) {
		.services-title {
			font-size: 30px;
			font-weight: bold;
		}

		.services-subtitle {
			margin-top: 8px;
			font-size: 14px;
			font-weight: 300;
		}

        .about-content {
        max-width: 720px;
    }
	}
</style>
