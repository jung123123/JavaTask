package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement pstmt;
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/test";
	
	
	public void open() {
		System.out.println("=== open() ==="); 
		try {
			Class.forName(JDBC_DRIVER);	//1단계
			conn = DriverManager.getConnection(JDBC_URL,"sa","1234");	//2단계
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
	public void close() {
		System.out.println("=== close() ==="); //6단계
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	//public void insert(String name, String id, String pwd, String email, String phone) {
	public void insert(Board b) {			//글쓰기
		
		System.out.println("=== Boardinsert() ==="); 
		open();
	
		String sql ="insert into board(title,content,writer) values (?,?,?)";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, b.getTitle());
			pstmt.setString(2, b.getContent());
			pstmt.setString(3, b.getWriter());
		
			
			pstmt.executeUpdate();	//4 단계
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public List<Board> getBoardAll() {			//리스트
		System.out.println("=== getBoardAll() ===");
		open();
		
		String sql = "select bid,title,writer from board";
		
		List<Board> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();	//4 단계
			
			while(rs.next()) {
				Board b = new Board();
				
				b.setBid(rs.getInt("bid"));
				b.setTitle(rs.getString("title"));
				b.setWriter(rs.getString("writer"));
				list.add(b);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
		
	}
	

	
	public void deleteOne(String bid) {
		System.out.println("=== deleteOne() ==="); 
		open();
		//3단계 
		String sql ="delete from board where bid = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1,bid);
		
			
			pstmt.executeUpdate();	//4 단계
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	public  Board getOne(String bid) {
		System.out.println("=== getOne() ===");
		open();
		
		String sql = "select * from board where bid = ?";
		
		Board b = new Board();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bid);
			
			ResultSet rs = pstmt.executeQuery();	//4 단계
			
			while(rs.next()) {	
				b.setBid(rs.getInt("bid"));
				b.setTitle(rs.getString("title"));
				b.setContent(rs.getString("content"));	
				b.setWriter(rs.getString("writer"));
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return b;
	
	}
	
	public void updateOne(String bid,String title,String content) {
		System.out.println("=== updateOne() ==="); 
		open();
		//3단계 
		String sql ="update board set title = ? ,content = ? where bid = ?  ";
		
		try {
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1,title);
			pstmt.setString(2,content);
			pstmt.setString(3,bid);
		
			pstmt.executeUpdate();	//4 단계
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
}
