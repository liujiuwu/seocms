<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>{{.PageTitle}}</title>
<meta name="keywords" content="{{.PageKeywords}}" />
<meta name="description" content="{{.PageDescription}}" />
<link href="/rss/" rel="alternate" title="文章订阅" type="application/rss+xml" />
<link rel="stylesheet" href="/static/css/bootstrap.min.css" />
<script src="/static/js/jquery-2.0.3.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/static/css/global.css" />
<script src="/static/js/global.js"></script>
</head>
<body>
<div class="container">
    <div class="header">
        <div class="navbar">
            <div class="navbar-inner">
                <a class="brand" href="/">{{.SiteName}}</a>
                <ul class="nav">
                    <li class="index"><a href="/">首页</a></li>
                    {{range .Categories}}
                    <li class="{{.NameEn}}"><a href="/{{.NameEn}}/">{{.Name}}</a></li>
                    {{end}}
                </ul>
            </div><!-- End .navbar-inner -->
        </div><!-- End .navbar -->
    </div><!-- End .header -->
    <div class="content">
        <div class="main">
            {{.LayoutContent}}
        </div><!-- End .main -->
    </div><!-- End .content -->
    <div class="footer">
        {{template "footer.tpl"}}
    </div><!-- End .footer -->
</div><!-- End .container -->
</body>
</html>
