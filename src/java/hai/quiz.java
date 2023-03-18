/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package hai;
import java.util.*;
import java.sql.*;
import java.security.*;
import java.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Ganesh
 */

public class quiz {
    public Connection con=null;
    
    public void connect()
    {
         
     try{
      Class.forName("org.apache.derby.jdbc.ClientDriver");
        con=DriverManager.getConnection("jdbc:derby://localhost:1527/Quiz","Ganesh","Ganesh@123");
 
     }
     catch(Exception e)
     {
         System.out.println(e);   
     }
        
    }
    
     public ArrayList<ArrayList> data(int[] input)
    {
        connect();
        ArrayList<ArrayList> x = new ArrayList();
        for(int i=0;i<10;i++)
        {
            try{
                int a = input[i];
               PreparedStatement pst = con.prepareStatement("select question from question where id=?");
               pst.setInt(1, a);
               ResultSet rst = pst.executeQuery();
               while(rst.next())
               {
                   ArrayList<String> y = new ArrayList();

                   y.add(rst.getString(1));

                   x.add(y);
               }
                con.commit();
           con.close();
                 }
           catch(Exception e )
           {
               System.out.println(e);
           }
            
        }
        return x;
    
}
    public int[] unique(int total, int limit){
      ArrayList<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<total; i++) {
            list.add(i);
        }
        Collections.shuffle(list);
        int[] b= new int[limit];
        for (int i=0; i<limit; i++) {
            b[i]=(list.get(i))+1;
        }
        
        return b;
   }
    public int fetch(int id, int opid)
    {
        connect();
        int y=0;
        try
        {
            PreparedStatement pst = con.prepareStatement("select answerid from questionbank where id =? and opid=?");
            pst.setInt(1, id);
           pst.setInt(2, opid);
           ResultSet rst  = pst.executeQuery();
           rst.next();
           y = rst.getInt(1);
           con.commit();
           con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        return y;
    }
    
    public int fetchcpp(int id, int opid)
    {
        connect();
        int y=0;
        try
        {
            PreparedStatement pst = con.prepareStatement("select answerid from cppquestions where id =? and opid=?");
            pst.setInt(1, id);
           pst.setInt(2, opid);
           ResultSet rst  = pst.executeQuery();
           rst.next();
           y = rst.getInt(1);
           con.commit();
           con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        return y;
    }
      public int fetchjava(int id, int opid)
    {
        connect();
        int y=0;
        try
        {
            PreparedStatement pst = con.prepareStatement("select answerid from javaquestions where id =? and opid=?");
            pst.setInt(1, id);
           pst.setInt(2, opid);
           ResultSet rst  = pst.executeQuery();
           rst.next();
           y = rst.getInt(1);
           con.commit();
           con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        return y;
    }
      
        public int fetchpython(int id, int opid)
    {
        connect();
        int y=0;
        try
        {
            PreparedStatement pst = con.prepareStatement("select answerid from pythonquestions where id =? and opid=?");
            pst.setInt(1, id);
           pst.setInt(2, opid);
           ResultSet rst  = pst.executeQuery();
           rst.next();
           y = rst.getInt(1);
           con.commit();
           con.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
            
        return y;
    }
      
    public float percentage(String count)
    {
        int num = Integer.parseInt(count);
       // System.out.println(num);
        float result;
        
        result = (num * 100 / 5) ;
        //System.out.println(n);
        
       // System.out.println(result);
        return result;
    }
      
    public void update(int id , int opid)
    {
        connect();
        try{
         PreparedStatement bst = con.prepareStatement("update questionbank set answer = ? where id= ? and opid=?");
         bst.setInt(1, 1);
         bst.setInt(2, id);
         bst.setInt(3,opid);
         bst.executeUpdate();
          con.commit();
           con.close();
         
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
                                                   
    }
     public int check(String username, String password,String email)
    {
        
     connect();
     int y=0;
       try
        {
            
            PreparedStatement pst = con.prepareStatement("select count(*) from login where username =? and password=? and email=? ");
            pst.setString(1, username);
            pst.setString(2, password);
              pst.setString(3, email);

            ResultSet r = pst.executeQuery();
            r.next();
            y = r.getInt(1);
            con.commit();
            con.close();
            
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
       return y;
    }
     
     public int login(String username, String password, String name, int age, String dob, String email,int mobile)
     {
      connect();
      int y=0;
      try{
          PreparedStatement pst = con.prepareStatement("select count(*) from login");
          ResultSet rst = pst.executeQuery();
          rst.next();
          y = rst.getInt(1) + 1;
          String z = Integer.toString(y);
          PreparedStatement ast = con.prepareStatement("insert into login values(?,?,?,?,?,?,?,?) ");
          ast.setInt(1, y);
          ast.setString(2, username);
          ast.setString(3, password);
          ast.setString(4, name);
          ast.setInt(5, age);
          ast.setString(6, dob);
          ast.setString(7, email);
          ast.setInt(8, mobile);
          
            ast.executeUpdate();
          PreparedStatement pst1 = con.prepareStatement("create table " + username + " (Id int primary key, Test varchar(50) not null, Score int not null )");
          System.out.println(y);
            pst1.executeUpdate();
            
            
          con.commit();
          con.close();
          
          
      }
      catch(Exception e){
          System.out.println(e);
     }
      return y;
     }
     public String username(String email, String password)
     {
         connect();
         String y ="";
         try{
             PreparedStatement pst = con.prepareStatement("select username from login where email=? and password=?");
             pst.setString(1, email);
             pst.setString(2, password);
             ResultSet rst = pst.executeQuery();
             rst.next();
             y=rst.getString(1);
             System.out.println(y);
             con.commit();
             con.close();
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         return y;
     }
    
     public void report(String course, String count)
     {
         connect();
         int y=0;
         String test="";
         try
         {
             PreparedStatement pst = con.prepareStatement("select count(*) from my_report");
             ResultSet rst = pst.executeQuery();
             rst.next();
             y = rst.getInt(1)+1;
             PreparedStatement ast = con.prepareStatement("insert into my_report values(?,?,?,?)");
             test="Test-" + y;
             ast.setInt(1, y);
             ast.setString(2, test);
             ast.setString(3, course);
             ast.setString(4, count+ " out of "+ 5);
             ast.executeUpdate();
             con.commit();
             con.close();
             
         }
         
         catch(Exception e)
         {
             System.out.println(e);   
         }
     }
     
     public int emailcheck(String email)
     {
         connect();
         int y=0;
         try{
             PreparedStatement pst = con.prepareStatement("select count(*) from login where email=?" );
             pst.setString(1, email);
             ResultSet rst=pst.executeQuery();
             rst.next();
             y=rst.getInt(1);
             con.commit();
             con.close();
         }
         catch(Exception e)
         {
             System.out.println(e);}
                
         return y;
     }
     
     
      public String inreport(String username, String subject, int count)
     {
         connect();
         int y=0;
        String k="";
         try
         {
             String sum = Integer.toString(count);
             PreparedStatement pst = con.prepareStatement("select count(*) from "+ username );
             ResultSet rst = pst.executeQuery();
             rst.next();
             y = rst.getInt(1)+1;
             PreparedStatement ast = con.prepareStatement("insert into "+ username + " values(?,?,?)");
             
             ast.setInt(1, y);
            
             ast.setString(2, subject);
             ast.setString(3, sum +" out of "+ 5);
             ast.executeUpdate();
             PreparedStatement pst1 = con.prepareStatement("select test from "+username+" where id = ?");
             pst1.setInt(1, y);
             ResultSet rst1 = pst1.executeQuery();
             rst1.next();
             k = rst1.getString(1);
             System.out.println(k);
             con.commit();
             con.close();
             
         }
         
         catch(Exception e)
         {
             System.out.println(e);   
         }
         return k;
     }
     
     public int usernamecheck(String email)
     {
         connect();
         int y=0;
         try{
             PreparedStatement pst = con.prepareStatement("select count(*) from login where username=?" );
             pst.setString(1, email);
             ResultSet rst=pst.executeQuery();
             rst.next();
             y=rst.getInt(1);
             con.commit();
             con.close();
         }
         catch(Exception e)
         {
             System.out.println(e);}
                
         return y;
     }
    
     public ArrayList<ArrayList> generatereport(String username)
     {
         connect();
         ArrayList<ArrayList> x = new ArrayList();
         try
         {
             PreparedStatement pst = con.prepareStatement("select * from " + username);
            ResultSet rst = pst.executeQuery();
            while(rst.next())
            {
                ArrayList<String> y = new ArrayList();
                y.add(Integer.toString(rst.getInt(1)));
                y.add(rst.getString(2));
                y.add(rst.getString(3));
                x.add(y);
                
            }
      
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         
         return x;
     }
     
      public static void main(String[] args) {
        quiz obj = new quiz();
        int y = obj.emailcheck("saraswathy877@gmail.com");
          //System.out.println(y);
         int re = obj.login("G","afa","DD",23,"3","asfa",111);
         // System.out.println(re);
        String name = obj.username("saraswathy877@gmail.com", "Ganesh@123");
          //System.out.println(name);
    }
}
   
