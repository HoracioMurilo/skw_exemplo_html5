<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" isELIgnored ="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="snk" uri="/WEB-INF/tld/sankhyaUtil.tld" %>
<html>
<head>
	<title>HTML5 Component</title>
	<link rel="stylesheet" type="text/css" href="${BASE_FOLDER}/css/parceiroCSS.css">
	<snk:load/> <!-- essa tag deve ficar nesta posição -->
	
	<script type='text/javascript'>
		function abrirContatos(codParc){
			var params = {'CODPARC' : codParc};
			refreshDetails('html5_ulnyo6', params);
		}
		
		function abrirFinanceiros(codParc){
			var params = {'CODPARC' : codParc};
			openLevel('lvl_ulnyo9', params);
		}
	</script>
</head>
<body>
	
	<snk:query var="parceiros">
		select * from TGFPAR where CODPARC IN (:CODPARC_LIST) order by CODPARC asc
	</snk:query>
	
	<table border="1" >
		<caption><h3>Parceiros</h3></caption>
		<tr>
			<th>Código</th>
			<th>Nome do Parceiro</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${parceiros.rows}" var="row">
			<tr>
				<td>
					<c:out value="${row.CODPARC}" />
				</td>
				<td>
					<c:out value="${row.NOMEPARC}" />
				</td>
				<td>
					<button onclick="javascript:abrirContatos( ${row.CODPARC} )" >Ver contatos</button>
				</td>
				<td>
					<button onclick="javascript:abrirFinanceiros( ${row.CODPARC} )">Ver financeiros</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>