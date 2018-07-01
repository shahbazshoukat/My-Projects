/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;
import static bean.provider.*;

/**
 *
 * @author Shahbaz Shoukat
 */
public class connectionProvider {
    
    private static Connection con=null;
    static{
        try{
            Class.forName(DRIVER);
            con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
        }
        catch(ClassNotFoundException e){
            System.out.println("Class	not	found!");
	}
	catch(SQLException e){
            System.out.println("SQL exception!");
	}
       
    }
    public static Connection getCon(){
        return con;
    }
}
