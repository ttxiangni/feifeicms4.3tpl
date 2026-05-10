    <link rel="stylesheet" href="{$public_path}static/css/style.css">
    <script src="{$public_path}static/js/main.js" defer></script>
</head>
<body>
    <header class="site-header">
        <div class="container header-inner">
            <div class="site-brand">
                <a href="{:U('Home/index')}">{$site_name}</a>
            </div>
            <nav class="site-nav">
                <ul>
                    <li><a href="{:U('Home/index')}">首页</a></li>
                    <li><a href="{:U('List/index', array('id'=>$vod_type_id))}">电影</a></li>
                    <li><a href="{:U('List/index', array('id'=>$tv_type_id))}">电视剧</a></li>
                    <li><a href="{:U('List/index', array('id'=>$variety_type_id))}">综艺</a></li>
                    <li><a href="{:U('List/index', array('id'=>$anime_type_id))}">动漫</a></li>
                </ul>
            </nav>
            <div class="site-actions">
                <form class="search-form" action="{:U('Vod/search')}" method="get">
                    <input type="text" name="wd" placeholder="搜索影片、演员、类型">
                    <button type="submit">搜索</button>
                </form>
                <div class="account-links">
                    <if condition="$user_id">
                        <a href="{:U('User/center')}">个人中心</a>
                        <a href="{:U('User/logout')}">退出</a>
                    <else/>
                        <a href="{:U('User/login')}">登录</a>
                        <a href="{:U('User/register')}">注册</a>
                    </if>
                </div>
            </div>
        </div>
    </header>