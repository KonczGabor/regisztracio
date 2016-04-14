<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*, com.regisztracio.models.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<form method="POST" action="SaveBTSZ">
	
		<div class="CommentBox">
						
			<div>
					
				<div class="input-group">		  
				  <input name="keresztNev" type="text" class="form-control" placeholder="Keresztnev" aria-describedby="basic-addon1">
				</div>
			
				<br /><br />
				
				<div class="input-group">		  
				  <input name="vezetekNev" type="text" class="form-control" placeholder="Vezeteknev" aria-describedby="basic-addon1">
				</div>
			
						    
		    </div>
						    					   
		</div> 
			 
		<hr />
		
		<div class="ButtonBox">
						
			<div>
	
  			
				<button type="submit" class="btn btn-primary" aria-pressed="false" autocomplete="off">
				  Pilota Rogzitese
				</button>
		
			</div>
				
		</div> 	
	
	 		
	
	</form>
</body>
</html>