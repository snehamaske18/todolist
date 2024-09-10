package todolist.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.Driver;

import todolist.object.List1;

public class JDBC {

    static Connection connection;
    static PreparedStatement preparedStatement;
    static ResultSet resultSet;
    
    // Open the connection to the database
    private static void openConnection() throws SQLException {
		Driver driver = new com.mysql.cj.jdbc.Driver();
		DriverManager.registerDriver(driver);
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/todo", "root", "root");
	}

    // Close the connection and other resources
    private static void closeConnection() throws SQLException {
        try {
            if (resultSet != null) {
                resultSet.close();
            }
            if (preparedStatement != null) {
                preparedStatement.close();
            }
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
    }

    
    public static int addTask(String title, String description) throws SQLException {
        openConnection();
        
      
        String sql = "INSERT INTO todo (title, description) VALUES (?, ?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, title); // Set title
        preparedStatement.setString(2, description); // Set description

        int result = preparedStatement.executeUpdate();
        closeConnection();
        return result;
    }

	public static List<List1> viewAllTask() {
		List<List1> lists = new ArrayList<>();
		try {
			openConnection();
		String	query = "SELECT * FROM todo";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				List1 list = new List1();
				list.setTitle(resultSet.getString(1));
				list.setDescription(resultSet.getString(2));
				
				lists.add(list);
			}
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lists;
	}

	public static int updateTask(String title, String description) throws SQLException {
		openConnection();
    
        String sql = "update todo set description=? where title=?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, description); 
        preparedStatement.setString(2, title); 
    
        int result = preparedStatement.executeUpdate();
        closeConnection();
        return result;
		
	}

	public static int removetask(String title) throws SQLException {
		openConnection();
		 String sql = "DELETE FROM todo WHERE title = ?";
		    preparedStatement = connection.prepareStatement(sql);
		    preparedStatement.setString(1, title);
		    
		    int res = preparedStatement.executeUpdate();
		closeConnection();
		return res;
		
		
	}
}
