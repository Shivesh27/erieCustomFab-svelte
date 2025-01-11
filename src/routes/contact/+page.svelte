<script lang="ts">
	import Navbar from '$lib/Navbar.svelte';
	import { onMount } from 'svelte';

	let contactData: any;

	onMount(() => {
		fetch("/data/ContactUs.json")
		.then((response) => response.json())
		.then((data) => contactData = data)
	})
</script>

<div class="hero-container">
	<Navbar />
</div>

<!-- banner -->
<div class="about-container">
	<div class="about-content">
		{#if contactData}
		<div class="about-title">{contactData.contactTitle}</div>
		<div class="about-desc">
			{contactData.contactContent}
		</div>
		{/if}
	</div>
</div>

<!--Contact Form-->
<div class="form-container">
	<form class="contact-form" id="contactForm" action="https://formsubmit.co/ssshivesh@gmail.com" method="POST">
		<div class="form-group">
			<label for="name">Name:</label>
			<input type="text" id="name" name="name" required />
		</div>
		<div class="form-group">
			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required />
		</div>
		<div class="form-group">
			<label for="message">Message:</label>
			<textarea id="message" name="message" rows="5" required></textarea>
		</div>
		<div class="form-group">
			<button type="submit">Submit</button>
		</div>
	</form>
</div>

<style>
	.about-container {
		position: relative;
		padding: 90px 0;
	}

	.about-content {
		width: 100%;
		max-width: 300px;
		margin-left: auto;
		margin-right: auto;
		text-align: center;
		color: black;
	}

	.about-title {
		font-size: 2rem;
		font-weight: bold;
	}

	.about-desc {
		margin-top: 15px;
	}

	.form-container {
		max-width: 90%;
		margin: 0 auto;
		padding: 20px;
		background-color: #fff;
		border-radius: 10px;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		margin-bottom: 100px;
	}

	.contact-form {
		display: grid;
		grid-gap: 20px;
	}

	.form-group {
		display: grid;
		grid-template-columns: 1fr 1fr;
		grid-gap: 10px;
	}

	.form-group label {
		font-weight: bold;
	}

	.form-group input,
	.form-group textarea {
		width: 100%;
		padding: 10px;
		border: 1px solid #ccc;
		border-radius: 5px;
	}

	.form-group textarea {
		resize: vertical;
	}

	.form-group button {
		grid-column: span 2;
		padding: 10px;
		background: rgb(29, 50, 97);
		color: #fff;
		border: none;
		border-radius: 5px;
		cursor: pointer;
	}

	.form-group button:hover {
		background-color: #0056b3;
	}

	/* Tablet menu */

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

		.form-container {
			max-width: 800px;
		}
	}
</style>
