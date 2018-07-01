/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;


import java.sql.*;
import java.io.*;

public class getFromDB {
    
    
    
    public static int getMaxUserID(){
        int status = 0;
        try{
             
            Connection con=connectionProvider.getCon();
            
            String query="select max(user_id) as maxID from users";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            rs.next();
            status = rs.getInt("maxID");  
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return status;
    }
    
    public static int getMaxAdID(){
        int status = 0;
        try{
             
            Connection con=connectionProvider.getCon();
            
            String query="select max(ad_id) as maxID from ads";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            rs.next();
            status = rs.getInt("maxID");  
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return status;
    }
    
    public static int getMinAdID(){
        int status = 0;
        try{
             
            Connection con=connectionProvider.getCon();
            
            String query="select min(ad_id) as minID from ads";
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery(query);
            rs.next();
            status = rs.getInt("minID");  
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return status;
    }
    
    
    public static ResultSet getMinAdResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads order by ad_id DESC"); 
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getHousesResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Houses");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getApartmentsResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Apartments");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getShopsResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Shops");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getWeddingResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Wedding Halls");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    
    public static ResultSet getCateringResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Catering");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getVehiclesResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id DESC"); 
            ps.setString(1, "Vehicles");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    
    public static ResultSet getTrendingResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select TOP(ad_id) from ads order by ad_id DESC"); 
            ps.setString(1, "Vehicles");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    
    
    public static ResultSet getLocationResult(String loc){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where location=? order by ad_id");
            ps.setString(1, loc);
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getCategoryResult(String cat){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where category=? order by ad_id");
            ps.setString(1, cat);
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getSearchResult(String search){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads where title like ? order by ad_id");
            ps.setString(1,"%" + search + "%");
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    
    
    
    public static ResultSet getLowtoHighResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads order by rent");
            
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    public static ResultSet getHightoLowResult(){
        ResultSet rs=null;
        try{
             
            Connection con=connectionProvider.getCon();
            
            PreparedStatement ps=con.prepareStatement("select ad_id from ads order by rent DESC");
            
            rs=ps.executeQuery();
            
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return rs;
    }
    
    
    public static int validate(login bean){  
    boolean status=false; 
    try{  
    Connection con= connectionProvider.getCon();
              
    PreparedStatement ps=con.prepareStatement("select * from users where email=? and password=?");  
  
    ps.setString(1,bean.getEmail());  
    ps.setString(2, bean.getPassword());  
              
    ResultSet rs=ps.executeQuery();  
    status=rs.next();  
    if(status){
        return rs.getInt("user_id");
    }
    }
    catch(Exception e){
    
    }
    return 0;
    }
    
    public static String getUsername(int id){
        String uname="Unknown";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select * from users where user_id=?");  
           ps.setInt(1,id);    
           ResultSet rs=ps.executeQuery();
           rs.next();
           uname=rs.getString("name");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return uname;
    }
    
    public static String getUserphone(int id){
        String var="Phone Number";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select * from users where user_id=?");  
           ps.setInt(1,id);    
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("phone");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static String getUseremail(int id){
        String var="Email";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select * from users where user_id=?");  
           ps.setInt(1,id);    
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("email");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static int getTotalAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads");  
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    public static int getTotalHousesAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Houses");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    public static int getTotalApartmentsAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Apartments");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    public static int getTotalShopsAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Shops");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    
    public static int getTotalHallsAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Wedding Halls");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    
    public static int getTotalCateringAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Catering");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    
    public static int getTotalVehiclesAds()
    {
        int t_ads=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select count(ad_id) as t_ads from ads where category=? ");
           ps.setString(1, "Vehicles");
           ResultSet rs=ps.executeQuery();
           rs.next();
           t_ads=rs.getInt("t_ads");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return t_ads;
        
    }
    
    public static String getTitle(int id)
    {
        String title="title";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select title from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           title=rs.getString("title");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return title;
    }
    
    public static String getLocation(int id)
    {
        String var="location";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select location from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("location");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static String getCategory(int id)
    {
        String var="category";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select category from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("category");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static String getRent(int id)
    {
        String var="rent";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select rent from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("rent");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    
    public static String getPayment(int id)
    {
        String var="payment";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select payment from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("payment");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static String getDescription(int id)
    {
        String var="description";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select description from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("description");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    
    public static String getImg1_url(int id)
    {
        String var="Image 1";
        String savePath="C:/Users/Shahbaz Shoukat/Documents/NetBeansProjects/eRent/web/uploads";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select img1_url from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("img1_url");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return "uploads/" + var;
    }
    
    public static String getImg2_url(int id)
    {
        String var="Image 2";
        String savePath="C:/Users/Shahbaz Shoukat/Documents/NetBeansProjects/eRent/web/uploads";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select img2_url from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("img2_url");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return "uploads/" + var;
    }
    
    
    public static String getImg3_url(int id)
    {
        String var="Image 3";
        String savePath="C:/Users/Shahbaz Shoukat/Documents/NetBeansProjects/eRent/web/uploads";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select img3_url from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("img3_url");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return "uploads/" + var;
    }
    
    
    public static int getViews(int id)
    {
        int var=0;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select views from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getInt("views");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static String getDatetime(int id)
    {
        String var="time";
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select datetime from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getString("datetime");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
    
    public static int getUser_id(int id)
    {
        int var=-1;
        try{
           Connection con= connectionProvider.getCon();  
           PreparedStatement ps=con.prepareStatement("select user_id from ads where ad_id=? ");
           ps.setInt(1, id);
           ResultSet rs=ps.executeQuery();
           rs.next();
           var=rs.getInt("user_id");
        }
        catch(Exception e){
            System.out.println("Got an Exception" + e);
            
        }
        return var;
    }
}
