<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>

<head>
<title>
<tiles:insertAttribute name="title" ignore="true"/></title>

<tiles:importAttribute name="masterCss"/>

 <link rel="stylesheet" type="text/css" 
 href="<%= request.getContextPath() %>/${masterCss}"/>
</head>

<body>
    	<ul>
			<li><tiles:insertAttribute name="header"/><br><br></li>
			<li><tiles:insertAttribute name="body" /></li>
			<li><tiles:insertAttribute name="footer" /></li>
    	</ul>
</body>
</html>
