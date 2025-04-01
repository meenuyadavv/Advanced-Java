import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Test3 {
	
public static void main(String[] args) {
		
		try {
		 // Load MySQL Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Correct JDBC URL with proper quotes
        Connection cn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/jdbc9", "root", "mysql"
        );
        System.out.println("Connected.......");
        
        PreparedStatement ps = cn.prepareStatement("insert into productinfo values(?,?,?,?)");
        
        ps.setInt(1, 102);
        ps.setString(2,"printer");
        ps.setString(3,"HP");
        ps.setInt(4, 1000);
        ps.executeUpdate();
        cn.close();
        
        System.out.println("record inserted.....");
        }
		
		catch(Exception ex) {
			System.out.println(ex);
		}
}

}
