<include file="BlockTheme:header_start" />
<include file="Seo:vod_detail" />
<include file="BlockTheme:header_end" />
<main>
    <section class="detail">
        <div class="poster">
            <img src="{$vod_pic}" alt="{$vod_name}">
        </div>
        <h2>{$vod_name}</h2>
        <p>导演：{$vod_director}</p>
        <p>主演：{$vod_actor}</p>
        <p>类型：{$vod_type}</p>
        <p>地区：{$vod_area}</p>
        <p>年份：{$vod_year}</p>
        <p>简介：{$vod_content}</p>
        <a href="{:U('Vod/play', array('id'=>$vod_id, 'pid'=>1))}" class="btn-play">开始播放</a>
    </section>
    <section class="episodes">
        <h3>选集</h3>
        <div class="episode-grid">
            <volist name="episodes" id="episode">
                <a href="{:U('Vod/play', array('id'=>$vod_id, 'pid'=>$episode.id))}" class="episode">{$episode.name}</a>
            </volist>
        </div>
    </section>
    <include file="BlockTheme:vod_inc_hot" />
    <include file="BlockTheme:vod_inc_related" />
    <include file="BlockTheme:forum_inc_vod" />
</main>
<include file="BlockTheme:footer" />