<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Search Results</title>
    <link type="text/css" rel="stylesheet" href="../../css/baseTemplate.css">
</head>
<body>
		<jsp:include page="/viewPages/admin/AdminSearchPage.jsp"/>   
		<div class="content">
        <table border="1">
            <thead>
                <tr>
                    <th>Student Name</th>
                    <th>Major</th>
                    <th>Year</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td><s:a href="AdminSearchResult.jsp">Ni Ni</s:a></td>
                        <td>CEIT</td>
                        <td>Fourth year</td>
                    </tr>
                    <tr>
                        <td><s:a href="AdminSearchResult.jsp">Thun Thun</s:a></td>
                        <td>Electronics</td>
                        <td>Second year</td>
                    </tr>
                    <tr>
                        <td><s:a href="AdminSearchResult.jsp">Lae Lae</s:a></td>
                        <td>Chemical</td>
                        <td>Final year</td>
                    </tr>
            </tbody>
        </table>
        
        <jsp:include page="/viewPages/admin/PagePaginateUI.jsp"/>   
		</div>
</body>
</html>
