<include file="BlockTheme:header_start" />
<include file="Seo:actor_index" />
<include file="BlockTheme:header_end" />
<main>
    <section class="actor-index">
        <h2>演员索引</h2>
        <div class="actor-list">
            <volist name="actors" id="actor">
                <div class="actor-card">
                    <a href="{:U('Actor/read', array('id'=>$actor.id))}">
                        <img src="{$actor.pic}" alt="{$actor.name}">
                        <h3>{$actor.name}</h3>
                    </a>
                </div>
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />