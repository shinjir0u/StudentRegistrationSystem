<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Student Enrollment Form</title>
    <link type="text/css" rel="stylesheet" href="../../css/baseTemplate.css">
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

        label {
        	width: 100%;
            flex: 1;
            margin-right: 10px;
            font-weight: normal;
        }

        input[type="text"], input[type="email"], input[type="date"], textarea, select {
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
            <div class="menu">
                <s:form action="checkAction" method="post">
                    <button type="submit">View</button>
                </s:form>
                <s:form action="insertAction" method="post">
                    <button type="submit">Enroll</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Contact</button>
                </s:form>             
            </div>
            <div class="content">
                <!-- This is where the content for each action would be displayed -->  
				<s:form action="studentEnrollTest">
       			    <s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID"/>
           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield name="studentName" label="Student Name" />
            		</s:div>
	
		            <s:div class="form-group">
		                <s:textfield name="studentRollNo" label="Roll No"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:select name="studentMajor" list="#{'CS':'Computer Science', 'ENG':'Engineering', 'SCI':'Science'}" label="Major" />
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentCurrentYear" list="#{'1st Year':'1st Year', '2nd Year':'2nd Year', '3':'3rd Year', '4':'4th Year'}" label="Current Year"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="studentAcademicYear" list="#{'2023':'2023', '2024':'2024'}" label="Academic Year"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:select label="Nrc" name="studentNrcStateNumber" list="#{'1':'1', '2':'2'}" />
        		        <s:select name="studentNrcTownship" list="#{'1':'1', '2':'2'}" />
        		        <s:select name="studentNrcNationality" list="#{'1':'1', '2':'2'}" />
		                <s:textfield name="studentNrcNumber" ></s:textfield>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:select name="studentState" list="#{'State1':'State 1', 'State2':'State 2'}" label="State" />
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:select name="studentTownship" list="#{'Township1':'Township 1', 'Township2':'Township 2'}" label="Township"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textarea name="studentAddress" label="Address"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="studentGender" list="#{'Male':'Male', 'Female':'Female'}" label="Gender" />
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="studentPhoneNumber" label="Phone Number" value="9292"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="studentEmail" label="Email" value="htoo@gmail.com"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="studentDateOfBirthDay" label="Date of Birth" list="#{'1':'1', '2':'2'}" />
            		    <s:select name="studentDateOfBirthMonth" list="#{'1':'1', '2':'2'}" />
         		       	<s:select name="studentDateOfBirthYear" list="#{'1':'1', '2':'2'}" />
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentReligion" list="#{'Religion1':'Religion 1', 'Religion2':'Religion 2'}" label="Religion"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="studentNationality" list="#{'Nationality1':'Nationality 1', 'Nationality2':'Nationality 2'}" label="Nationality" />
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianType" list="#{'Parent':'Parent', 'Sibling':'Sibling'}" label="Relative Type"/>
		            </s:div>
		            
		            <s:div class="form-group">
           			    <s:textfield name="guardianPhoneNumber" label="Phone Number" value="9292"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="guardianEmail" label="Email" value="htoo@gmail.com"/>
		            </s:div>
		
		            <s:div class="form-group">
		                 <s:select label= "Guardian NRC" name="guardianNrcStateNumber" list="#{'1':'1', '2':'2'}"/>
		                <s:select name="guardianNrcTownship" list="#{'1':'1', '2':'2'}"/>
		                <s:select name="guardianNrcNationality" list="#{'1':'1', '2':'2'}"/>
		                <s:textfield name="guardianNrcNumber"></s:textfield>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianState" list="#{'State1':'State 1', 'State2':'State 2'}" label="Guardian State"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="guardianTownship" list="#{'Township1':'Township 1', 'Township2':'Township 2'}" label="Guardian Township"/>
		            </s:div>
		            
		
		            <s:div class="form-group">
		                <s:textarea name="guardianAddress" label="Guardian Address"/>
		            </s:div>
		            
		             <s:div class="form-group">
            		    <s:select name="guardianDateOfBirthDay" label="Date of Birth" list="#{'1':'1', '2':'2'}" />
            		    <s:select name="guardianDateOfBirthMonth" list="#{'1':'1', '2':'2'}" />
         		       	<s:select name="guardianDateOfBirthYear" list="#{'1':'1', '2':'2'}" />
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
		            <s:submit id="submit-btn" value="Submit" name="submitButton"></s:submit>		         
		        </s:form>
  
            </div>
        </div>
    </div>
                
</body>
</html>

