import java.sql.*;

public class connect {
	public static void main(String arg[])
	{
		Connection connection = null;
		try {
			// below two lines are used for connectivity.
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/wt",
				"root", "Swati@123");

			// mydb is database
			// mydbuser is name of database
			// mydbuser is password of database

			Statement statement;
			statement = connection.createStatement();
			ResultSet resultSet;
			resultSet = statement.executeQuery(
				"select * from sub");
				String username;
			String email;
			String password;
			while (resultSet.next()) {
				username = resultSet.getString("username");
				email = resultSet.getString("email").trim();
				password = resultSet.getString("password").trim();
				System.out.println("username: " +username
								+ " email: " + email+" password: " + password);
			}
			resultSet.close();
			statement.close();
			connection.close();
		}
		catch (Exception exception) {
			System.out.println(exception);
		}
	} // function ends
} // class ends
