<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Student Enrollment Form</title>
    <link type="text/css" rel="stylesheet" href="./css/form.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .form-group {
        	width: 50%;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }

        label {
        	width: 100%;
            flex: 1;
            margin-right: 10px;
            font-weight: normal;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="file"], textarea, select {
            flex: 2;
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
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
        
        #sidebar {
            position: absolute;
            left: 20px;
            top: 20px;
        }

        #sidebar button {
            display: block;
            width: 80px;
            margin-bottom: 10px;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #sidebar button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
     <div class="container">
        <h1>Home</h1>
        <div class="panel">
            <div class="content">
                <!-- This is where the content for each action would be displayed -->
                <s:form action="adminEnroll" method="post">
                
                	<s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID" value="%{student.cardId}"/>
           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield name="studentName" label="Student Name" />
            		</s:div>
            		
            		
	
		            <s:div class="form-group">
		                <s:textfield name="studentRollNo" label="Roll No"/>
		            </s:div>
		           
       			    <s:div class="form-group">
            		    <s:select name="studentType" label="Student Type to Insert" list="data[11].getDataMap()" 
            		    			listKey="key" listValue="value"  value="data[11].getIdByValue(student.type)"/>
           			</s:div>
           			
		            <s:div class="form-group">
		                <s:select name="studentMajor" list="data[3].getDataMap()" label="Major" value="data[3].getIdByValue(student.major)"
		                		listKey="key" listValue="value"  />
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentCurrentYear" list="#{'1':'1st Year', '2':'2nd Year', '3':'3rd Year', '4':'4th Year', '5':'5th Year', '6':'Final Year' }" label="Current Year"
            		    		 value="%{student.currentYear}"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="studentAcademicYear" list="data[1].getDataMap()" label="Academic Year" value="data[1].getIdByValue(student.academicYear)"
        		        		listKey="key" listValue="value" />
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
		                <s:select label= "NRC" name="studentNrcStateNumber" list="data[7].getDataMap()" value="data[7].getIdByValue(student.nrc.stateNumber)"
        		        		listKey="key" listValue="value" />
        		        <s:select name="studentNrcTownship" list="data[6].getDataMap()" value="data[6].getIdByValue(student.nrc.township)"
        		        		listKey="key" listValue="value" />
        		        <s:select name="studentNrcNationality" list="data[13].getDataMap()" value="data[13].getIdByValue(student.nrc.nationality)"
        		        		listKey="key" listValue="value"  />
		                <s:textfield name="studentNrcNumber" value="%{student.nrc.number}"></s:textfield>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:select name="studentState" list="data[10].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		 label="State" value="%{student.state}"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:select name="studentTownship" list="data[12].getDataMap()" value="data[12].getIdByValue(student.township)"
        		        		listKey="key" listValue="value" 
        		        		 label="Township"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textarea name="studentAddress" label="Address" value="%{student.address}"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="studentGender" label="Gender" list="#{'1':'Male', '2':'Female' }" value="data[2].getIdByValue(student.gender)"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="studentPhoneNumber" label="Phone Number" value="%{student.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="studentEmail" label="Email" value="%{student.email}"/>
		            </s:div>

        		    <s:div class="form-group">
        		    	<s:select name="studentDateOfBirthYear" list="data[16].getDataMap()" label="Date of Birth" value="data[16]..getIdByValue(student.dateOfBirth.year)"
        		        		listKey="key" listValue="value"   />
            		    <s:select name="studentDateOfBirthMonth" list="data[15].getDataMap()" value="data[15].getIdByValue(student.dateOfBirth.month)"
        		        		listKey="key" listValue="value"   />
         		       	<s:select name="studentDateOfBirthDay" list="data[14].getDataMap()" value="data[14].getIdByValue(student.dateOfBirth.day)"
        		        		listKey="key" listValue="value"   />
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentReligion" label="Religion" list="data[9].getDataMap()" value="data[9].getIdByValue(student.religion)"
        		        		listKey="key" listValue="value"  />
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentNationality" label="Nationality" list="data[5].getDataMap()" value="data[5].getIdByValue(student.nationality)"
        		        		listKey="key" listValue="value"  />
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name" value="%{student.guardian.name}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianType" label="Relative Type" list="data[8].getDataMap()" value="data[8].getIdByValue(student.guardian.type)"
        		        		listKey="key" listValue="value"  />
		            </s:div>
		
		            <s:div class="form-group">
           			    <s:textfield name="guardianPhoneNumber" label="Phone Number" value="%{student.guardian.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="guardianEmail" label="Email" value="%{student.guardian.email}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select label= "NRC" name="guardianNrcStateNumber" list="data[7].getDataMap()" value="data[7].getIdByValue(student.guardian.nrc.stateNumber)"
        		        		listKey="key" listValue="value"  />
		                <s:select name="guardianNrcTownship" list="data[6].getDataMap()" value="data[6].getIdByValue(student.guardian.nrc.township)"
        		        		listKey="key" listValue="value" />
		                <s:select name="guardianNrcNationality" list="data[13].getDataMap()" value="data[13].getIdByValue(student.guardian.nrc.nationality)"
        		        		listKey="key" listValue="value" />
		                <s:textfield name="guardianNrcNumber" value="%{student.guardian.nrc.number}"></s:textfield>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianState" label="State" list="data[10].getDataMap()" value="data[10].getIdByValue(student.guardian.state)"
        		        		listKey="key" listValue="value" 
        		        		 />
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianTownship" label="Township" list="data[12].getDataMap()" value="data[12].getIdByValue(student.guardian.township)"
        		        		listKey="key" listValue="value" 
        		        		/>
		            </s:div>
		            
		
		            <s:div class="form-group">
		                <s:textarea name="guardianAddress" label="Address" value="%{student.guardian.address}"/>
		            </s:div>
		            
		             <s:div class="form-group">
            		    <s:select name="guardianDateOfBirthYear" list="data[16].getDataMap()" label="Date of Birth" value="data[16].getIdByValue(student.guardian.dateOfBirth.year)"
        		        		listKey="key" listValue="value"  />
            		    <s:select name="guardianDateOfBirthMonth" list="data[15].getDataMap()" value="data[15].getIdByValue(student.guardian.dateOfBirth.month)"
        		        		listKey="key" listValue="value"   />
         		     	<s:select name="guardianDateOfBirthDay" list="data[14].getDataMap()" value="data[14].getIdByValue(student.guardian.dateOfBirth.day)"
        		        		listKey="key" listValue="value"  />  	
         		   	</s:div>
         		   	
         		   	<s:div class="form-group">
		                <s:select name="guardianReligion" label="Religion" list="data[9].getDataMap()" value="data[9].getIdByValue(student.guardian.religion)"
        		        		listKey="key" listValue="value"  />
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianNationality" label="Nationality" list="data[5].getDataMap()" value="data[5].getIdByValue(student.guardian.nationality)"
        		        		listKey="key" listValue="value"  />
		            </s:div>
		
		            <tr class="section-title"><td colspan="2">Academic Record</td></tr>
		
					<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Academic Year</td>
		           			<td style="text-align:center">Roll No</td>
		           		</tr>
		          		<s:iterator value="%{student.academicRecords}">
		          			<tr>
		          				<td><s:property value="academicRecord.academicYear"/>
		          				<td><s:property value="academicRecord.rollNo"/>
		          			</tr>
		          		</s:iterator>
		           	</table>
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Matriculation Record</td></tr>
		           	
		           	
		           	 <s:div class="form-group">
		                <s:textfield name="matriculationPlace" label="Matriculation Place" value="%{student.matriculation.place}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationRollNo" label="Matriculation Roll No" value="%{student.matriculation.rollNo}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationYear" label="Matriculation Year" value="%{student.matriculation.year}"/>
		            </s:div>
		            </table><br>
		        
		           	<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield name="matriculationSubject1" label="Myanmar" value="%{student.matriculation.subjects[0].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject2" label="English" value="%{student.matriculation.subjects[1].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject3" label="Mathematics" value="%{student.matriculation.subjects[2].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject4" label="Physics" value="%{student.matriculation.subjects[3].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject5" label="Chemistry" value="%{student.matriculation.subjects[4].mark}"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="subject6"  >
		          					<option value="0"></option>
		          					<option value="6" ${student.matriculation.subjects[5].id == '6' ? 'selected="selected"' : ''}>Biology</option>
		          					<option value="7" ${student.matriculation.subjects[5].id == '7' ? 'selected="selected"' : ''}>Economics</option>
		          					<option value="8" ${student.matriculation.subjects[5].id == '8' ? 'selected="selected"' : ''}>History</option>
		          					<option value="9" ${student.matriculation.subjects[5].id == '9' ? 'selected="selected"' : ''}>Geography</option>
		          				</select>
		          			</td>
		          			<td>
		          				<input type="text" name="matriculationSubject6" value="${student.matriculation.subjects[5].mark}">
		          			</td>
		          		</tr>
		           	</table>		    
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Document</td></tr>
		           		<s:div class="form-group">
		           			<s:file name="photo" label="Your photo"></s:file>
		           		</s:div>
		           	</table>
		           		
		                
		            <s:submit id="submit-btn" value="Submit"></s:submit>
		        </s:form>
  
            </div>
        </div>
    </div>
    
</body>
</html>

