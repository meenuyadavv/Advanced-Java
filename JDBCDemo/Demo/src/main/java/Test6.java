import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class Test6 {

    public static void main(String[] args) {
        Scanner userinput = new Scanner(System.in);

        try {
            // 1. Driver class load
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Create connection object
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc9", "root", "mysql");

            // 3. Create statement object
            Statement st = cn.createStatement();

            // Display data
            System.out.println("Data from the 'productinfo' table:");
            
            String selectQuery = "SELECT * FROM productinfo";

            // Execute the SELECT query
            ResultSet rs = st.executeQuery(selectQuery);

            // Iterate through the ResultSet and print data
            while (rs.next()) {
                int pid = rs.getInt("pid");
                String name = rs.getString("name");
                String brand = rs.getString("brand");
                int price = rs.getInt("price");

                System.out.println("Product ID: " + pid + ", Name: " + name + ", Brand: " + brand + ", Price: " + price);
            }

            // Connection close
            cn.close();
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }
}
