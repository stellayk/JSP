<%@page import="kr.co.jboard1.config.DBConfig"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="application/json;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// encoding
	request.setCharacterEncoding("UTF-8");

	// retrieving
	String uid = request.getParameter("uid");

	//1,2 
	Connection conn = DBConfig.getInstance().getConnection();
		
	//3.make SQL object
	Statement stmt = conn.createStatement();
	
	//4. sql
	String sql = "SELECT COUNT('uid') FROM `JBOARD_USER` WHERE `uid`='"+uid+"';";
	ResultSet rs = stmt.executeQuery(sql);
	
	//5. SELECT
	int count = 0;
	
	if(rs.next()){
		count = rs.getInt(1);
	}
	
	//6. exit
	rs.close();
	stmt.close();
	conn.close();
	
	//return results
	JsonObject json = new JsonObject();
	json.addProperty("result", count);
	
	out.print(json);
%>