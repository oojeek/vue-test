<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/8/14
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="${pageContext.request.contextPath}/WEB-INF/pages/template/include.jsp"/>

    <script>
        $(function () {
            new Vue({
                el: "#app",
                data: {
                    rows : []
                },
                created: function () {
                    var that = this;
                    $.post("${pageContext.request.contextPath}/hello.do", "",
                    function (data) {
                        that.rows = data;
                    })
                }
            });
        });
    </script>
</head>
<body>
    <h1>Hello world!</h1>
    <div id = "app">
        <table class="table">
            <thead>
                <tr>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>地址</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="row in rows">
                    <td>{{row.name}}</td>
                    <td>{{row.age}}</td>
                    <td>{{row.address}}</td>
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
