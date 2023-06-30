<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" isELIgnored ="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="snk" uri="/WEB-INF/tld/sankhyaUtil.tld" %>
<html>
<head>
	<title>HTML5 Component</title>
	<link rel="stylesheet" type="text/css" href="${BASE_FOLDER}css/mainCSS.css">
	<snk:load/>
</head>
<body>

	<h2>HTML5 Component Example</h2>
	
	<!-- Exemplo de grade utilizando a query 'teste'
		<snk:query var="teste">
			 select 'teste' AS CAMPO from dual 
		</snk:query>

		<table border="1" >
			<tr>
				<th>CAMPO TESTE</th>
			</tr>
			<c:forEach items="${teste.rows}" var="row">
				<tr>
					<td>
						<c:out value="${row.CAMPO}" />
					</td>
				</tr>
			</c:forEach>
		</table>
	-->
	
</body>
</html>