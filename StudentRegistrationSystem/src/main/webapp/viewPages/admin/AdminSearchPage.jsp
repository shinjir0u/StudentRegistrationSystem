<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
	<title>Home</title>
	<link rel="stylesheet" href="../../css/form.css">
</head>   
        	<h1>Enter fields you want to search</h1>
        	<div class="container">
        	<div class="border">
        	<s:form action="filter" method="post">
            	<s:textfield name="studentCardId" label="Student Card ID"/> 
           		<s:textfield name="studentName" label="Student Name"/>
           		<s:select label="Select your major"	list="data[3].getDataMap()"
					name="studentMajor"	headerKey="0" headerValue=""	/>
           		<s:select list="data[11].getDataMap()"  name="studentType" label="Student Type"
           						listKey="key" listValue="value" headerKey="0" headerValue="" />
           		<s:select list="data[17].getDataMap()"  name="studentCurrentYear" label="Current Year"
           						listKey="key" listValue="value" headerKey="0" headerValue="" /> 
                <s:select name="studentState" list="data[10].getDataMap()" label="State"
                				listKey="key" listValue="value" headerKey="0" headerValue="" /> 
            	<s:select name="studentTownship" list="data[12].getDataMap()" label="Township"
            					listKey="key" listValue="value" headerKey="0" headerValue="" /> 
                <s:submit value="Filter result" id="btn"/>
             </s:form>
        	</div>
        	</div>
        	