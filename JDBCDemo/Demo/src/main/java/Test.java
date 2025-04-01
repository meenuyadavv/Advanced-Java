import java.sql.Connection;
import java.sql.DriverManager;

public class Test {
	
	
	public static void main(String[] args) {
        try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Correct JDBC URL with proper quotes
            Connection cn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/jdbc9", "root", "mysql"
            );
            System.out.println("Connected.......");
        } 
        catch (Exception ex) {
            System.out.println(ex); // Print the exception if any
        }
    }
	

}
