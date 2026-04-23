/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pbo2uts;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class koneksi {
    public static Connection getKoneksi() {
        Connection conn = null;
        try {
            // Driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Setting URL: nama database disesuaikan
            String url = "jdbc:mysql://localhost:3306/db_akademik_utb";
            String user = "root"; // Default XAMPP
            String pass = "";     // Default XAMPP (kosong)
            
            conn = DriverManager.getConnection(url, user, pass);
            System.out.println("Koneksi Berhasil!");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Koneksi Gagal: " + e.getMessage());
        }
        return conn;
    }
}
