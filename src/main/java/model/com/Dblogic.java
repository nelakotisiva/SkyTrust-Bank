package model.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Dbconn.com.DbConccetion;

public class Dblogic {
static	Connection con = null;
    public static boolean Accountcreation(String name, String email, long accnum, long phone, String password) {
        
        PreparedStatement psmt = null;
        int count = 0;

        try {
            con = DbConccetion.giveConncetion();
            String iqry = "INSERT INTO userdetailsdb VALUES (?,?,?,?,?,0.0)";
            psmt = con.prepareStatement(iqry);
            psmt.setString(1, name);
            psmt.setString(2, email);
            psmt.setLong(3, accnum);
            psmt.setLong(4, phone);
            psmt.setString(5, password);  /* */
   
            count = psmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (psmt != null) psmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return count > 0;
    }
    
    public static User Validation(String email,String password) {
    	int count;
		con=DbConccetion.giveConncetion();
		String sqry="select*from userdetailsdb where email=? and password=?";
		try {
			PreparedStatement psmt=con.prepareStatement(sqry);
			psmt.setString(1, email);
			psmt.setString(2, password);
			ResultSet rs=psmt.executeQuery();
			
			if(rs.next()) {
				User ud=new User();
				ud.setName(rs.getString(1));
				ud.setEmail(rs.getString(2));
				ud.setAccnum(rs.getLong(3));
				ud.setPhone(rs.getLong(4));
				ud.setPassword(rs.getString(5));
				return ud;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;    	
    }
    public static double getBalance(String email) {
    	String sql="select balance from userdetailsdb where email=?";
    	con=DbConccetion.giveConncetion();
    	try {
			PreparedStatement psmt=con.prepareStatement(sql);
			psmt.setString(1, email);
			ResultSet rs=psmt.executeQuery();
			if(rs.next()) {
				return rs.getDouble("balance");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	
		return 0;
    	
    }
    public static boolean updateBalance(double amount, String email) throws SQLException {
        String uqry = "UPDATE userdetailsdb SET balance = balance + ? WHERE email = ?";
        con = DbConccetion.giveConncetion();
        PreparedStatement psmt = con.prepareStatement(uqry);
        psmt.setDouble(1, amount);
        psmt.setString(2, email);
        return psmt.executeUpdate() > 0;
    }
    public static void addTransaction(String email, String type, double amount, String description)
            throws SQLException {
        String sql = "INSERT INTO transcation(email,type,amount,description) VALUES (?,?,?,?)";
        con = DbConccetion.giveConncetion();
        PreparedStatement psmt = con.prepareStatement(sql);
        psmt.setString(1, email);
        psmt.setString(2, type);
        psmt.setDouble(3, amount);
        psmt.setString(4, description);
        psmt.executeUpdate();
    }
    public static boolean Withdraw(String email,double amount) throws SQLException {
    	String wqry="update userdetailsdb set balance=balance - ? where email= ? ";
    	con = DbConccetion.giveConncetion();
        PreparedStatement psmt = con.prepareStatement(wqry);
        psmt.setDouble(1, amount);
        psmt.setString(2, email);
        return psmt.executeUpdate() > 0;
    	
    }
    public static double getBalance(Connection con,String email) {
		String query="select balance from userdetailsdb where email=?";
		try {
			PreparedStatement psmt=con.prepareStatement(query);
			psmt.setString(1, email);
			ResultSet rs=psmt.executeQuery();
			if(rs.next()) {
				return rs.getDouble("balance");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
    	return 0.0;
    	
    }
    public static boolean updateBalance(Connection con,String email,double amount) throws SQLException {
    	String qry="update userdetailsdb set balance=balance+? where email=?";
    	con=DbConccetion.giveConncetion();
    	PreparedStatement psmt=con.prepareStatement(qry);
    	psmt.setString(1, email);
        psmt.setDouble(1, amount);
        psmt.setString(2, email);
        return psmt.executeUpdate() > 0;
    	
    }
    public static List<Transcation> getTransactionsByEmail(String email) throws SQLException {
        String sql = "SELECT * FROM transcation WHERE email = ?";
        Connection con = DbConccetion.giveConncetion();
        PreparedStatement psmt = con.prepareStatement(sql);
        psmt.setString(1, email);

        ResultSet rs = psmt.executeQuery();
        List<Transcation> transactionList = new ArrayList<>();

        while (rs.next()) {
            Transcation trans = new Transcation();
            trans.setId(rs.getInt("id"));
            trans.setEmail(rs.getString("email"));
            trans.setType(rs.getString("type"));
            trans.setAmount(rs.getDouble("amount"));
            trans.setTrans_date(rs.getTimestamp("trans_date"));
            trans.setDescription(rs.getString("description"));
            transactionList.add(trans);
        }

        return transactionList;
    }


    
}
