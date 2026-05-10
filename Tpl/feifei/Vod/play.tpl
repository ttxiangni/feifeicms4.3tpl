<include file="BlockTheme:header_start" />
<include file="Seo:vod_play" />
<include file="BlockTheme:header_end" />
<main>
    <section class="player">
        <h2>{$vod_name} - 第{$play_pid}集</h2>
        <div id="player">
            <!-- 视频播放器代码 -->
            <video controls>
                <source src="{$play_url}" type="video/mp4">
            </video>
        </div>
    </section>
    <section class="episodes">
        <h3>选集</h3>
        <div class="episode-grid">
            <volist name="episodes" id="episode">
                <a href="{:U('Vod/play', array('id'=>$vod_id, 'pid'=>$episode.id))}" class="episode <if condition="$play_pid eq $episode.id">current</if>">{$episode.name}</a>
            </volist>
        </div>
    </section>
    <include file="BlockTheme:vod_inc_related" />
    <include file="BlockTheme:forum_inc_vod" />
</main>
<include file="BlockTheme:footer" />