<include file="BlockTheme:header_start" />
<include file="Seo:role" />
<include file="BlockTheme:header_end" />
<main>
    <section class="role-read">
        <div class="role-info">
            <img src="{$role_pic}" alt="{$role_name}">
            <h2>{$role_name}</h2>
            <p>{$role_content}</p>
        </div>
        <h3>登场作品</h3>
        <div class="movie-grid">
            <volist name="works" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />