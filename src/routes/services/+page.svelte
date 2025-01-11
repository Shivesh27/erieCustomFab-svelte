<script lang="ts">
	import Card from '$lib/Card.svelte';

	import Navbar from '$lib/Navbar.svelte';
	import { onMount } from 'svelte';

	let services: any;

	onMount(() =>
		fetch('/data/ServicesPage.json')
			.then((response) => response.json())
			.then((data) => {
				services = data;
			})
	);
</script>

<div class="hero-container">
	<Navbar />
</div>

<div class="services-container">
	<div class="services-title">Services</div>
	<div class="cards-container">
		{#if services}
			{#each services as service}
				<Card cardTitle={service.cardTitle} cardDesc={service.cardDesc} imgsrc={service.imgsrc} />
			{/each}
		{:else}
			<p>Loading...</p>
		{/if}
	</div>
</div>

<style>
	.services-container {
		justify-content: center;
		align-items: center;
		min-height: 100vh;
		background-color: #f2f2f2;
		padding: 50px 20px;
	}

	.services-title {
		font-size: 2rem;
		font-weight: bold;
	}

	.cards-container {
		display: flex;
		flex-direction: column;
		margin-top: 20px;
	}

	/* Tablet menu */

	@media all and (min-width: 468px) {
		.services-title {
			font-size: 30px;
			font-weight: bold;
		}

		.services-container {
			padding: 50px 20px;
		}
	}

	/* desktop menu */

	@media all and (min-width: 768px) {
		.services-title {
			font-size: 30px;
			font-weight: bold;
		}

		.services-container {
			padding: 50px 100px;
		}
	}
</style>
