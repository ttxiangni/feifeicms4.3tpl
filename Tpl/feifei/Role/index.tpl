<include file="BlockTheme:header_start" />
<include file="Seo:role_index" />
<include file="BlockTheme:header_end" />
<main>
    <section class="role-index">
        <h2>角色索引</h2>
        <div class="role-list">
            <volist name="roles" id="role">
                <div class="role-card">
                    <a href="{:U('Role/read', array('id'=>$role.id))}">
                        <img src="{$role.pic}" alt="{$role.name}">
                        <h3>{$role.name}</h3>
                    </a>
                </div>
            </volist>
        </div>
    </section>
</main>
<include file="BlockTheme:footer" />