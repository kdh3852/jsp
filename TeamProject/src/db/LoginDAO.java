package db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.util.ArrayList;
import java.sql.Statement;


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
	public void deleteUser(String id) throws Exception{
		Connection con = null;
		PreparedStatement pstmt=null;
		try {
			con = getConnection ();
			String sql = "delete from MEMBER where id = ? ";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
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
}
	

	
	

