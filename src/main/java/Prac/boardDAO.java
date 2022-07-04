package Prac;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.stream.IntStream;
import java.util.*;
import Ch09.BookDTO;

public class boardDAO {
	private static  class boardDAOHolder{
		private static final boardDAO INSTANCE = new boardDAO();		
	}
	public static boardDAO getInstance() {
		return boardDAOHolder.INSTANCE;
	}
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "book_ex";
	private String pw = "1234";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private boardDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, id , pw);
			System.out.println("Connected...");
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}
	//게시판 조회
	public ArrayList<boardDTO> Select(int start, int end) {

		ArrayList<boardDTO> list = new ArrayList();

		try {
			pstmt = conn.prepareStatement("select * from (select rownum rnum from board_tbl order by desc) where rnum between ? and ?");
			pstmt.setInt(1,start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();

			boardDTO dto = null;
			while (rs.next()) {
				dto = new boardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setDay(rs.getDate("day"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
	public ArrayList<boardDTO> Select() {

		ArrayList<boardDTO> list = new ArrayList();

		try {
			pstmt = conn.prepareStatement("select * from board_tbl");
			rs = pstmt.executeQuery();

			boardDTO dto = null;
			while (rs.next()) {
				dto = new boardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setDay(rs.getDate("day"));

				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
	
	
	public void Post200(boardDTO dto) {
		try {
			for(int i = 1; i <= 20; i++) {
				pstmt = conn.prepareStatement("insert into board_tbl values(?,?,?,?)");
				pstmt.setInt(1, i);
				pstmt.setString(2, dto.getTitle()+i);
				pstmt.setString(3, dto.getWriter() + i);
				pstmt.setDate(4, dto.getDay());
				pstmt.executeUpdate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		Date today = new Date(0);
		
		boardDTO dto = new boardDTO(0, "제목", "작성", today);
		boardDAO dao = boardDAO.getInstance();
		
		dao.Post200(dto);
	}
	
	
		
}

