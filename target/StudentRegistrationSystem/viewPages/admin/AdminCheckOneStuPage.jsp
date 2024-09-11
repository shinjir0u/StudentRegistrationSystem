<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
