<include file="BlockTheme:header_start" />
<include file="Seo:forum" />
<include file="BlockTheme:header_end" />
<main>
    <section class="forum-detail">
        <h2>影片评论 - {$vod_name}</h2>
        <div id="comments">
            <volist name="comments" id="comment">
                <include file="BlockTheme:forum_item" />
            </volist>
        </div>
        <include file="BlockTheme:forum_post" />
    </section>
</main>
<include file="BlockTheme:footer" />