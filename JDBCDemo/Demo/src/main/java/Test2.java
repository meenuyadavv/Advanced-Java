import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Test2 {
	
	
public static void main(String[] args) {
		
		try {
            // Load MySQL Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Correct JDBC URL with proper quotes
            Connection cn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/jdbc9", "root", "mysql"
            );
            System.out.println("Connected.......");
            
            // create statement object
            Statement st = cn.createStatement();
            
            // code to create sql query
            st.execute("create table productinfo(pid int primary key, name varchar(20),brand varchar(20),price int)");
            System.out.println("table is created.....");
            
            // connection close
            cn.close();
        } 
        catch (Exception ex) {
            System.out.println(ex); // Print the exception if any
        }


	}

	

}
