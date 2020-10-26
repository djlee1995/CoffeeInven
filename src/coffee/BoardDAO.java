package coffee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	
	
	public List<BoardDTO> selectBoardList(String table) throws Exception {
		
		List<BoardDTO> list = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "select * from "+table +" order by reg_dtime desc";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			BoardDTO bdto = new BoardDTO();
			bdto.setPidx(rs.getInt("pidx"));
			bdto.setTitle(rs.getString("title"));
			bdto.setContent(rs.getString("content"));
			bdto.setWriter(rs.getString("writer"));
			bdto.setFile_img(rs.getString("file_img"));
			bdto.setFile_mov(rs.getString("file_mov"));
			bdto.setReg_dtime(rs.getTimestamp("reg_dtime"));
			list.add(bdto);
		}
		
		return list;
	}
	
	public List<BoardDTO> selectBoardReplyList(String table, int pidx) throws Exception {
		
		List<BoardDTO> list = new ArrayList<>();
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "select * from "+table +" where pidx = ? order by reg_dtime desc";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, pidx);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			
			BoardDTO bdto = new BoardDTO();
			bdto.setRidx(rs.getInt("ridx"));
			bdto.setPidx(rs.getInt("pidx"));
			bdto.setContent(rs.getString("content"));
			bdto.setWriter(rs.getString("writer"));
			bdto.setReg_dtime(rs.getTimestamp("reg_dtime"));
			list.add(bdto);
		}
		
		return list;
	}
	
	public BoardDTO selectBoardOne(String table, int pidx) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "select * from "+table +" where pidx = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, pidx);
		
		ResultSet rs = ps.executeQuery();
		
		BoardDTO bdto = null;
		
		if(rs.next()) {
			
			bdto = new BoardDTO();
			bdto.setPidx(rs.getInt("pidx"));
			bdto.setTitle(rs.getString("title"));
			bdto.setContent(rs.getString("content"));
			bdto.setWriter(rs.getString("writer"));
			bdto.setFile_img(rs.getString("file_img"));
			bdto.setFile_mov(rs.getString("file_mov"));
			bdto.setReg_dtime(rs.getTimestamp("reg_dtime"));
		}
		
		return bdto;
	}
	
	public void insertBoard(String table, BoardDTO dto) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "insert into "+table+" (title, content, file_img, file_mov, writer) values (?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setString(1, dto.getTitle());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getFile_img());
		ps.setString(4, dto.getFile_mov());
		ps.setString(5, dto.getWriter());
		
		ps.executeUpdate();
		
	}
	
	public void deleteBoard(String table, int pidx) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "delete from  "+table+" where pidx = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, pidx);
		
		ps.executeUpdate();
		
	}
	
	public void deleteBoardReply(String table, int ridx) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "delete from  "+table+" where ridx = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, ridx);
		
		ps.executeUpdate();
		
	}
	
	public void insertBoardReply(String table, BoardDTO dto) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "insert into "+table+" (pidx, content, writer) values (?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		
		ps.setInt(1, dto.getPidx());
		ps.setString(2, dto.getContent());
		ps.setString(3, dto.getWriter());
		
		ps.executeUpdate();
		
	}
	
	
}
