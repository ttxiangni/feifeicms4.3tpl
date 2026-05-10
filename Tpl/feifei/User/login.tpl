<include file="User:header" />
<section class="auth-page">
    <div class="auth-card">
        <h2>登录</h2>
        <form action="{:U('User/login')}" method="post">
            <input type="text" name="username" placeholder="用户名" required>
            <input type="password" name="password" placeholder="密码" required>
            <button type="submit">登录</button>
        </form>
        <p class="auth-note"><a href="{:U('User/register')}">注册账号</a></p>
    </div>
</section>
<include file="User:footer" />