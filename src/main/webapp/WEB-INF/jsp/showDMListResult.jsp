
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>DM一覧表示</title>
    <!-- Latest compiled and minified CSS -->
    <meta name="viewport" content="width=device-width,height=device-height">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
</head>
<body>
    <%-- ヘッダー部分のHTMLを読み込み --%>
    <div class="header">
        <jsp:include page="/WEB-INF/jsp/header.jsp"/>
    </div>
    <div class="container">
        <input type="hidden" name="userId" value="${sessionScope.loginUser.id}">
        <div class="row">
            <table class="table table-striped">
               <thead>
                   <tr>
					   <th>ユーザ名</th>
                       <th>最新内容</th>
                       <th>最新投稿日時</th>
                       <!-- <th class="deletable"></th> -->
                   </tr>
               </thead>
               <tbody>

                    <c:forEach var="dm" items="${result}">

						<tr onclick="location.href='/TeraNavi/front/dmreceive?sendUserId=${dm.fromUserId}'">
							<td>${dm.fromUserName}</td>
							<td>${dm.messageBody}</td>
							<td>${dm.date}</td>
						</tr>

                    </c:forEach>

               </tbody>
           </table>
       </div><!--end row-->
    </div><!--end container-->
    <jsp:include page="/WEB-INF/jsp/footer.jsp"/>




</body>
</html>
