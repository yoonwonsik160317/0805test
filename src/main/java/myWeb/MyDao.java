package myWeb;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.JDBCUtil;

public class MyDao {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String insert_member = "insert into mymember(name, pss, tell) values(?, ?, ?)";
	private String check_member = "select count(*) as cnt from mymember where name = ? and pss = ?";
	private String check_signin = "select count(*) as cnt from mymember where pss = ?";
	
	//로그인 체크 
	public boolean checkLogin(String name, String pss) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(check_member);
			pstmt.setString(1, name);
			pstmt.setString(2, pss);
			rs  = pstmt.executeQuery();
			rs.next();
			if(rs.getInt("cnt") == 1) {
				return true;
			}
		} catch (SQLException e	) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return false;
	}
	
	//회원 가입
	public void signUp(String name, String pss, String tell) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(insert_member);
			pstmt.setString(1, name);
			pstmt.setString(2, pss);
			pstmt.setString(3, tell);
			pstmt.executeUpdate();
			
		} catch (SQLException e ) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
	}
	
	//회원 가입 체크
	/*
	public boolean checkSign(String pss) {
		conn = JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(check_signin);
			pstmt.setString(1, pss);
			rs = pstmt.executeQuery();
			rs.next()
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	*/
	//보드 등록
	
	//단건 조회
	
	//다중 조회
	
	//게시판 등록
	
	//
}
