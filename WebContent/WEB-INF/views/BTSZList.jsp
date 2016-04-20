<%@ page import="java.util.*, com.regisztracio.models.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Insert title here</title>
</head>
<body>

	<%
			List<BelfoldiTermeszetesSzemely> bTSZList = (List<BelfoldiTermeszetesSzemely>) request.getAttribute("bTSZList");
		
			for(Integer i = 0; i < bTSZList.size(); i++){
				
				%>
				
				
				
				<tr>
			
				<td><%=bTSZList.get(i).getAnyjaNeve() %></td>
				
				
			</tr>
				
		<%			
		
		
		
		
		
			}
			%>

</body>
</html>