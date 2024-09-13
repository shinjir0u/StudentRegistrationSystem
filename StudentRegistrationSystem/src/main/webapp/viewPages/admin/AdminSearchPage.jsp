<%@ taglib prefix="s" uri="/struts-tags" %>   
        	<h1>Enter fields you want to search</h1>
        	<div class="container">
        	<div class="border">
        	<s:form action="filter" method="post">
            	<s:textfield name="stuCardId" label="Student Card ID"/> 
           		<s:textfield name="stuName" label="Student Name"/>
           		<s:select label="Select your major"
					list="majorList"
					name="yourMajor"
					value="Textile Engineering"
					/>

           		<s:select list="stuTypeList"  name="yourStuType" label="Student Type"/>
           		<s:select list="academicYearList"  name="yourAcademicYear" label="Academic Year"/> 
                <s:select name="state" list="{'Yangon', 'Ayeyarwaddy', 'Bago'}" label="State"/>  
            	<s:select name="township"
                                  list="{'Sanchaung', 'Hledan', 'Myaynigone'}"
                                  label="Township"/> 
                <s:submit value="Filter result" id="btn"/>
             </s:form>
        	</div>
        	</div>
        	