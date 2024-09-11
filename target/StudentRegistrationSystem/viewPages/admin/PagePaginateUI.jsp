<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <style>
        .pagination {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }
        .pagination button {
            margin: 0 5px;
            padding: 5px 10px;
            background-color: #4CAF50; /* Green background */
            color: white;
            border: none;
            cursor: pointer;
        }
        .pagination button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
        .pagination input[type="text"] {
            width: 40px;
            text-align: center;
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <div>
        <s:form action="paginateAction" method="post" theme="simple">
            <div class="pagination">
                <s:hidden name="currentPage" value="%{currentPage}"/>

                <!-- Previous Page Button -->
                <button type="submit" name="direction" value="previous" <s:if test="currentPage <= 1">disabled</s:if>>
                    &lt; Prev
                </button>

                <!-- Current Page Display and Input -->
                Page <s:textfield name="currentPage" value="%{currentPage}" size="3"/> 
                of <s:property value="totalPages"/>

                <!-- Next Page Button -->
                <button type="submit" name="direction" value="next" <s:if test="currentPage >= totalPages">disabled</s:if>>
                    Next &gt;
                </button>
            </div>
        </s:form>
    </div>
</body>
</html>
