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
            		    <s:select name="studentType" label="Student Type to Insert" list="data[11].getDataMap()" 
            		    			listKey="key" listValue="value" headerKey="0" headerValue="select student type" required="true"/>
           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield name="studentName" label="Student Name" required="true"/>
            		</s:div>
            		
            		<s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID" required="true"/>
           			</s:div>
	
		            <s:div class="form-group">
		                <s:textfield name="studentRollNo" label="Roll No" required="true"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:select name="studentMajor" list="data[3].getDataMap()" label="Major" 
		                		listKey="key" listValue="value" headerKey="0" headerValue="" required="true" />
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentCurrentYear" list="data[17].getDataMap()" label="Current Year"
            		    		headerKey="0" headerValue="" required="true"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="studentAcademicYear" list="data[1].getDataMap()" label="Academic Year"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:select label= "NRC" name="studentNrcStateNumber" list="data[7].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
        		        <s:select name="studentNrcTownship" list="data[6].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
        		        <s:select name="studentNrcNationality" list="data[13].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		                <s:textfield name="studentNrcNumber" ></s:textfield>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:select name="studentState" list="data[10].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" label="State" required="true"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:select name="studentTownship" list="data[12].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" label="Township" required="true"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textarea name="studentAddress" label="Address" required="true"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="studentGender" label="Gender" list="#{'1':'Male', '2':'Female' }" required="true"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="studentPhoneNumber" label="Phone Number" required="true"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="studentEmail" label="Email" required="true"/>
		            </s:div>

        		    <s:div class="form-group">
        		    	<s:textfield name="studentBirthday" id="my_date_picker_1" label="Birthday" required="true"></s:textfield>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentReligion" label="Religion" list="data[9].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentNationality" label="Nationality" list="data[5].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianType" label="Relative Type" list="data[8].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
           			    <s:textfield name="guardianPhoneNumber" label="Phone Number" required="true"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="guardianEmail" label="Email" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select label= "NRC" name="guardianNrcStateNumber" list="data[7].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		                <s:select name="guardianNrcTownship" list="data[6].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		                <s:select name="guardianNrcNationality" list="data[13].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		                <s:textfield name="guardianNrcNumber"></s:textfield>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianState" label="State" list="data[10].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianTownship" label="Township" list="data[12].getDataMap()"
        		        		listKey="key" listValue="value" 
        		        		headerKey="0" headerValue="" required="true"/>
		            </s:div>
		            
		
		            <s:div class="form-group">
		                <s:textarea name="guardianAddress" label="Address" required="true"/>
		            </s:div>
		            
		             <s:div class="form-group">
            		    <s:textfield name="guardianBirthday" label="Birthday" id="my_date_picker_2" required="true"></s:textfield>	
         		   	</s:div>
         		   	
         		   	<s:div class="form-group">
		                <s:select name="guardianReligion" label="Religion" list="data[9].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianNationality" label="Nationality" list="data[5].getDataMap()"
        		        		listKey="key" listValue="value" headerKey="0" headerValue="" required="true"/>
		            </s:div>
		
		            <tr class="section-title"><td colspan="2">Academic Record</td></tr>
		
					<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Academic Year</td>
		           			<td style="text-align:center">Roll No</td>
		           		</tr>
		          		<tr>
		     				<td></td>
		       				<td></td>
		           		</tr>
		           	</table>
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Matriculation Record</td></tr>
		           	
		           	
		           	 <s:div class="form-group">
		                <s:textfield name="matriculationPlace" label="Matriculation Place" required="true"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationRollNo" label="Matriculation Roll No" required="true"/>
		            </s:div>
		            
		             <s:div class="form-group">
		                <s:textfield name="matriculationYear" label="Matriculation Year" required="true"/>
		            </s:div>
		            </table><br>
		        
		           	<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield name="matriculationSubject1" label="Myanmar" required="true"></s:textfield>
		          		<s:textfield name="matriculationSubject2" label="English" required="true"></s:textfield>
		          		<s:textfield name="matriculationSubject3" label="Mathematics" required="true"></s:textfield>
		          		<s:textfield name="matriculationSubject4" label="Physics" required="true"></s:textfield>
		          		<s:textfield name="matriculationSubject5" label="Chemistry" required="true"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="subject6" required>
		          					<option value="0">Subject 6</option>
		          					<option value="6">Biology</option>
		          					<option value="7">Economics</option>
		          					<option value="8">History</option>
		          					<option value="9">Geography</option>
		          				</select>
		          			</td>
		          			<td>
		          				<input type="text" name="matriculationSubject6">
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
                dateFormat:'yy/mm/dd',
                defaultDate:"15/08/2000"
            });
        });
    </script>
    <script>
        $(function() {
            $( "#my_date_picker_2" ).datepicker({
                changeYear:true,
                dateFormat:'yy/mm/dd',
                defaultDate:"15/08/2000"
            });
        });
    </script>
</body>
</html>

