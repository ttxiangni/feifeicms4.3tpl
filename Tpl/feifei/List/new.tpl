<include file="BlockTheme:header_start" />
<include file="Seo:list_new" />
<include file="BlockTheme:header_end" />
<main>
    <section class="recent-updates">
        <h2>最近更新</h2>
        <ul>
            <volist name="recent_vods" id="vod">
                <include file="BlockTheme:item_txt_vod" />
            </volist>
        </ul>
        <div class="pagination">
            {$page}
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />