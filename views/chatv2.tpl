<!doctype html>
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>简陋聊天室</title>

    <!-- Set render engine for 360 browser -->
    <meta name="renderer" content="webkit">

    <!-- No Baidu Siteapp-->
    <meta http-equiv="Cache-Control" content="no-siteapp"/>

    <link rel="icon" type="image/png" href="i/favicon.png">

    <!-- Amaze UI CSS -->
    <link rel="stylesheet" href="//cdn.amazeui.org/amazeui/2.1.0/css/amazeui.min.css">
	<link href="https://cdn.bootcss.com/mui/3.7.1/css/mui.min.css" rel="stylesheet">
    <script src="https://cdn.bootcss.com/mui/3.7.1/js/mui.min.js"></script>
    <script type="text/javascript" charset="utf-8">
      	mui.init();
      	mui('.mui-scroll-wrapper').scroll({
			deceleration: 0.0010 //flick 减速系数，系数越大，滚动速度越慢，滚动距离越小，默认值0.0006
		});
    </script>
</head>
<body>
	<div class="am-panel am-u-sm-12 am-u-sm-centered am-u-lg-8">
		<div class="mui-card">
			<div class="mui-card-header">
			  	<li class="am-dropdown" data-am-dropdown><a>简陋聊天室->菜鸡瞎搞的,聊天记录不会滚动</a></li>
			          <li class="am-active"><a>我是辣鸡</a></li>
			        </ul>
			    </li>
			</div>
			<div class="mui-card-content-inner" >
				<div class="am-vertical-align" >
					<div id="log" class="am-scrollable-vertical" style="height: 320px;">
					</div>
					<div class="am-vertical-align-bottom am-u-sm-12 am-u-sm-centered am-u-lg-12">
						<div class="mui-card">
                            <form class="mui-input-group" id="form">
                                <div class="am-input-group">
                                  <input type="text" class="am-form-field" id="msg">
                                  <span class="am-input-group-btn">
                                  <button type="button" id="sendButton" class="mui-btn mui-btn-warning mui-btn-outlined" >发送</button>
                                 </span>
                                </div>
                            </form>
                        </div>
					</div>
				</div>
			</div>
		</div>
		<!--[if lt IE 9]>
		<script src="//cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
		<script src="//cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
		<script src="/js/polyfill/rem.min.js"></script>
		<script src="//cdn.bootcss.com/respond.js/1.4.2/respond.js"></script>
		<script src="//cdn.amazeui.org/amazeui/2.1.0/js/amazeui.legacy.min.js"></script>
		<![endif]-->
		<!--[if (gte IE 9)|!(IE)]><!-->
		<script src="//cdn.bootcss.com/jquery/3.3.1/jquery.min.js"></script>
		<script src="//cdn.amazeui.org/amazeui/2.1.0/js/amazeui.min.js"></script>
		<!--<![endif]-->
		<script src="/static/js/chat.js"></script>
	</div>
</body>
</html>