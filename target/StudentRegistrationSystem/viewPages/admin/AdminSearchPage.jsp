<%@ taglib prefix="s" uri="/struts-tags" %>   
<link type="text/css" rel="stylesheet" href="css/buttonStyle.css">  
        	
        	<%-- <table>
        		<form action="filterAction" method="post">
            	<s:textfield name="stuCardId" label="Student Card ID"/> 
           		<s:textfield name="stuName" label="Student Name"/>
           		<s:select list="majorList" name="yourMajor" label="Major"/>
           		<s:select list="stuTypeList"  name="yourStuType" label="Student Type"/>  
           		<s:select list="academicYearList"  name="yourAcademicYear" label="Academic Year"/> 
                <s:select name="state" list="{'Yangon', 'Ayeyarwaddy', 'Bago'}" label="State"/>  
            	<s:select name="township"
                                  list="{'Sanchaung', 'Hledan', 'Myaynigone'}"
                                  label="Township"/> 
                <s:submit value="Filter result" id="filter-button"/>
        	</form>
        	</table> --%>
        	<form action="filterAction" method="post">
            	<s:textfield name="stuCardId" label="Student Card ID"/> 
           		<s:textfield name="stuName" label="Student Name"/>
           		<s:select list="majorList" name="yourMajor" label="Major"/>
           		<s:select list="stuTypeList"  name="yourStuType" label="Student Type"/>  
           		<s:select list="academicYearList"  name="yourAcademicYear" label="Academic Year"/> 
                <s:select name="state" list="{'Yangon', 'Ayeyarwaddy', 'Bago'}" label="State"/>  
            	<s:select name="township"
                                  list="{'Sanchaung', 'Hledan', 'Myaynigone'}"
                                  label="Township"/> 
                <s:submit value="Filter result" id="filter-button"/>
             </form>
        	