<%@ page import="java.sql.*" %>
<%@ page language="java" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
    <title>MySQL 연결 테스트</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    // MySQL 연결 정보
    String url = "jdbc:mysql://localhost:3306/coffee"; // 데이터베이스 URL
    String user = "root"; // 데이터베이스 사용자명
    String password = "dPdms137946.."; // 데이터베이스 비밀번호

    try {
        // JDBC 드라이버 로딩
        Class.forName("com.mysql.cj.jdbc.Driver");

        // 데이터베이스 연결
        conn = DriverManager.getConnection(url, user, password);

        // 쿼리 실행
        stmt = conn.createStatement();
        String sql = "SELECT * FROM products";
        rs = stmt.executeQuery(sql);

        // 결과 출력
        out.println("<h2>MySQL 연결 성공</h2>");
        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Name</th></tr>");
        while (rs.next()) {
            out.println("<tr><td>" + rs.getInt("id") + "</td><td>" + rs.getString("name") + "</td></tr>");
        }
        out.println("</table>");
    } catch (Exception e) {
        out.println("<h2>MySQL 연결 실패: " + e.getMessage() + "</h2>");
    } finally {
        // 연결 해제
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (conn != null) conn.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
</body>
</html>
