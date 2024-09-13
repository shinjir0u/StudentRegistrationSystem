<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Check Page</title>
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
        
        input:disabled {
        	background-color: rgba(128, 128, 128, 0.3);
        	border: none;
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
            <div class="menu">
                <s:form action="checkAction" method="post">
                    <button type="submit">Check</button>
                </s:form>
                <s:form action="insertAction" method="post">
                    <button type="submit">Insert</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Search</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Upload News</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Settings</button>
                </s:form>
                <s:form action="searchAction" method="post">
                    <button type="submit">Logout</button>
                </s:form>
            </div>
            <div class="content">
            	Say something here
                <!-- This is where the content for each action would be displayed -->
                <s:form action="enroll" method="post">
                	<s:set value="student.dateOfBirth" var="studentDate"/>
                	<s:set value="student.guardian" var="guardian"/>
                	<s:set value="student.nrc" var="studentNrc"/>     
                	<s:set value="#guardian.nrc" var="guardianNrc"/>        
                	<s:set value="#guardian.dateOfBirth" var="guardianDate"/>   	

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield disabled="true" name="studentName" label="Student Name" value="%{student.name}"/>
            		</s:div>
	
					<s:div class="form-group">
            		    <s:textfield disabled="true" name="studentCardId" label="Student Card ID" value="%{student.cardId}"/>
           			</s:div>
           			
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="rollNo" label="Roll No" value="%{student.rollNo}"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:textfield disabled="true" name="major" label="Major" value="%{student.major}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield disabled="true" name="currentYear" label="Current Year" />
      				</s:div>

        		    <s:div class="form-group">
        		        <s:textfield disabled="true" name="academicYear" label="Academic Year"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:textfield disabled="true" label="NRC" name="nrcStateNumber" value="%{#studentNrc.stateNumber + '/' + #studentNrc.township + '(' +  #studentNrc.nationality + ')' + #studentNrc.number}"/>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:textfield disabled="true" name="state" label="State" value="%{student.state}"/>
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:textfield disabled="true" name="township" label="Township" value="%{student.township}"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textfield disabled="true" name="address" label="Address" value="%{student.address}"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:textfield disabled="true" name="gender" label="Gender" value="%{student.gender}"/>
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield disabled="true" name="phoneNumber" label="Phone Number" value="%{student.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield disabled="true" name="email" label="Email" value="%{student.email}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield disabled="true" name="dateOfBirth" label="Date of Birth" value="%{#studentDate.day + '-' + #studentDate.month + '-' +  #studentDate.year}"/>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="religion" label="Religion" value="%{student.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="nationality" label="Nationality" value="%{student.nationality}"/>
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="guardianName" label="Guardian Name" value="%{#guardian.name}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="relativeType" label="Relative Type" value="%{#guardian.type}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" label= "Guardian NRC" name="guardianNrcStateNumber" value="%{#guardianNrc.stateNumber + '/' + #guardianNrc.township + '(' + #guardianNrc.nationality + ')' + #guardianNrc.number}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="guardianState" label="Guardian State" value="%{#guardian.state}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="guardianTownship" label="Guardian Township" value="%{#guardian.township}"/>
		            </s:div> 
		
		            <s:div class="form-group">
		                <s:textfield disabled="true"  name="guardianAddress" label="Guardian Address" value="%{#guardian.address}"/>
		            </s:div>
		
					<s:div class="form-group">
           			    <s:textfield disabled="true" name="phoneNumber" label="Phone Number" value="%{#guardian.phoneNumber}"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield disabled="true" name="email" label="Email" value="%{#guardian.email}"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:textfield disabled="true" name="dateOfBirth" label="Date of Birth" value="%{#guardianDate.day + '-' + #guardianDate.month + '-' +  #guardianDate.year}"/>
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="religion" label="Religion" value="%{student.religion}"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:textfield disabled="true" name="nationality" label="Nationality" value="%{student.nationality}"/>
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
		            <s:submit id="submit-btn" value="Submit"></s:submit>
		        </s:form>
  
            </div>
        </div>
    </div>
    
</body>
</html>

