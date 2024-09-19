<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Filtered Page</title>
    <link type="text/css" rel="stylesheet" href="./css/baseTemplate.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-group {
        	width: 80%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
            margin-left: auto; margin-right: auto
         }
        
        .form-group td {
        	padding-top: 10px;
        	padding-bottom: 10px;
        }

        label {
        	width: 100%;
            flex: 1;
            line-height: 2;
            margin-right: 10px;
            font-weight: normal;
        }

        input[type="text"], input[type="email"], input[type="date"], select {
            flex: 2;
            width: 100%;
            padding: 8px;
           
        }
        
        input[type="text"] {
        	background-color: rgba(128, 128, 128, 0.3);
        	opacity: 1;
        	color: black;
        }

        input[type="radio"] {
            margin-right: 10px;
        }
        
        select:disabled {
        	background-color: white;
        	opacity: 1;
        	color: black;
        }

        .gender-options {
            display: flex;
            align-items: center;
        }

        .gender-options label {
            font-weight: bold;
            margin-right: 20px;
        }

        #submit-btn {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        #submit-btn:hover {
            background-color: #45a049;
        }
        
        .section-title {
        	font-weight: bold;
        	font-size: 25px;
            height: 50px;
            margin-top: 20px;
            margin-bottom: 5px;
            color: #333;
        }
        
        .section-title td {
        	vertical-align: bottom;
        	padding-bottom: 5px;
        }
    </style>
</head>
<body>
     <div class="container">
        <div class="panel">
            <div class="content" style="width: 400px; margin-left: auto; margin-right: auto">
            	<s:form>
                <!-- This is where the content for each action would be displayed -->
                	<s:set value="student.dateOfBirth" var="studentDate"/>
                	<s:set value="student.guardian" var="guardian"/>
                	<s:set value="student.nrc" var="studentNrc"/>     
                	<s:set value="#guardian.nrc" var="guardianNrc"/>        
                	<s:set value="#guardian.dateOfBirth" var="guardianDate"/>   	

					<tr class="section-title"><td  colspan="2">Academic Information</tr>
					<s:hidden name="order" value="%{order}"/>
    		        <s:div class="form-group">
        		        <s:textfield readonly="true" name="studentName" label="Student Name" value="%{student.name}"/>
            		</s:div>
	
					<s:div class="form-group">
            		    <s:textfield readonly="true" name="studentCardId" label="Student Card ID" value="%{student.cardId}"/>
           			</s:div>
           			
           			<s:hidden name="studentType" value="%{student.type}"></s:hidden>
           			
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentRollNo" label="Roll No" value="%{student.rollNo}"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentMajor" label="Major" value="%{student.major}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield readonly="true" name="studentCurrentYear" label="Current Year" value="%{student.currentYear}" />
      				</s:div>

        		    <s:div class="form-group">
        		        <s:textfield readonly="true" name="studentAcademicYear" label="Academic Year" value="%{student.academicYear}"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
		            <s:div class="form-group">
		                <s:textfield readonly="true" label= "NRC" name="nrc" value="%{#studentNrc.stateNumber + '/' 
		                											+ #studentNrc.township 
		           													+ #studentNrc.nationality 
		           													+ #studentNrc.number}"/>
		                <s:hidden name="studentrcStateNumber" value="%{#studentNrc.stateNumber}"></s:hidden>
		                <s:hidden name="studentNrcTownship" value="%{#studentNrc.township}"></s:hidden>
		                <s:hidden name="studentNrcNationality" value="%{#studentNrc.nationality}"></s:hidden>
		                <s:hidden name="studentNrcNumber" value="%{#studentNrc.number}"></s:hidden>
		            </s:div>

     		       	<s:div class="form-group">
     		           	<s:textfield readonly="true" name="studentState" label="State" value="%{student.state}"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:textfield readonly="true" name="studentTownship" label="Township" value="%{student.township}"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textfield readonly="true" name="studentAddress" label="Address" value="%{student.address}"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:textfield readonly="true" name="studentGender" label="Gender" value="%{student.gender}"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield readonly="true" name="studentPhoneNumber" label="Phone Number" value="%{student.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield readonly="true" name="studentEmail" label="Email" value="%{student.email}"/>
		            </s:div>

					<!--  year error -->
        		    <s:div class="form-group">
            		    <s:textfield readonly="true" name="studentDateOfBirth" label="Date of Birth" value="%{student.dateOfBirth}"/>												
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentReligion" label="Religion" value="%{student.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentNationality" label="Nationality" value="%{student.nationality}"/>
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianName" label="Guardian Name" value="%{#guardian.name}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianType" label="Relative Type" value="%{#guardian.type}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" label= "Guardian NRC" name="guardianNrc" value="%{#guardianNrc.stateNumber + '/' 
		                																		+ #guardianNrc.township 
		                																		+ #guardianNrc.nationality
		                																		+ #guardianNrc.number}"/>
		                <s:hidden name="guardianNrcStateNumber" value="%{#guardianNrc.stateNumber}"></s:hidden>
		                <s:hidden name="guardianNrcTownship" value="%{#guardianNrc.township}"></s:hidden>
		                <s:hidden name="guardianNrcNationality" value="%{#guardianNrc.nationality}"></s:hidden>
		                <s:hidden name="guardianNrcNumber" value="%{#guardianNrc.number}"></s:hidden>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianState" label="Guardian State" value="%{#guardian.state}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianTownship" label="Guardian Township" value="%{#guardian.township}"/>
		            </s:div> 
		
		            <s:div class="form-group">
		                <s:textfield readonly="true"  name="guardianAddress" label="Guardian Address" value="%{#guardian.address}"/>
		            </s:div>
		
					<s:div class="form-group">
           			    <s:textfield readonly="true" name="guardianPhoneNumber" label="Phone Number" value="%{#guardian.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield readonly="true" name="guardianEmail" label="Email" value="%{#guardian.email}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield readonly="true" name="guardianDate" label="Date of Birth" value="%{#guardianDate}"/>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianReligion" label="Religion" value="%{#guardian.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianNationality" label="Nationality" value="%{#guardian.nationality}"/>
		            </s:div>
		            
		            <table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Academic Year</td>
		           			<td style="text-align:center">Roll No</td>
		           		</tr>
		          		<s:iterator value="%{student.academicRecords}">
		          			<tr style="text-align: center;">
		          				<td><s:property value="%{academicYear}"/>
		          				<td><s:property value="%{rollNo}"/>
		          			</tr>
		          		</s:iterator>
		           	</table>
		            
		            <table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield readonly="true"  name="matriculationSubject1" label="Myanmar" value="%{student.matriculation.subjects[0].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject2" label="English" value="%{student.matriculation.subjects[1].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject3" label="Mathematics" value="%{student.matriculation.subjects[2].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject4" label="Physics" value="%{student.matriculation.subjects[3].mark}"></s:textfield>
		          		<s:textfield readonly="true"  name="matriculationSubject5" label="Chemistry" value="%{student.matriculation.subjects[4].mark}"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="subject6" disabled="disabled">
		          					<option value="0"></option>
		          					<option value="6" ${student.matriculation.subjects[5].id == '6' ? 'selected="selected"' : ''}>Biology</option>
		          					<option value="7" ${student.matriculation.subjects[5].id == '7' ? 'selected="selected"' : ''}>Economics</option>
		          					<option value="8" ${student.matriculation.subjects[5].id == '8' ? 'selected="selected"' : ''}>History</option>
		          					<option value="9" ${student.matriculation.subjects[5].id == '9' ? 'selected="selected"' : ''}>Geography</option>
		          				</select>
		          				<s:hidden name="subject6" value="%{student.matriculation.subjects[5].id}"></s:hidden>
		          			</td>
		          			<td>
		          				<input readonly="readonly" type="text" name="matriculationSubject6" value="${student.matriculation.subjects[5].mark}">
		          			</td>
		          		</tr>
		           	</table>	
		         </s:form>       
            </div>
        </div>
    </div>
    
</body>
</html>

