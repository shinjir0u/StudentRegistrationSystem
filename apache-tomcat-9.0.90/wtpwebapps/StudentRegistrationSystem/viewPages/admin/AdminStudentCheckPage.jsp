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

        input[type="text"], input[type="email"], input[type="date"], label, select {
            flex: 2;
            width: 100%;
            padding: 8px;
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

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:label name="studentName" label="Student Name" />
            		</s:div>
	
					<s:div class="form-group">
            		    <s:label name="studentCardId" label="Student Card ID"/>
           			</s:div>
           			
		            <s:div class="form-group">
		                <s:label name="rollNo" label="Roll No"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:label name="major" label="Major" />
		            </s:div>

        		    <s:div class="form-group">
            		    <s:label name="currentYear" label="Current Year"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:label name="academicYear" label="Academic Year"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:label label="NRC" name="nrcStateNumber" />
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:label name="state" label="State" />
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:label name="township" label="Township"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:label name="address" label="Address"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:label name="gender" label="Gender" />
           			</s:div>

           			<s:div class="form-group">
           			    <s:label name="phoneNumber" label="Phone Number"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:label name="email" label="Email"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:label name="dateOfBirth" label="Date of Birth" />
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:label name="religion" label="Religion"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:label name="nationality" label="Nationality" />
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:label name="guardianName" label="Guardian Name"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:label name="relativeType" label="Relative Type"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:label label= "Guardian NRC" name="guardianNrcStateNumber"/>

		            </s:div>
		
		            <s:div class="form-group">
		                <s:label name="guardianState" label="Guardian State"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:label name="guardianTownship" label="Guardian Township"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:label name="guardianAddress" label="Guardian Address"/>
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

