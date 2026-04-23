/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package pbo2uts;
import com.formdev.flatlaf.FlatLaf;
import com.formdev.flatlaf.FlatLightLaf;
import com.formdev.flatlaf.themes.FlatMacDarkLaf;
import javax.swing.UIManager;
public class PBO2UTS {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // 1. Pasang tema di sini (Pintu masuk utama aplikasi)
            UIManager.setLookAndFeel(new FlatMacDarkLaf());
            
            // Tambahan opsional biar makin cakep
            UIManager.put("Button.arc", 20);
            UIManager.put("Component.arc", 20);
            
        } catch (Exception ex) {
            System.err.println("Gagal load tema FlatLaf asu!");
        }

        // 2. Baru panggil form login
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new FormLogin().setVisible(true);
            }
        });
    }
    }
    

