<%
		String username= request.getParameter("uname");
		String password= request.getParameter("password");
		
		
		if(username.equals("chandran") && password.equals("123") )
		{
			String redirect= "adminPage.jsp";
			
			response.sendRedirect(redirect);

		}else
		{
			out.println("username or password do not match");
		}
	
	%>