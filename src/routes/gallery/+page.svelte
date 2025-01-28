<script lang="ts">
	import Navbar from '$lib/Navbar.svelte';

    import { onMount } from 'svelte';
    let images: string[] = [];
    let lightboxVisible = false;
    let lightboxImage = '';

    function openLightbox(imgSrc: string) {
        lightboxImage = "/images/" + imgSrc;
        lightboxVisible = true;
    }

    function closeLightbox() {
        lightboxVisible = false;
    }

    // onMount(() => fetch('/data/Gallery.json')
    // .then(response => response.json())
    // .then(data => {images = data.images}) )

	onMount(() => fetch('/gallery-img/')
    .then(response => response.text())
	.then(text => {
		const parser = new DOMParser();
      const doc = parser.parseFromString(text, 'text/html');
      images = Array.from(doc.querySelectorAll('a'))
        .map((link) => link.getAttribute('href'))
        .filter((href): href is string => href !== null && /\.(jpg|jpeg|png|gif|webp)$/i.test(href));
	})
     )



</script>

<div class="hero-container">
	<Navbar />
</div>

<!-- Gallery -->
<!-- svelte-ignore a11y_click_events_have_key_events -->
<!-- svelte-ignore a11y_no_static_element_interactions -->
<div id="lightbox" class="lightbox" style="display: {lightboxVisible ? 'flex': 'none'}">
	<span class="close" on:click={closeLightbox}>&times;</span>
	<img class="lightbox-content" id="lightbox-img" alt="lightbox" src={lightboxImage}/>
</div>

<div class="gallery-container">
	<div class="gallery-title">Gallery</div>
	<div class="gallery">
        {#if images}
            {#each images as image}
            <div class="img-container">
                <!-- svelte-ignore a11y_click_events_have_key_events -->
                <!-- svelte-ignore a11y_no_noninteractive_element_interactions -->
                <!-- svelte-ignore a11y_img_redundant_alt -->
                <img class="img-container" src="/images/{image}" alt="Gallery image" on:click={() => openLightbox(image)}/>
            </div>
            {/each}
    {:else}
        <p>Loading...</p>
    {/if}
        
	</div>
</div>

<style>
    * {
        box-sizing: border-box;
    }
	.lightbox {
		display: none;
		position: fixed;
		z-index: 999;
		width: 100%;
		height: 100%;
		background-color: rgba(0, 0, 0, 0.9);
		top: 0;
		left: 0;
		overflow: auto;
		justify-content: center;
		align-items: center;
	}

	.lightbox-content {
		max-width: 80%;
		max-height: 80%;
	}

	.close {
		color: #fff;
		position: absolute;
		top: 15px;
		right: 35px;
		font-size: 40px;
		font-weight: bold;
		transition: 0.3s;
	}

	.close:hover,
	.close:focus {
		color: #bbb;
		text-decoration: none;
		cursor: pointer;
	}

	/* Gallery */

	.gallery-container {
		padding: 50px 20px;
		min-height: 100vh;
	}

	.gallery {
		margin-top: 20px;
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); /* Adjust column size as needed */
		grid-gap: 12px;
		justify-items: center; /* Center items horizontally */
	}

	.gallery img {
		width: 100%;
		height: auto;
		aspect-ratio: 1 / 1;
		cursor: pointer;
		object-fit: cover;
		vertical-align: bottom;
		border: 8px solid white;
	}

	.gallery-title {
		font-size: 2rem;
		font-weight: bold;
	}

    .img-container {
    box-shadow: rgba(0, 0, 0, 0.33) 0px 1px 3px 0px;
}

@media all and (min-width:468px){

    .gallery-container {
        padding: 50px 20px;
    }
}

/* desktop menu */

@media all and (min-width: 768px) {

    .gallery-container {
        padding: 50px 100px;
    }
}
</style>
