<include file="BlockTheme:header_start" />
<include file="Seo:list" />
<include file="BlockTheme:header_end" />
<main>
    <section class="category-list">
        <h2>{$list_name}</h2>
        <div class="movie-grid">
            <volist name="vods" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
        <div class="pagination">
            {$page}
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />