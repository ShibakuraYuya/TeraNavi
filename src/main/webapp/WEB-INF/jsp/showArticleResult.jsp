<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>${result.title}</title>

    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">

 </head>
 <body>
     <%-- ヘッダー部分のHTMLを読み込み --%>
     <jsp:include page="/WEB-INF/jsp/header.jsp"/>

    <header>
      <img src="https://unsplash.imgix.net/photo-1420708392410-3c593b80d416?w=1024&amp;q=50&amp;fm=jpg&amp;s=db450320d7ee6de66c24c9b0bf2de3c6" id="headimg" width="100%" height="40%">
    </header>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <h1 class="text-center">${result.title}</h1>
            <p class="text-left">${result.createdDate}</p>
            <br>
            <br>
            <p class="text-left">${result.articleBody}</p>
          </div>
          <div class="col-md-2">
            <h3 class="text-center text-warning">月別アーカイブ</h3>
            <h4>2016</h4>
            <a href="#"><p class="text-center">2月(2)</p></a>
            <a href="#"><p class="text-center">1月(4)</p></a>
            <h4>2015</h4>
            <a href="#"><p class="text-center">12月(5)</p></a>
            <a href="#"><p class="text-center">11月(1)</p></a>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <ul class="pager">
              <li class="previous">
                <a href="#" style="font-weight:bold">＜前の記事へ</a>
              </li>
              <li>
                <a href="#" style="font-weight:bold">ブログTOPへ</a>
              </li>
              <li class="next">
                <a href="#" style="font-weight:bold">次の記事へ＞</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <h2>
              <a class="label label-warning">タグ名</a>
              <a class="label label-warning">タグ名</a>
            </h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <i class="fa fa-3x fa-comment-o fa-fw text-muted " style="margin-right:20%;">2</i>
            <i class="-o fa fa-3x fa-fw fa-twitter text-primary" style="color:#55ACEE; margin-right:5%;"></i>
            <i class="-o fa fa-3x fa-facebook-square fa-fw" style="color:#3b5998; margin-right:10%;"></i>
            <a href="#" class="dropdown pull-right dropdown-toggle" data-toggle="dropdown">
            	<i class="-o -square fa fa-3x fa-ellipsis-h fa-fw text-muted"></i>
            </a>
            <ul class="dropdown-menu dropdown-menu-right">
              <li>
                <a href="#">この記事を通報する</a>
              </li>
              <li>
                <a href="#">この記事を書いたユーザを通報する</a>
              </li>
            </ul>
          </div>
        </div>
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <hr>
            <hr>
          </div>
        </div>
        <div class="row">
          <div class="col-md-1 col-md-offset-2">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png" class="img-responsive">
          </div>
          <div class="col-md-7">
            <form class="form-horizontal" role="form">
              <div class="form-group">
                <textarea class="form-control" id="inputEmail3" placeholder="コメントを書く"></textarea>
              </div>
              <div class="form-group">
                <button type="submit" class="btn btn-default pull-right">投稿</button>
              </div>
            </form>
          </div>
          <div class="row">
            <div class="col-md-8 col-md-offset-2">
              <hr>
            </div>
          </div>
          <div class="row">
            <div class="col-md-1 col-md-offset-2">
              <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png" class="img-responsive">
              <a href="#"><p class="text-center">ユーザ名</p></a>
            </div>
            <div class="col-md-7">
              <p>2016年02月12日 04:52</p>
              <p>コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文 コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文
                コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文コメントの本文</p>
              <a href="#" class="dropdown pull-right dropdown-toggle" data-toggle="dropdown">
            	<i class="-o -square fa fa-ellipsis-h fa-fw fa-lg text-muted"></i>
            </a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li>
                  <a href="#">このコメントを通報する</a>
                </li>
                <li>
                  <a href="#">このユーザを通報する</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--警告する関連 -->
        <p class="bun"><button id="dd">警告する</button></p>
        <form action="caution" method="post">
            <input type="hidden" name="userId" value="${sessionScope.loginUser.id}">
            <input type="hidden" name="cautionUserId" value="${result.userId}">
            <p id="cauTile"></p>
            <p id="cauBody"></p>
            <p id="sub"></p>
        </form>

    <jsp:include page="/WEB-INF/jsp/footer.jsp"/>

    <script>
        $("#dd").click(function(){
            $('.bun').remove();
            $('#cauTile').html('警告名：<input type="text" name="cautionTitle">');
            $('#cauBody').html('警告する内容：<input type="text" name="cautionBody" >');
            $('#cauBody').append('<input type="hidden" name="url" value="location.href">');
            $('#sub').html('<input type="submit" value="この記事を警告">');
        });

    </script>

</body>
</html>
