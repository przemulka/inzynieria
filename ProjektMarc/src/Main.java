
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import org.eclipse.birt.core.framework.Platform;
import java.io.ByteArrayOutputStream;
import org.eclipse.birt.core.exception.BirtException;
import org.eclipse.birt.report.engine.api.PDFRenderOption;
import org.eclipse.birt.core.framework.Platform;
import org.eclipse.birt.report.engine.api.EngineConfig;
import org.eclipse.birt.report.engine.api.EngineException;
import org.eclipse.birt.report.engine.api.HTMLRenderOption;
import org.eclipse.birt.report.engine.api.IReportEngine;
import org.eclipse.birt.report.engine.api.IReportEngineFactory;
import org.eclipse.birt.report.engine.api.IReportRunnable;
import org.eclipse.birt.report.engine.api.IRunAndRenderTask;
import org.eclipse.birt.report.data.oda.jdbc.JDBCDriverManager; //Connector MYSQL

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author User
 */
public class Main extends javax.swing.JFrame implements ActionListener {
    /**
     * Creates new form Main
     */
    PDFRenderOption PDF_OPTIONS = new PDFRenderOption();
                ByteArrayOutputStream bost = new ByteArrayOutputStream();
                
    private String wybor;
    static IReportEngine engine = null; // inicjacja silnika BIRT
   static EngineConfig config = null;
   
    public Main() {
        initComponents();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ChooseBox = new javax.swing.JComboBox<>();
        Przycisk = new javax.swing.JButton();
        jCheckBox1 = new javax.swing.JCheckBox();
        Wybor1 = new javax.swing.JCheckBox();
        Wybor2 = new javax.swing.JCheckBox();
        Wybor3 = new javax.swing.JCheckBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        ChooseBox.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Raport", "Wykres" }));
        ChooseBox.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ChooseBoxActionPerformed(evt);
            }
        });

        Przycisk.setText("Generuj");
        Przycisk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                PrzyciskActionPerformed(evt);
            }
        });

        jCheckBox1.setText("jCheckBox1");

        Wybor1.setText("Najlepsi uczniowie");
        Wybor1.setHideActionText(true);
        Wybor1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                Wybor1ActionPerformed(evt);
            }
        });

        Wybor2.setText("Najlepsi uczniowie");
        Wybor2.setHideActionText(true);

        Wybor3.setText("Świadectwa z paskiem");
        Wybor3.setHideActionText(true);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 50, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(Wybor1, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Wybor2, javax.swing.GroupLayout.PREFERRED_SIZE, 235, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Wybor3, javax.swing.GroupLayout.PREFERRED_SIZE, 247, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(Przycisk, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ChooseBox, javax.swing.GroupLayout.PREFERRED_SIZE, 137, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(ChooseBox, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 44, Short.MAX_VALUE)
                .addComponent(Wybor1, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(Wybor2, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(Wybor3, javax.swing.GroupLayout.PREFERRED_SIZE, 31, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(28, 28, 28)
                .addComponent(Przycisk, javax.swing.GroupLayout.PREFERRED_SIZE, 45, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void ChooseBoxActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ChooseBoxActionPerformed
        wybor = ChooseBox.getSelectedItem().toString();
        if (wybor.equals("Raport")){
            Wybor1.setText("Najlepsi uczniowie");
            Wybor2.setText("Świadectwa z paskiem");
            Wybor3.setText("Niezaliczone");
        }
        else if (wybor.equals("Wykres")){
            Wybor1.setText("Powyżej średniej");
            Wybor2.setText("Zaliczenie");
            Wybor3.setText("Świadectwa z paskiem");
        }
    }//GEN-LAST:event_ChooseBoxActionPerformed

    private void Wybor1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_Wybor1ActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_Wybor1ActionPerformed

    private void PrzyciskActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_PrzyciskActionPerformed
      wybor = ChooseBox.getSelectedItem().toString();
      IReportRunnable design = null;
      if (wybor.equals("Raport")){
        if (Wybor1.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\Najlepsi.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("Najlepsi.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
        }
        if (Wybor2.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\Pasek.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("Pasek.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
        }
        if (Wybor3.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\NiezaliczoneRap.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("NiezaliczoneRap.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
        }
     }else{
          if (Wybor1.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\PowyzejSredniej.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("PowyzejSredniej.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
            
          }
          if (Wybor2.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\ZaliczenieWyk.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("ZaliczenieWyk.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
            
          }
          if (Wybor3.isSelected() == true){
            try{
                design = engine.openReportDesign("Szablony\\Wykresik.rptdesign");
                IRunAndRenderTask task = engine.createRunAndRenderTask(design);
                PDF_OPTIONS.setOutputStream(bost);
                PDF_OPTIONS.setOutputFileName("PasekWykres.pdf");
                PDF_OPTIONS.setOutputFormat("pdf");
                task.setRenderOption(PDF_OPTIONS);
                task.run();
                task.close();
            }catch(EngineException ex){}
        }
      }
      Wybor1.setSelected(false);
      Wybor2.setSelected(false);
      Wybor3.setSelected(false);
    }//GEN-LAST:event_PrzyciskActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Main.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        
        config = new EngineConfig();
         try {
                config.setBIRTHome("ReportEngine");//połączenie z birt engine
                Platform.startup(config); // włączenie platformy
                IReportEngineFactory factory = (IReportEngineFactory) Platform.createFactoryObject( IReportEngineFactory.EXTENSION_REPORT_ENGINE_FACTORY );//UTWORZENIE OBIEKTU
                 engine = factory.createReportEngine(config);
                    }catch(BirtException e){
            }
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Main().setVisible(true);
            }
            
        });
        
        
      
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private static javax.swing.JComboBox<String> ChooseBox;
    private javax.swing.JButton Przycisk;
    private javax.swing.JCheckBox Wybor1;
    private javax.swing.JCheckBox Wybor2;
    private javax.swing.JCheckBox Wybor3;
    private javax.swing.JCheckBox jCheckBox1;
    // End of variables declaration//GEN-END:variables

    @Override
    public void actionPerformed(ActionEvent e) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
