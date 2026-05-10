<include file="BlockTheme:header_start" />
<include file="Seo:home" />
<include file="BlockTheme:header_end" />
<main>
    <section class="hero">
        <h2>热门推荐</h2>
        <div class="movie-grid">
            <volist name="hot_vods" id="vod">
                <include file="BlockTheme:item_img_vod" />
            </volist>
        </div>
    </section>
    <section class="recent">
        <h2>最近更新</h2>
        <ul>
            <volist name="recent_vods" id="vod">
                <include file="BlockTheme:item_txt_vod" />
            </volist>
        </ul>
    </section>
    <section class="categories">
        <h2>分类楼层</h2>
        <div class="category">
            <h3>电影</h3>
            <div class="movie-grid">
                <volist name="movie_vods" id="vod">
                    <include file="BlockTheme:item_img_vod" />
                </volist>
            </div>
        </div>
        <!-- 其他分类 -->
    </section>
</main>
<include file="BlockTheme:footer" />