		<%@page import= "java.*"%>	
				<%@page import="java.sql.*" %>
				<%@page import="java.text.*" %> 
				<%@page import="java.util.*" %>
		
				<html>
				<head> 
				<title> Remover da tabela Cliente</title>
				</head>	
				<body><br><br><br><br> 
				<%
			 String id_cliente=request.getParameter("id_cliente");String sql = "delete from Cliente where id_cliente = '"+id_cliente+"'";	
					Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
					String connectionUrl = "jdbc:sqlserver://localhost:1433;" + "databaseName=MARKABRANCA;integratedSecurity=true;";
					Connection con = DriverManager.getConnection(connectionUrl);
					PreparedStatement s = con.prepareStatement(sql);
					s.execute();
					s.close();
					con.commit();
					con.close();
					%>
		
					Dados removidos com sucesso
					
					</body>
					</html>
				