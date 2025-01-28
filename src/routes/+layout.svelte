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
    :global(body) {
        font-family: "Montserrat", sans-serif;
    }
    :global(*) {
        box-sizing: border-box;
        margin: 0;
        padding: 0;
    }
</style>