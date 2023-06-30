<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" isELIgnored ="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="snk" uri="/WEB-INF/tld/sankhyaUtil.tld" %>
<html>
<head>
	<title>HTML5 Component</title>
	<link rel="stylesheet" type="text/css" href="${BASE_FOLDER}/css/contatoCSS.css">
	<snk:load/> <!-- essa tag deve ficar nesta posição -->
</head>
<body>

	<snk:query var="contatos">
		<%
			String query = "select * from TGFCTT where ";
			
			if(request.getAttribute("CODPARC") != null) {
				query += " CODPARC = :CODPARC ";
			} else {
				query += " 1 <> 1 ";
			}

			query += " order by CODPARC asc ";

			out.println(query);
		%>
	</snk:query>
	
	<table border="1" >
		<caption>Contatos (parceiro: ${CODPARC})</caption>
		<tr>
			<th>Código</th>
			<th>Nome do Contato</th>
		</tr>
		<c:forEach items="${contatos.rows}" var="row">
			<tr>
				<td>
					<c:out value="${row.CODCONTATO}" />
				</td>
				<td>
					<c:out value="${row.NOMECONTATO}" />
				</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>