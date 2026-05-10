<include file="BlockTheme:header_start" />
<include file="Seo:plot_index" />
<include file="BlockTheme:header_end" />
<main>
    <section class="plot-index">
        <h2>剧情题材标签云</h2>
        <div class="plot-tags">
            <volist name="plots" id="plot">
                <a href="{:U('Plot/read', array('id'=>$plot.id))}" class="tag">{$plot.name}</a>
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />