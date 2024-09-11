<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Enrollment Form</title>
    <link rel="stylesheet" href="../../css/form.css">
</head>
<body>
        <h1>Please enter student information</h1>
                <div class="container">
                <div class="border">
                	<s:form action="enroll" method="post">
	
       			    <s:div class="form-group">
            		    <s:select name="studentType" label="Student Type to Insert" list="#{'1':'old', '2':'new' }"/>
           			</s:div>

					<tr class="section-title"><td  colspan="2">Academic Information</tr>

    		        <s:div class="form-group">
        		        <s:textfield name="studentName" label="Student Name" />
            		</s:div>
            		
            		<s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID"/>
           			</s:div>
	
		            <s:div class="form-group">
		                <s:textfield name="rollNo" label="Roll No"/>
		            </s:div>

		            <s:div class="form-group">
		                <s:select name="major" list="#{'CS':'Computer Science', 'ENG':'Engineering', 'SCI':'Science'}" label="Major" />
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="currentYear" list="#{'1':'1st Year', '2':'2nd Year', '3':'3rd Year', '4':'4th Year'}" label="Current Year"/>
      				</s:div>

        		    <s:div class="form-group">
        		        <s:select name="academicYear" list="#{'2023':'2023', '2024':'2024'}" label="Academic Year"/>
    		        </s:div>
					 
	    		    <tr class="section-title"><td colspan="2">Personal Information</td></tr>
            
        		    <s:div class="form-group">
        		        <s:select label= "NRC" name="nrcStateNumber" list="#{'1':'1', '2':'2'}" />
        		        <s:select name="nrcState" list="#{'1':'1', '2':'2'}" />
        		        <s:select name="nrcNationality" list="#{'1':'1', '2':'2'}" />
		                <s:textfield name="nrcNumber" ></s:textfield>
       			    </s:div>

     		       	<s:div class="form-group">
     		           	<s:select name="state" list="#{'State1':'State 1', 'State2':'State 2'}" label="State" />
        		    </s:div>

       			    <s:div class="form-group">
            		    <s:select name="township" list="#{'Township1':'Township 1', 'Township2':'Township 2'}" label="Township"/>
            		</s:div>

            		<s:div class="form-group">
                		<s:textarea name="address" label="Address"/>
		            </s:div>

        		    <s:div class="form-group gender-options">
            		    <s:radio name="gender" list="#{'Male':'Male', 'Female':'Female'}" label="Gender" />
           			</s:div>

           			<s:div class="form-group">
           			    <s:textfield name="phoneNumber" label="Phone Number" value="9292"/>
           			</s:div>
		
           			<s:div class="form-group">
                		<s:textfield name="email" label="Email" value="htoo@gmail.com"/>
		            </s:div>

        		    <s:div class="form-group">
            		    <s:select name="dateOfBirthDay" label="Date of Birth" list="#{'1':'1', '2':'2'}" />
            		    <s:select name="dateoOfBirthMonth" list="#{'1':'1', '2':'2'}" />
         		       	<s:select name="dateOfBirthYear" list="#{'1':'1', '2':'2'}" />
         		   	</s:div>
		
		            <s:div class="form-group">
		                <s:select name="religion" list="#{'Religion1':'Religion 1', 'Religion2':'Religion 2'}" label="Religion"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="nationality" list="#{'Nationality1':'Nationality 1', 'Nationality2':'Nationality 2'}" label="Nationality" />
		            </s:div>
		
		           	<tr class="section-title"><td colspan="2">Guardian Information</td></tr>
		
		            <s:div class="form-group">
		                <s:textfield name="guardianName" label="Guardian Name"/>
		            </s:div>
		
		            <s:div class="form-group">
		                <s:select name="relativeType" list="#{'Parent':'Parent', 'Sibling':'Sibling'}" label="Relative Type"/>
		            </s:div>
		
		            <s:div class="form-group">
		                 <s:select label= "Guardian NRC" name="guardianNrcStateNumber" list="#{'1':'1', '2':'2'}"/>
		                <s:select name="guardianNrcState" list="#{'1':'1', '2':'2'}"/>
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
		           	</table>
		           	
		           	<table border="1px solid black" style="width: 300px; margin-left: auto; margin-right: auto">
		           		<tr style="font-weight:bold">
		           			<td style="text-align:center">Subject</td>
		           			<td style="text-align:center">Marks</td>
		           		</tr>
		          		<s:textfield name="subject1" label="Myanmar"></s:textfield>
		          		<s:textfield name="subject2" label="English"></s:textfield>
		          		<s:textfield name="subject3" label="Mathematics"></s:textfield>
		          		<s:textfield name="subject4" label="Physics"></s:textfield>
		          		<s:textfield name="subject5" label="Chemistry"></s:textfield>
		          		<tr>
		          			<td>
		          				<select name="car">
		          					<option value="hi">hi</option>
		          					<option value="hig">hig</option>
		          					<option value="hige">hige</option>	
		          				</select>
		          			</td>
		          			<td>
		          				<input type="text" name="subject6">
		          			</td>
		          		</tr>
		           	</table>		    
		           	
		           	<table>
		           		<tr class="section-title"><td colspan="2">Document</td></tr>
		           		<s:div class="form-group">
		           			<s:file name="photo" label="Your photo"></s:file>
		           		</s:div>
		           	</table>
		           		
		                
		            <s:submit id="btn" value="Submit"></s:submit>
		        </s:form>
		     </div>
		     </div>
</body>
</html>

