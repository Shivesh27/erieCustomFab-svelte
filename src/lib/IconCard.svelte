<script lang="ts">
    let {
        cardIcon,
        cardTitle
    } = $props()
</script>

<div class="card">
    <div class="card-icon"><img src="{cardIcon}" alt="" /></div>
    <div class="card-title">{cardTitle}</div>
    <!-- <div class="card-desc">{cardDesc}</div> -->
</div>

<style>
 .card {
    margin: 20px 20px;
    padding: 16px 16px;
    max-width: 360px;
    height: auto;
    /* border: 1px solid black; */
}

.card-icon {
    width: 100px;
    height: 100px;
    padding: 20px;
    /* border: 1px solid black; */
    border-radius: 10px;
    box-shadow: 0px 0px 10px 8px #fafafa;
}

.card-icon img {
    /* border: 1px solid black; */
    max-width: 100%;
    height: auto;
    width: 100px;
}

.card-title {
    width: 100%;
    margin-top: 20px;
    font-size: 22px;
    font-weight: bold;
}

.card-desc {
    width: 100%;
    margin-top: 20px;
    margin-right: 20px;
    font-size: 16px;
}

</style>