<!DOCTYPE html>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
<head>
    <title>student </title>
    <style>
        h1{
            color: blue;
        }
    </style>
</head>
<body>
    <h2>Parvatibai Genba Moze College Of Engineering</h2>
</body>
<body>
    
    <h1> Students Information</h1>
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost/wt","root","Swati@123");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from students_info;");
    %>
    <table border=1 style="text-align:center">
      <thead>
          <tr>
             <th>Id</th>
             <th>Name</th>
             <th>Class</th>
             <th>Division</th>
             <th>City</th>
          </tr>
      </thead>
      <tbody>
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%=rs.getString("stud_id") %></td>
                <td><%=rs.getString("stud_name") %></td>
                <td><%=rs.getString("class") %></td>
                <td><%=rs.getString("division") %></td>
                <td><%=rs.getString("city") %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    %>
</body>
</html>