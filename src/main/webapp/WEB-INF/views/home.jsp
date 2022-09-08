<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
 	 <table border="1">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>email</th>
        </tr>
	<c:forEach items="${salaryList}" var="salaryList">
		<tr>
			<td>${salaryList.id}</td>
			<td>${salaryList.name}</td>
			<td>${salaryList.email}</td>
		</tr>
	</c:forEach>
    </table>
</div>
</body>
</html>