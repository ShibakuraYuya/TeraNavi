<%@ page
   contentType="text/html ; charset=UTF-8"
   pageEncoding="UTF-8"
   import="ttc.bean.ArticleBean"
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>DM一覧表示</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <!-- <script type="text/javascript">
        var userId = '<%=request.getAttribute("result") %>';
        console.log(userId);
    </script> -->
</head>
<body>
    <%-- ヘッダー部分のHTMLを読み込み --%>
    <jsp:include page="/WEB-INF/jsp/header.jsp"/>

    <div class="container">
       <div class="row">

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>内容</th>
                    <th>受信日時</th>
                    <th>送信元</th>
                    <th>
                        返信
                    </th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dm" items="${result}">
                <tr>
                    <td> <c:out value="${dm.messageBody}"/> </td>
                    <td> <c:out value="${dm.date}" /> </td>
                    <td> <c:out value="${dm.fromUserName}"/> </td>
                    <td><input type="hidden" name="receiveUserId" value="${dm.fromUserId}" form="sendDM"></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
       </div><!--end row-->
       <div class="row">
           <div class="col-md-12">
               <form id="sendDM" action="dmsend" method="post">
                   &nbsp;&nbsp;本文:<input type="text" name="messageBody"><br>
                   <input type="submit" value="送信"><br><br>
               </form>
           </div>
       </div>
    </div><!--end container-->
    <jsp:include page="/WEB-INF/jsp/footer.jsp"/>
</body>
</html>
