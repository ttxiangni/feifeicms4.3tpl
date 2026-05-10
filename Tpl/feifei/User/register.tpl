<include file="User:header" />
<section class="auth-page">
    <div class="auth-card">
        <h2>注册</h2>
        <form action="{:ff_url('user/post')}" method="post">
            <input type="text" name="user_name" placeholder="用户名" required>
            <input type="email" name="user_email" placeholder="邮箱" required>
            <input type="password" name="user_pwd" placeholder="密码" required>
            <input type="password" name="user_pwd2" placeholder="确认密码" required>
            <button type="submit">注册</button>
        </form>
        <p class="auth-note"><a href="{:ff_url('user/login')}">已有账号？登录</a></p>
    </div>
</section>
<include file="User:footer" />