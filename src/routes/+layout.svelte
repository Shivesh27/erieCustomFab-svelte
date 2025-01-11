<script>
    import Footer from "$lib/Footer.svelte";
	import NewFooter from "$lib/NewFooter.svelte";
</script>

<main class="container">
    <slot/>
</main>

<NewFooter/>

<style>
    :global(body) {
        margin: 0;
    }
    :global(.hero-container) {
        width: 100%; 
    }
</style>