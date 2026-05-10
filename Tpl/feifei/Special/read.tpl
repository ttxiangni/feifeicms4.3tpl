<include file="BlockTheme:header_start" />
<include file="Seo:special" />
<include file="BlockTheme:header_end" />
<main>
    <section class="special-read">
        <h2>{$special_name}</h2>
        <p>{$special_content}</p>
        <h3>专题影片</h3>
        <div class="movie-grid">
            <volist name="vods" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />