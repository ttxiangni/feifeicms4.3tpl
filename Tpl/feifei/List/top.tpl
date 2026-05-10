<include file="BlockTheme:header_start" />
<include file="Seo:list_top" />
<include file="BlockTheme:header_end" />
<main>
    <section class="hot-list">
        <h2>热播榜</h2>
        <ol>
            <volist name="top_vods" id="vod">
                <li><include file="BlockTheme:item_txt_vod" /></li>
            </volist>
        </ol>
        <div class="pagination">
            {$page}
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />