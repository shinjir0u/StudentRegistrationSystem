<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Admin Student Enrollment Form</title>
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
                <s:form action="studentEnrollInitiate" method="post">

					<tr class="section-title"><td  colspan="2">Enter your student card id:</tr>
            		
            		<s:div class="form-group">
            		    <s:textfield name="studentCardId" label="Student Card ID"/>
           			</s:div>
		      	                
		            <s:submit id="submit-btn" value="Submit"></s:submit>
		        </s:form>
  
            </div>
        </div>
    </div>
    
</body>
</html>

