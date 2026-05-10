<form action="{:U('Forum/add')}" method="post" class="comment-form" id="comment-form">
    <div class="replying-to" id="replying-to" style="display:none;">
        回复：<span id="reply-target-name"></span>
        <button type="button" class="reply-cancel" id="reply-cancel">取消</button>
    </div>
    <input type="hidden" name="forum_pid" id="comment-pid" value="0">
    <input type="hidden" name="forum_reply_name" id="comment-reply-name" value="">
    <textarea id="comment-content" name="content" placeholder="写下你的评论..." required></textarea>
    <button type="submit">发表评论</button>
</form>