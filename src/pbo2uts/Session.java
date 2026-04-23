/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pbo2uts;

/**
 *
 * @author irsya
 */
public class Session {
    // Variabel statis agar bisa dipanggil dari form mana saja tanpa membuat objek baru
    private static String username;
    private static String level;

    // Getter dan Setter untuk Username
    public static String getUsername() {
        return username;
    }

    public static void setUsername(String username) {
        Session.username = username;
    }

    // Getter dan Setter untuk Level (Admin/Operator)
    public static String getLevel() {
        return level;
    }

    public static void setLevel(String level) {
        Session.level = level;
    }
    
    // Fungsi tambahan untuk membersihkan session saat logout
    public static void clearSession() {
        Session.username = null;
        Session.level = null;
    }
}
