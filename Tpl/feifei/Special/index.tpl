<include file="BlockTheme:header_start" />
<include file="Seo:special_index" />
<include file="BlockTheme:header_end" />
<main>
    <section class="special-index">
        <h2>专题列表</h2>
        <div class="special-grid">
            <volist name="specials" id="special">
                <div class="special-card">
                    <a href="{:U('Special/read', array('id'=>$special.id))}">
                        <img src="{$special.pic}" alt="{$special.name}">
                        <h3>{$special.name}</h3>
                    </a>
                </div>
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />