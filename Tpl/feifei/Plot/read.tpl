<include file="BlockTheme:header_start" />
<include file="Seo:plot" />
<include file="BlockTheme:header_end" />
<main>
    <section class="plot-read">
        <h2>{$plot_name}</h2>
        <p>{$plot_content}</p>
        <h3>该题材作品</h3>
        <div class="movie-grid">
            <volist name="vods" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />