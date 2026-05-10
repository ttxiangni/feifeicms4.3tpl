<article class="comment-item" data-comment-id="{$comment.forum_id}" data-comment-user="{$comment.user_name}">
    <div class="comment-top">
        <div class="comment-avatar">{$comment.user_name}</div>
        <div class="comment-main">
            <div class="comment-meta">
                <div>
                    <strong class="comment-name">{$comment.user_name}</strong>
                    <time>{$comment.time}</time>
                </div>
                <div class="comment-actions">
                    <button type="button" class="reply-button" data-comment-id="{$comment.forum_id}" data-comment-user="{$comment.user_name}">回复</button>
                    <button type="button" class="like-button" data-comment-id="{$comment.forum_id}">赞<span class="like-count">0</span></button>
                    <button type="button" class="dislike-button" data-comment-id="{$comment.forum_id}">踩<span class="dislike-count">0</span></button>
                </div>
            </div>
            <div class="comment-content">
                <p>{$comment.content}</p>
            </div>
        </div>
    </div>
    <if condition="$comment.replies">
    <div class="comment-replies-wrapper">
        <button type="button" class="toggle-replies">展开回复</button>
        <div class="reply-list">
            <volist name="comment.replies" id="reply">
                <div class="reply-item">
                    <div class="reply-meta">
                        <span class="reply-avatar">{$reply.user_name}</span>
                        <div>
                            <strong>{$reply.user_name}</strong>
                            <span class="reply-label">回复</span>
                            <span class="reply-time">{$reply.time}</span>
                        </div>
                    </div>
                    <p>{$reply.content}</p>
                </div>
            </volist>
        </div>
    </div>
    </if>
</article>