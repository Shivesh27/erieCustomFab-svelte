<script>
	let { imgsrc, cardTitle, cardDesc } = $props();
</script>

<div class="card">
	<div class="card-icon"><img src="{imgsrc}" alt="" /></div>
	<div class="card-content">
		<div class="card-title">{cardTitle}</div>
		<div class="card-desc">
			{cardDesc}
		</div>
	</div>
</div>

<style>
	.cards-container {
		display: flex;
		flex-direction: column;
		margin-top: 20px;
	}

	.card {
		display: flex;
		flex-direction: column;
		margin-bottom: 20px;
		border-radius: 10px;
		overflow: hidden;
		box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Adding a shadow effect */
	}

	.card-icon {
		flex: 0 0 40%; /* Adjust the percentage value as needed */
	}

	.card-icon img {
		width: 100%; /* Ensuring the image fills its container */
		height: 100%; /* Ensuring the image fills its container */
		border-top-left-radius: 10px; /* Rounded corners for the top-left and bottom-left corners */
		border-bottom-left-radius: 10px;
		object-fit: cover;
	}

	.card-content {
		flex: 1; /* Allowing the content container to grow and fill the remaining space */
		padding: 20px; /* Adding padding inside the content container */
	}

	.card-title {
		font-size: 18px;
		font-weight: bold;
		margin-bottom: 10px;
	}

	.card-desc {
		font-size: 14px;
		color: #666;
	}
	@media all and (min-width: 468px) {
		.card {
			flex-direction: row;
		}
	}

	/* desktop menu */

	@media all and (min-width: 768px) {
		.card {
			flex-direction: row;
		}
	}
</style>
