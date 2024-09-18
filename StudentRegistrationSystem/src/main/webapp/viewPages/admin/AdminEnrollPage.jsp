<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Enrollment Form</title>
    <link type="text/css" rel="stylesheet" href="./css/form.css">
    <link href='https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/ui-lightness/jquery-ui.css'
          rel='stylesheet'>
          
    <script src=
		"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" >
    </script>

    <script src=
		"https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" >
    </script>
    
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
        <div class="panel">
            <div class="content">
                <!-- This is where the content for each action would be displayed -->
                <s:form action="adminEnroll" method="post">
       			    <s:div class="form-group">
            		    <s:select name="studentType" value="%{student.type}" label="Student Type to Insert" list="data[11].getDataMap()" 
            		    			listKey="key" listValue="value" headerKey="0" headerValue="select student type" required="true"/>
           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield name="studentName" label="Student Name" required="true" value="%{student.name}"/>
            		</s:div>
            		
            		<s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID" required="true" value="%{student.cardId}"/>
           			</s:div>
	
		            <s:div class="form-group">
		                <s:textfield name="studentRollNo" label="Roll No" required="true" value="%{student.rollNo}"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:select name="studentMajor" list="data[3].getDataMap()" label="Major" 
		                		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.major}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentCurrentYear" list="data[17].getDataMap()" label="Current Year"
            		    		headerKey="0" headerValue="" required="true" value="%{student.currentYear}"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="studentAcademicYear" list="data[1].getDataMap()" label="Academic Year"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.academicYear}"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:select label= "NRC" name="studentNrcStateNumber" list="data[7].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.nrc.stateNumber}"/>
        		        <s:select name="studentNrcTownship" list="data[6].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.nrc.township}"/>
        		        <s:select name="studentNrcNationality" list="data[13].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.nrc.nationality}"/>
		                <s:textfield name="studentNrcNumber" value="%{student.nrc.number}"></s:textfield>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:select name="studentState" list="data[10].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" label="State" required="true" value="%{student.state}"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:select name="studentTownship" list="data[12].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" label="Township" required="true" value="%{student.township}"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textarea name="studentAddress" label="Address" required="true" value="%{student.address}"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="studentGender" label="Gender" list="#{'1':'Male', '2':'Female' }" required="true" value="%{student.gender}"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="studentPhoneNumber" label="Phone Number" required="true" value="%{student.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="studentEmail" label="Email" required="true" value="%{student.email}"/>
		            </s:div>

        		    <s:div class="form-group">
        		    	<s:textfield name="studentDateOfBirth" id="my_date_picker_1" label="Date of Birth" required="true" value="%{student.dateOfBirth}"></s:textfield>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentReligion" label="Religion" list="data[9].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentNationality" label="Nationality" list="data[5].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.nationality}"/>
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name" required="true" value="%{student.guardian.name}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianType" label="Relative Type" list="data[8].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.type}"/>
		            </s:div>
		
		            <s:div class="form-group">
           			    <s:textfield name="guardianPhoneNumber" label="Phone Number" required="true" value="%{student.guardian.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="guardianEmail" label="Email" required="true" value="%{student.guardian.email}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select label= "NRC" name="guardianNrcStateNumber" list="data[7].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.nrc.stateNumber}"/>
		                <s:select name="guardianNrcTownship" list="data[6].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.nrc.township}"/>
		                <s:select name="guardianNrcNationality" list="data[13].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.nrc.nationality}"/>
		                <s:textfield name="guardianNrcNumber" value="%{student.guardian.nrc.number}"></s:textfield>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianState" label="State" list="data[10].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" required="true" value="%{student.guardian.state}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianTownship" label="Township" list="data[12].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" required="true" value="%{student.guardian.township}"/>
		            </s:div>
		            
		
		            <s:div class="form-group">
		                <s:textarea name="guardianAddress" label="Address" required="true" value="%{student.guardian.address}"/>
		            </s:div>
		            
		             <s:div class="form-group">
            		    <s:textfield name="guardianDateOfBirth" label="Date of Birth" id="my_date_picker_2" required="true" value="%{student.guardian.dateOfBirth}"></s:textfield>	
         		   	</s:div>
         		   	
         		   	<s:div class="form-group">
		                <s:select name="guardianReligion" label="Religion" list="data[9].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianNationality" label="Nationality" list="data[5].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" value="%{student.guardian.nationality}"/>
		            </s:div>
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Matriculation Record</td></tr>
		           	
		           	
		           	 <s:div class="form-group">
		                <s:textfield name="matriculationPlace" label="Matriculation Place" required="true" value="%{student.matriculation.place}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationRollNo" label="Matriculation Roll No" required="true" value="%{student.matriculation.rollNo}"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationYear" label="Matriculation Year" required="true" value="%{student.matriculation.year}"/>
		            </s:div>
		            </table><br>
		        
		           	<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield name="matriculationSubject1" label="Myanmar" required="true" value="%{student.matriculation.subjects[0].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject2" label="English" required="true" value="%{student.matriculation.subjects[1].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject3" label="Mathematics" required="true" value="%{student.matriculation.subjects[2].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject4" label="Physics" required="true" value="%{student.matriculation.subjects[3].mark}"></s:textfield>
		          		<s:textfield name="matriculationSubject5" label="Chemistry" required="true" value="%{student.matriculation.subjects[4].mark}"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="subject6" required value="${student.matriculation.subjects[5].id}">
		          					<option value="0">Subject 6</option>
		          					<option value="6">Biology</option>
		          					<option value="7">Economics</option>
		          					<option value="8">History</option>
		          					<option value="9">Geography</option>
		          				</select>
		          			</td>
		          			<td>
		          				<input type="text" value="${student.matriculation.subjects[5].mark}" name="matriculationSubject6">
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
    <script>
        $(function() {
            $( "#my_date_picker_1" ).datepicker({
                changeYear:true,
                dateFormat:'yy-mm-dd',
                defaultDate:"15-08-2000"
            });
        });
    </script>
    <script>
        $(function() {
            $( "#my_date_picker_2" ).datepicker({
                changeYear:true,
                dateFormat:'yy-mm-dd',
                defaultDate:"15-08-2000"
            });
        });
    </script>
</body>
</html>

