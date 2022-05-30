/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package views;

import busmanagement.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author TranKhang
 */
public class QLTime extends javax.swing.JFrame {

    /**
     * Creates new form QLChuyen
     */
    
      public static String infor;
    
       public void setInfor(String infor)
    {
        this.infor = infor;
        this.inforText.setText(infor);
    }
    
    
    public QLTime() {
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

        jPanel1 = new javax.swing.JPanel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jButton6 = new javax.swing.JButton();
        jButton8 = new javax.swing.JButton();
        jButton9 = new javax.swing.JButton();
        jScrollPane3 = new javax.swing.JScrollPane();
        inforText = new javax.swing.JTextPane();
        jLabel1 = new javax.swing.JLabel();
        jButton7 = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        tableMain = new javax.swing.JTable();
        jPanel2 = new javax.swing.JPanel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jtfTimeStart = new javax.swing.JTextField();
        jtfTimeEnd = new javax.swing.JTextField();
        jbtFix = new javax.swing.JButton();
        jbtDel = new javax.swing.JButton();
        jbtAdd = new javax.swing.JButton();
        btReset = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setResizable(false);

        jPanel1.setPreferredSize(new java.awt.Dimension(256, 720));

        jButton1.setText("Quản lý nhân viên");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Quản lý xe bus");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("Quản lý tài khoản");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("Phân công");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setText("Quản lý chuyến xe");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        jButton6.setText("Quản lý tuyến xe");

        jButton8.setText("Thống kê");
        jButton8.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton8ActionPerformed(evt);
            }
        });

        jButton9.setText("Đăng xuất");
        jButton9.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton9ActionPerformed(evt);
            }
        });

        inforText.setEditable(false);
        inforText.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        inforText.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        inforText.setText("this is some random text");
        inforText.setAutoscrolls(false);
        inforText.setDisabledTextColor(new java.awt.Color(0, 0, 0));
        inforText.setEnabled(false);
        jScrollPane3.setViewportView(inforText);

        jLabel1.setFont(new java.awt.Font("Segoe UI", 1, 18)); // NOI18N
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("Thông tin người dùng");
        jLabel1.setToolTipText("");
        jLabel1.setVerticalAlignment(javax.swing.SwingConstants.TOP);

        jButton7.setText("Quản lý vé");
        jButton7.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton7ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane3, javax.swing.GroupLayout.DEFAULT_SIZE, 256, Short.MAX_VALUE)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(22, 22, 22))
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(28, 28, 28)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 187, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(12, 12, 12)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jScrollPane3, javax.swing.GroupLayout.PREFERRED_SIZE, 101, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(40, 40, 40)
                .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton7, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton6, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton5, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton8, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jButton9, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(71, Short.MAX_VALUE))
        );

        tableMain.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        tableMain.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null},
                {null, null, null},
                {null, null, null},
                {null, null, null}
            },
            new String [] {
                "ID Tuyến", "Thời gian bắt đầu", "Thời gian kết thúc"
            }
        ));
        tableMain.addAncestorListener(new javax.swing.event.AncestorListener() {
            public void ancestorAdded(javax.swing.event.AncestorEvent evt) {
                tableMainAncestorAdded(evt);
            }
            public void ancestorMoved(javax.swing.event.AncestorEvent evt) {
            }
            public void ancestorRemoved(javax.swing.event.AncestorEvent evt) {
            }
        });
        tableMain.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tableMainMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(tableMain);

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel2.setText("Thời gian bắt đầu");

        jLabel3.setFont(new java.awt.Font("Segoe UI", 0, 18)); // NOI18N
        jLabel3.setText("Thời gian kết thúc");

        jtfTimeStart.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jtfTimeStartKeyTyped(evt);
            }
        });

        jtfTimeEnd.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                jtfTimeEndKeyTyped(evt);
            }
        });

        jbtFix.setText("Sửa");
        jbtFix.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtFixActionPerformed(evt);
            }
        });

        jbtDel.setText("Xóa");
        jbtDel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtDelActionPerformed(evt);
            }
        });

        jbtAdd.setText("Thêm");
        jbtAdd.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jbtAddActionPerformed(evt);
            }
        });

        btReset.setText("Đặt lại");
        btReset.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btResetActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(btReset, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jbtAdd, javax.swing.GroupLayout.PREFERRED_SIZE, 78, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jbtDel, javax.swing.GroupLayout.PREFERRED_SIZE, 75, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jbtFix, javax.swing.GroupLayout.PREFERRED_SIZE, 74, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGap(232, 232, 232)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtfTimeStart, javax.swing.GroupLayout.PREFERRED_SIZE, 127, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 227, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtfTimeEnd, javax.swing.GroupLayout.PREFERRED_SIZE, 127, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(234, 234, 234))
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 43, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jtfTimeStart, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jtfTimeEnd, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 113, Short.MAX_VALUE)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(jbtFix, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jbtDel, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jbtAdd, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btReset, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane2))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                .addGap(18, 18, 18)
                .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    
    private void showData(){
        try{
            //tableMain.removeAll();
            String[] arr = {"ID Thời gian","Thời gian bắt đầu","Thời gian kết thúc"};
            DefaultTableModel model=  new DefaultTableModel(arr,0);
            
            Connection connection = DBConnection.getConnection();
            String query= "SELECT * FROM dbo.TIME";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                Vector vt= new Vector();
                vt.add(rs.getString("time_id"));
                vt.add(rs.getString("start_time"));
                vt.add(rs.getString("end_time"));
                
                model.addRow(vt);
    
        }
            DBConnection.closeConnection(connection);
            tableMain.setModel(model);  
        }catch(SQLException ex){
            Logger.getLogger(QLChuyen.class.getName()).log(Level.SEVERE, null, ex);
        }
        

    }
    
      private boolean checkID(){
          
        int pos= tableMain.getSelectedRow();
        String id= tableMain.getModel().getValueAt(pos, 0).toString();
          
        try{
            Connection connection = DBConnection.getConnection();
            String query= "SELECT time_id FROM dbo.WORK WHERE time_id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                return true;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(QLChuyen.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    
    private void tableMainAncestorAdded(javax.swing.event.AncestorEvent evt) {//GEN-FIRST:event_tableMainAncestorAdded
        
        showData();
        
        jbtDel.setEnabled(false);
        jbtFix.setEnabled(false);
        
    }//GEN-LAST:event_tableMainAncestorAdded

    private void jbtAddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtAddActionPerformed
        
        

        if(jtfTimeStart.getText().equals("")){
            JOptionPane.showMessageDialog(null, "Thời gian bắt đầu không được rỗng.");
            jtfTimeStart.requestFocus();
            return;
        }else if(jtfTimeEnd.getText().equals("")){
            JOptionPane.showMessageDialog(null, "Thời gian kết thúc không được rỗng.");
            jtfTimeEnd.requestFocus();
            return;
        }
        


            try{
                Connection connection = DBConnection.getConnection();
                String query= "INSERT INTO dbo.Time(start_time, end_time)"
                        + "VALUES(?,?)";
                PreparedStatement ps = connection.prepareStatement(query);
                //ps.setString(1,jtfID.getText());
                ps.setString(1,jtfTimeStart.getText());
                ps.setString(2,jtfTimeEnd.getText());
                
                ps.execute();
                showData();
                DBConnection.closeConnection(connection);
                
                //jtfID.setText("");
                jtfTimeStart.setText("");
                jtfTimeEnd.setText("");
                //jtfTime.setText("");
                JOptionPane.showMessageDialog(null, "Thêm thành công.");
                
            } catch (SQLException ex) {
                Logger.getLogger(QLChuyen.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        
    }//GEN-LAST:event_jbtAddActionPerformed

    private void jbtDelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtDelActionPerformed
       
        int result= JOptionPane.showConfirmDialog(null, "Bạn có muốn xóa?");
        if (result==0){
            
            int pos= tableMain.getSelectedRow();
            String data= tableMain.getModel().getValueAt(pos, 0).toString();
            
            if(checkID()== true){
            JOptionPane.showMessageDialog(null, "Tuyến này đang được phân công không thể xóa!");
            }else{
                 
            try{
                Connection connection = DBConnection.getConnection();
                String query= "DELETE FROM dbo.TIME WHERE time_id= ?";
                PreparedStatement ps = connection.prepareStatement(query);
                ps.setString(1, data);
                ps.executeUpdate();
                showData();
                DBConnection.closeConnection(connection);
                
                JOptionPane.showMessageDialog(null, "Xóa thành công.");
            } catch (SQLException ex) {
                Logger.getLogger(QLChuyen.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
        }
        
        jbtAdd.setEnabled(true);
        jbtDel.setEnabled(false);
        jbtFix.setEnabled(false);
        
    }//GEN-LAST:event_jbtDelActionPerformed

    private void jbtFixActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jbtFixActionPerformed
        
            int pos= tableMain.getSelectedRow();
            String data= tableMain.getModel().getValueAt(pos, 0).toString();
            //System.out.println(data);
            
            
            try{
                Connection connection = DBConnection.getConnection();
                String query= "UPDATE TIME SET start_time=? , end_time= ? WHERE time_id="+data;
                PreparedStatement ps = connection.prepareStatement(query);
                ps.setString(1,jtfTimeStart.getText());
                ps.setString(2,jtfTimeEnd.getText());
                
                ps.executeUpdate();

                showData();
                DBConnection.closeConnection(connection);
                
                JOptionPane.showMessageDialog(null, "Sửa thành công.");
            } catch (SQLException ex) {
                Logger.getLogger(QLChuyen.class.getName()).log(Level.SEVERE, null, ex);
            }
        
            jbtAdd.setEnabled(true);
            jbtDel.setEnabled(false);
        jbtFix.setEnabled(false);
            
    }//GEN-LAST:event_jbtFixActionPerformed

    private void tableMainMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tableMainMouseClicked
        
        int pos= tableMain.getSelectedRow();
        //jtfID.setText(tableMain.getModel().getValueAt(pos, 0).toString());
        jtfTimeStart.setText(tableMain.getModel().getValueAt(pos, 1).toString());
        jtfTimeEnd.setText(tableMain.getModel().getValueAt(pos, 2).toString());
        
        jbtDel.setEnabled(true);
        jbtFix.setEnabled(true);
        jbtAdd.setEnabled(false);
        
    }//GEN-LAST:event_tableMainMouseClicked

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        PhanCong qlc= new PhanCong();
                    qlc.setVisible(true);
                    this.dispose();
                                    
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
        QLChuyen qlc= new QLChuyen();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton7ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton7ActionPerformed
        QLVe qlc= new QLVe();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton7ActionPerformed

    private void jButton8ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton8ActionPerformed
        Thongke qlc= new Thongke();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton8ActionPerformed

    private void jButton9ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton9ActionPerformed
        // TODO add your handling code here:
           Login log = new Login();
                log.setVisible(true);
                log.setLocationRelativeTo(null);
                //System.out.println(this.infor);
               
              // System.out.println(bus.infor);
               this.dispose();  
    }//GEN-LAST:event_jButton9ActionPerformed

    private void btResetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btResetActionPerformed
        
        jtfTimeStart.setText("");
        jtfTimeEnd.setText("");
        jbtDel.setEnabled(false);
        jbtFix.setEnabled(false);
        jbtAdd.setEnabled(true);
    }//GEN-LAST:event_btResetActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        EmployeeManagement qlc= new EmployeeManagement();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        AccountManagement qlc= new AccountManagement();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        BusManagement qlc= new BusManagement();
                    qlc.setVisible(true);
                    this.dispose();
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jtfTimeStartKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfTimeStartKeyTyped
        char c = evt.getKeyChar();
        
        if(!Character.isDigit(c)){
            evt.consume();
            JOptionPane.showMessageDialog(null, "Thời gian bắt đầu không hợp lệ!");
        }
    }//GEN-LAST:event_jtfTimeStartKeyTyped

    private void jtfTimeEndKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_jtfTimeEndKeyTyped
        char c = evt.getKeyChar();
        
        if(!Character.isDigit(c)){
            evt.consume();
            JOptionPane.showMessageDialog(null, "Thời gian kết thúc không hợp lệ!");
        }
    }//GEN-LAST:event_jtfTimeEndKeyTyped

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
                if ("Windows".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(QLTime.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(QLTime.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(QLTime.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(QLTime.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new QLTime().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btReset;
    private javax.swing.JTextPane inforText;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JButton jButton6;
    private javax.swing.JButton jButton7;
    private javax.swing.JButton jButton8;
    private javax.swing.JButton jButton9;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JScrollPane jScrollPane3;
    private javax.swing.JButton jbtAdd;
    private javax.swing.JButton jbtDel;
    private javax.swing.JButton jbtFix;
    private javax.swing.JTextField jtfTimeEnd;
    private javax.swing.JTextField jtfTimeStart;
    private javax.swing.JTable tableMain;
    // End of variables declaration//GEN-END:variables
}
