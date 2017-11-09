<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head></head>
<body>

	<form action="SessaoProduto" method="get">
		
		Carros: 
		<select name="carro">
		  <option value="volvo">Volvo</option>
		  <option value="saab">Saab</option>
		  <option value="opel">Opel</option>
		  <option value="audi">Audi</option>
		</select>
		
		<input type="submit" value="Enviar" />
	</form>
	
	<table>
		<c:forEach var="item" items="${listaCarros}">
			<tr>
				<td><c:out value="${item}"/></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>