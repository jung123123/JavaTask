package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MemberDAO {
	
	Connection conn = null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	
	
	public void open() {
		System.out.println("=== open() ==="); 
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL,"sa","1234");	
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void close() {	
		System.out.println("=== close() ===");
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insert(Member m) {	//추가	
	
		System.out.println("=== insert() ==="); 
		open();
		 
		String sql ="insert into member(name,id,pwd,email,phone) values (?,?,?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getName());
			pstmt.setString(2, m.getId());
			pstmt.setString(3, m.getPwd());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			
			pstmt.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public List<Member> getMemberAll() {	// 목록(전체)
		System.out.println("=== getMemberAll() ===");
		open();

		String sql = "select * from member";
		
		List<Member> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();	
			
			while(rs.next()) {
				Member m = new Member();
				m.setName(rs.getString("name"));
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				
				list.add(m);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
		
	}
	
	
	public Boolean loginCheck(String id,String pwd) {	
		System.out.println("=== loginCheck() ===");
		open();
		
		String sql = "select * from member where id = ? and pwd = ?";
		
		Boolean lr = false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			ResultSet rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				lr = true;
			}
			else {	
				lr = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return lr;
		
	}	
	
	public void deleteOne(String id) {		//제거
		System.out.println("=== deleteOne() ==="); 
		open();
		//3단계 
		String sql ="delete from member where id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1,id);
		
			
			pstmt.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	public  Member getOne(String id) {
		System.out.println("=== getOne() ===");
		open();
		
		String sql = "select * from member where id = ?";
		
		Member m = new Member();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();	
			while(rs.next()) {
				m.setName(rs.getString("name"));
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return m;
	
	}
		
	public void updateOne(String id,String phone,String email) {		// 업데이트 (변경)
		System.out.println("=== updateOne() ==="); 
		open();
		//3단계 
		String sql ="update member set phone = ? ,email = ? where id = ?  ";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1,phone);
			pstmt.setString(2,email);
			pstmt.setString(3,id);
		
			pstmt.executeUpdate();	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	public Boolean idCheck(String id) {	
		System.out.println("=== idCheck() ===");
		open();
		
		String sql = "select * from member where id = ?";
		
		Boolean lr = false;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				lr = true;
			}
			else {	
				lr = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return lr;
	}	
	
	public Member idkey(String id) {	
		System.out.println("===  idkey() ===");
		open();
		
		String sql = "select * from member where id = ?";
		
		
		Member m = new Member();
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();	
				
			while(rs.next()) {
				m.setId(rs.getString("id"));
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return m;
	}	
	
	
	
}
