package coffee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDAO {
	
	public MemberDTO login(MemberDTO dto) throws Exception {
		
		MemberDTO member = null;
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "select * from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			member = new MemberDTO(rs.getString("id"), rs.getString("password"), rs.getString("name"));
		} else {
		}
		return member;
	}
	
	public void insert(MemberDTO dto) throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/coffee";
		String user = "root";
		String password = "autoset";
		Connection con = DriverManager.getConnection(url, user, password);
		
		String sql = "insert into member values (?,?,?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, dto.getId());
		ps.setString(2, dto.getPassword());
		ps.setString(3, dto.getName());
		ps.executeUpdate();
		
	}
	

}
