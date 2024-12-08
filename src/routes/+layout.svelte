<script>
    import Footer from "$lib/Footer.svelte";
</script>

<main class="container">
    <slot/>
</main>

<Footer/>

<style>
    :global(body) {
        margin: 0;
    }
    :global(.hero-container) {
        width: 100%; 
    }
</style>