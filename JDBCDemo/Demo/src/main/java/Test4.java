import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Scanner;

public class Test4 {
	
	
public static void main(String[] args) {
		
		Scanner userinput = new Scanner(System.in);
		
		
		try {
			//1. deriver class load 
			Class.forName("com.mysql.cj.jdbc.Driver");

			
			// 2. create connection object
			Connection cn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/jdbc9", "root", "mysql");
			
			// 3. create statement object
			
			Statement st = cn.createStatement();
			
			System.out.print("enter product id :");
			int pid = userinput.nextInt();
			userinput.nextLine();
			
			System.out.print("enter product name :");
			String name = userinput.nextLine();
			
			System.out.print("enter product brand :");
			String brand = userinput.nextLine();
			
			System.out.print("enter product price :");
			int price = userinput.nextInt();
			
			// sql query excute
			
			String query = "INSERT INTO productinfo (pid, name, brand, price) VALUES (" + pid + ", '" + name + "', '" + brand + "', " + price + ")";
			
			
            // Execute the query
            st.executeUpdate(query);
            System.out.println("Data inserted successfully...");

            // connection close
            cn.close();
		}
		catch(Exception ex) {
			System.out.println(ex);
		}
		
          }
	
	}
