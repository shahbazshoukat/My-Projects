/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;


import java.sql.*;
import java.io.*;

public class insertToDB {
    public static int register(user u){
        int status = 0;
        try{
            Connection con=connectionProvider.getCon();
            PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?)");
            ps.setInt(5, u.getId());
            ps.setString(1, u.getName());
            ps.setString(2, u.getPhone());
            ps.setString(3, u.getEmail());
            ps.setString(4, u.getPassword());
            
            status=ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println("Got an Exception");
            
        }
        return status;
    }
    
    public static int registerAd(ad u){
        int status = 0;
        try{
             
            Connection con=connectionProvider.getCon();
            status=4;
            PreparedStatement ps=con.prepareStatement("insert into ads values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
           
            status=5;            
            ps.setInt(1, u.getAd_id());
            ps.setString(2, u.getLocation());
            ps.setString(3, u.getCategory());
            ps.setString(4, u.getTitle());
            ps.setString(5, u.getRent());
            ps.setString(6, u.getPayment());
            ps.setString(7, u.getDescription());
            ps.setString(8,u.getImg1_url());
            ps.setString(9,u.getImg2_url());
            ps.setString(10,u.getImg3_url());
            ps.setInt(11,u.getUser_id());
            ps.setInt(12,u.getView());
            ps.setString(13, u.getDatetime());
            status=6;
            status=ps.executeUpdate();
        }
        catch(Exception e){
            System.out.println("Got an Exception");
            
        }
        return status;
    }
}
