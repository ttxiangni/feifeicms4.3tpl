<include file="User:header" />
<include file="User:center_nav" />
<section class="user-center container">
    <div class="page-header">
      <h4>帐号管理</h4>
    </div>
    <div class="account-summary">
      <strong>我的影币：</strong>
      <span>影币可用来支付付费点播影片或购买VIP权限，您现在拥有（{$user_score|default=0}）个影币</span>
    </div>
    <form action="{:ff_url('user/save')}" method="post" class="form-user-save">
      <div class="form-group">
        <label>昵称</label>
        <input type="text" name="user_name" value="{$user_name}" class="form-control">
      </div>
      <div class="form-group">
        <label>邮箱</label>
        <input type="email" name="user_email" value="{$user_email}" class="form-control">
      </div>
      <button type="submit" class="btn btn-primary">保存</button>
    </form>
</section>
<include file="User:footer" />