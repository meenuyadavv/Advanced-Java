import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class Test5 {
	
	
public static void main(String[] args) {
		
		Scanner userinput = new Scanner(System.in);
	
		try {
			//1. deriver class load 
			Class.forName("com.mysql.cj.jdbc.Driver");

			
			// 2. create connection object
			Connection cn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/jdbc9", "root", "mysql");
			
			// 3. create statement object
			
			String query = "INSERT INTO productinfo (pid, name, brand, price) VALUES (?, ?, ?, ?)";
		    PreparedStatement ps = cn.prepareStatement(query);
           // ResultSet rs = ps.executeQuery(); 
            // Execute SELECT query

            
            // 5. Loop through the result set and print the data
//            while (rs.next()) {
//                int pid = rs.getInt("pid");      // Get product id
//                String name = rs.getString("name");  // Get product name
//                String brand = rs.getString("brand"); // Get product brand
//                int price = rs.getInt("price");    // Get product price

            
           System.out.print("enter product id :");
			int pid = userinput.nextInt();
			userinput.nextLine();
			
			System.out.print("enter product name :");
			String name = userinput.nextLine();
			
			System.out.print("enter product brand :");
			String brand = userinput.nextLine();
			
			System.out.print("enter product price :");
			int price = userinput.nextInt();
			
           ps.setInt(1, pid);        // Set the first placeholder (?) with pid
            ps.setString(2, name);    // Set the second placeholder (?) with name
            ps.setString(3, brand);   // Set the third placeholder (?) with brand
            ps.setInt(4, price);      // Set the fourth placeholder (?) with price
            
            // Execute the query
            ps.executeUpdate();
            System.out.println("Data inserted successfully...");

            // connection close
            cn.close();
		}
		catch(Exception ex) {
			System.out.println(ex);
		}

		
		}

	
	

}
