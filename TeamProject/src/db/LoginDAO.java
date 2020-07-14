package db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.sql.Statement;
import java.sql.*;	

public class LoginDAO {
	private static LoginDAO instance = new LoginDAO();
	public static LoginDAO getInstance() {
		return instance;		
	}
	private Connection getConnection() throws Exception{
		Connection con=null;
		
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:comp/env");
			DataSource ds = (DataSource) envCtx.lookup("jdbc/jsPSK");
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
		
	}
	//정보수정
	public void updateUser(String user_id, String pwd, String pwdCheck, String name, String nickname, String tel, String email, String gender) throws Exception{
		
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			String sql = "update MEMBER set pwd=?, pwdCheck=?, name=?, nickname=?, tel=?, email=?, gender=? where user_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, pwd);
			pstmt.setString(2, pwdCheck);
			pstmt.setString(3, name);
			pstmt.setString(4, nickname);
			pstmt.setString(5, tel);
			pstmt.setString(6, email);
			pstmt.setString(7, gender);
			pstmt.setString(8, user_id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try { if (pstmt !=null) pstmt.close();
				  if(con!=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
			}
		}
	//회원탈퇴?
	public void deleteUser(String user_id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt=null;
		try {
			con = getConnection ();
			String sql = "delete from MEMBER where user_id = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(pstmt!=null) pstmt.close();
				 if(con!=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
		}
	}
	//회원가입
	public void insertUser(LoginDTO dto) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = getConnection();
			String sql = "insert into MEMBER values(?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getPwdCheck());
			pstmt.setString(4, dto.getName());
			pstmt.setString(5, dto.getNickname());
			pstmt.setString(6, dto.getTel());
			pstmt.setString(7, dto.getEmail());
			pstmt.setString(8, dto.getGender());
			
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(pstmt!=null) pstmt.close();
				 if(con!=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
			}
		}
	
	//listUser
	public ArrayList<LoginDTO> listUser(){
		ArrayList<LoginDTO> dtos = new ArrayList<LoginDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "select * from MEMBER";
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String user_id =rs.getString("user_id");
				String pwd =rs.getString("pwd");
				String pwdcheck =rs.getString("pwdcheck");
				String name =rs.getString("name");
				String nickname =rs.getString("nickname");
				String tel =rs.getString("tel");
				String email =rs.getString("email");
				String gender =rs.getString("gender");
				
				LoginDTO dto = new LoginDTO(user_id, pwd, pwdcheck, name, nickname, tel, email, gender);
				dtos.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {if(rs!=null) rs.close();
				 if(stmt!=null) stmt.close();
				 if(con!=null) con.close();
			}catch(Exception e) {e.printStackTrace();}
			}
			return dtos;
		}
	//로그인
	public int LoginCheck(String user_id, String pwd) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = null;
		int result = 0;
		
		try {
			con = getConnection();
			String sql = "select user_id from MEMBER where user_id=? and pwd=? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				id=rs.getString("user_id");
			}
		} catch(Exception e) {
			e.printStackTrace();
			
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(con != null) con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
        if(id != null) result = 1;
        else result = 0;
        return result;
        
        
    }
	//아이디중복
	public boolean idCheck(String user_id){
		boolean b = false;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			String sql = "select user_id from MEMBER where user_id like ?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			b=rs.next();
		} catch (Exception e) {
			System.out.println("idCheck err : " + e);
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(con!=null)con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
		return b;
	}
}
	
	
	

	
	



	

	
	

