<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Check Page</title>
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
        <h1>Home</h1>
        <div class="panel">
            <div class="content">
                <!-- This is where the content for each action would be displayed -->
                <s:form action="updateStudent" method="post">
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
           			
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentRollNo" label="Roll No" value="%{student.rollNo}"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:textfield readonly="true" name="studentMajor" label="Major" value="%{student.major}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield readonly="true" name="studentCurrentYear" label="Current Year" value="%{data[17].getValueById(student.currentYear)}" />
      				</s:div>

        		    <s:div class="form-group">
        		        <s:textfield readonly="true" name="studentAcademicYear" label="Academic Year" value="%{data[1].getValueById(student.academicYear)}"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
		            <s:div class="form-group">
		                <s:textfield readonly="true" label= "NRC" name="nrc" value="%{#studentNrc.stateNumber + '/' 
		                											+ #studentNrc.township 
		           													+ '(' + #studentNrc.nationality + ')' 
		           													+ #studentNrc.number}"/>
		                <s:hidden name="studentrcStateNumber" value="%{#studentNrc.stateNumber}"></s:hidden>
		                <s:hidden name="studentNrcTownship" value="%{#studentNrc.township}"></s:hidden>
		                <s:hidden name="studentNrcNationality" value="%{#studentNrc.nationality}"></s:hidden>
		                <s:hidden name="studentNrcNumber" value="%{#studentNrc.number}"></s:hidden>
		            </s:div>

     		       	<s:div class="form-group">
     		           	<s:textfield readonly="true" name="studentState" label="State" value="%{data[10].getValueById(student.state)}"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:textfield readonly="true" name="studentTownship" label="Township" value="%{data[12].getValueById(student.township)}"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textfield readonly="true" name="studentAddress" label="Address" value="%{student.address}"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:textfield readonly="true" name="studentGender" label="Gender" value="%{data[2].getValueById(student.gender)}"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield readonly="true" name="studentPhoneNumber" label="Phone Number" value="%{student.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield readonly="true" name="studentEmail" label="Email" value="%{student.email}"/>
		            </s:div>

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
		                <s:textfield readonly="true" name="guardianType" label="Relative Type" value="%{data[8].getValueById(#guardian.type)}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" label= "Guardian NRC" name="guardianNrc" value="%{data[7].getValueById(#guardianNrc.stateNumber) + '/' 
		                																		+ data[6].getValueById(#guardianNrc.township) 
		                																		+ '(' + data[13].getValueById(#guardianNrc.nationality) + ')' 
		                																		+ #guardianNrc.number}"/>
		                <s:hidden name="guardianNrcStateNumber" value="%{data[7].getValueById(#guardianNrc.stateNumber)}"></s:hidden>
		                <s:hidden name="guardianNrcTownship" value="%{data[6].getValueById(#guardianNrc.township)}"></s:hidden>
		                <s:hidden name="guardianNrcNationality" value="%{data[13].getValueById(#guardianNrc.nationality)}"></s:hidden>
		                <s:hidden name="guardianNrcNumber" value="%{#guardianNrc.number}"></s:hidden>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianState" label="Guardian State" value="%{data[10].getValueById(#guardian.state)}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianTownship" label="Guardian Township" value="%{data[12].getValueById(#guardian.township)}"/>
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
            		    <s:textfield readonly="true" name="guardianDateOfBirth" label="Date of Birth" value="%{#guardian.dateOfBirth}"/>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianReligion" label="Religion" value="%{data[9].getValueById(#guardian.religion)}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield readonly="true" name="guardianNationality" label="Nationality" value="%{data[5].getValueById(#guardian.nationality)}"/>
		            </s:div>
		            
		            <!-- yes, passing actual value is possible and this is total nonsense added just to make the program work xD -->\
		           	 <s:hidden name="subject6" value="11"/>
		           	 <s:hidden name="matriculationYear" value="1"/>
		           	 <s:hidden name="matriculationSubject1" value="1"/>
		           	 <s:hidden name="matriculationSubject2" value="1"/>
		           	 <s:hidden name="matriculationSubject3" value="1"/>
		           	 <s:hidden name="matriculationSubject4" value="1"/>
		           	 <s:hidden name="matriculationSubject5" value="1"/>
		           	 <s:hidden name="matriculationSubject6" value="1"/>
		            <s:submit name="action" value="Reject"></s:submit>
		            <s:submit name="action" id="submit-btn" value="Accept"></s:submit>
		        </s:form>
  
            </div>
        </div>
    </div>
    
</body>
</html>

