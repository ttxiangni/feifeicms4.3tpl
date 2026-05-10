document.addEventListener('DOMContentLoaded', function () {
  var replyButtons = document.querySelectorAll('.reply-button');
  var likeButtons = document.querySelectorAll('.like-button');
  var dislikeButtons = document.querySelectorAll('.dislike-button');
  var toggleButtons = document.querySelectorAll('.toggle-replies');
  var pidInput = document.getElementById('comment-pid');
  var replyNameInput = document.getElementById('comment-reply-name');
  var textarea = document.getElementById('comment-content');
  var replyPanel = document.getElementById('replying-to');
  var replyTargetName = document.getElementById('reply-target-name');
  var cancelBtn = document.getElementById('reply-cancel');

  function resetReply() {
    if (pidInput) pidInput.value = 0;
    if (replyNameInput) replyNameInput.value = '';
    if (replyPanel) replyPanel.style.display = 'none';
    if (textarea && textarea.value.startsWith('@')) {
      textarea.value = textarea.value.replace(/^@[^\s]+\s*/, '');
    }
  }

  replyButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      var commentId = this.dataset.commentId || '0';
      var userName = this.dataset.commentUser || '';
      if (pidInput) pidInput.value = commentId;
      if (replyNameInput) replyNameInput.value = userName;
      if (replyTargetName) replyTargetName.textContent = userName;
      if (replyPanel) replyPanel.style.display = 'flex';
      if (textarea) {
        var prefix = '@' + userName + ' ';
        if (!textarea.value.startsWith(prefix)) {
          textarea.value = prefix + textarea.value.replace(/^@(\S+)\s*/, '');
        }
        textarea.focus();
      }
    });
  });

  if (cancelBtn) {
    cancelBtn.addEventListener('click', resetReply);
  }

  likeButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      var countSpan = this.querySelector('.like-count');
      if (countSpan) {
        countSpan.textContent = parseInt(countSpan.textContent || '0', 10) + 1;
      }
      this.disabled = true;
      this.style.opacity = 0.7;
    });
  });

  dislikeButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      var countSpan = this.querySelector('.dislike-count');
      if (countSpan) {
        countSpan.textContent = parseInt(countSpan.textContent || '0', 10) + 1;
      }
      this.disabled = true;
      this.style.opacity = 0.7;
    });
  });

  toggleButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      var wrapper = this.closest('.comment-replies-wrapper');
      if (!wrapper) return;
      var replyList = wrapper.querySelector('.reply-list');
      if (!replyList) return;
      var open = replyList.style.display === 'grid';
      replyList.style.display = open ? 'none' : 'grid';
      this.textContent = open ? '展开回复' : '收起回复';
    });
  });

  var commentForm = document.getElementById('comment-form');
  if (commentForm) {
    commentForm.addEventListener('submit', function () {
      if (pidInput && pidInput.value === '0') {
        resetReply();
      }
    });
  }
});
