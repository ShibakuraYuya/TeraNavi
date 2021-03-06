
<!DOCTYPE html>
<html lang="ja">
<head>

    <meta charset="UTF-8">

    <title>退会</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">

</head>
<body>
    <%-- ヘッダー部分のHTMLを読み込み --%>
    <jsp:include page="/WEB-INF/jsp/header.jsp"/>

    <%-- トップのナビゲーションを読み込み --%>
    <jsp:include page="/WEB-INF/jsp/topnav.jsp"/>

    <div class="section">
        <div class="container">
            <div class="row">


                <!-- 4列をサイドメニューに割り当て -->
                <div class="col-md-2">
                  <ul class="nav nav-pills nav-stacked well">
                    <li>
                      <a href="/TeraNavi/front/mypage">マイページ</a>
                    </li>
                    <li>
                      <a href="/TeraNavi/articlepost">記事を書く</a>
                    </li>
                    <li>
                      <a href="#draftarticle">下書き一覧</a>
                    </li>
                    <li>
                      <a href="#blogsetting">ブログ設定</a>
                    </li>
                    <li>
                      <a href="#communitymanage">コミュニティ管理</a>
                    </li>
                    <li>
                      <a href="#directmessage">DM</a>
                    </li>
                    <br><br><br><br>
                    <li class="active">
                      <a href="#">退会</a>
                    </li>
                  </ul>
                </div>

                <!-- 残り8列はコンテンツ表示部分として使う -->
                <div class="col-md-8">
                        <div class="row">
                          <div class="col-md-12">
                            <h1 class="text-center">退会</h1>
                          </div>
                          <br><br><br><br><br><br>
                        <div class="row">
                          <div class="col-md-12">
                            <h3 class="text-center">注意事項</h3>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <p class="text-center">データ消えるよ。戻らんよ。
                              <br>あなたの情報消えます。ばいばい。</p>
                          </div>
                        </div>
                        <br><br><br>
                        <div class="row">
                          <div class="col-md-12 text-center">
                            <a data-toggle="modal" href="#withdraw-modal" class="btn btn-primary">退会する</a>
                          </div>
                        </div>
                    <div class="fade modal text-center" id="withdraw-modal">
                      <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <br>
                          </div>
                          <div class="modal-body">
                            <p class="text-center">本当に退会しますか？</p>
                            <a class="btn btn-lg btn-primary" href="/TeraNavi/front/withdraw">Yes</a>
                            <a class="btn btn-lg btn-primary" href="/TeraNavi/front/top">No</a>
                          </div>
                          <div class="modal-footer"></div>
                        </div>
                      </div>
                      <!--end moal-content-->
                    </div>
                    <!--end modal-dialog-->
                    <!--end modal-->
                </div>


           </div><!--end row-->
        </div><!--end container-->
    </div><!--end section-->
    <jsp:include page="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>
