<include file="BlockTheme:header_start" />
<include file="Seo:search" />
<include file="BlockTheme:header_end" />
<main>
    <section class="search-results">
        <h2>搜索结果：{$wd}</h2>
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