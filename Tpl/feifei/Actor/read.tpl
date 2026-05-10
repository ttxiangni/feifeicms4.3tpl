<include file="BlockTheme:header_start" />
<include file="Seo:actor" />
<include file="BlockTheme:header_end" />
<main>
    <section class="actor-read">
        <div class="actor-info">
            <img src="{$actor_pic}" alt="{$actor_name}">
            <h2>{$actor_name}</h2>
            <p>{$actor_content}</p>
        </div>
        <h3>代表作品</h3>
        <div class="movie-grid">
            <volist name="works" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />