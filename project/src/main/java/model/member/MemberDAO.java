/*package model.member;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

class MemberRowMapper implements RowMapper<MemberVO> {

	@Override
	public MemberVO mapRow(ResultSet rs, int rowNum) throws SQLException {
		MemberVO user = new MemberVO();
		user.setmId(rs.getString("mId"));
		user.setmName(rs.getString("mName"));
		user.setmPw(rs.getString("mPw"));
		user.setmPh(rs.getString("mPh"));
		user.setmAddr1(rs.getString("mAddr1"));
		user.setmAddr2(rs.getString("mAddr2"));
		user.setmAddr3(rs.getString("mAddr3"));
		user.setmEmail(rs.getString("mEmail"));
		user.setmImg(rs.getString("mImg"));
		return user;
	}

}

@Repository("memberDAO")
public class MemberDAO {

	private String insertSQL = "INSERT INTO member(mId,mName,mPw,mPh,mAddr1,mAddr2,mAddr3,mEmail,mImg) VALUES(?,?,?,?,?,?,?,?,?)";
	private String updateSQL = "UPDATE member SET mName = ?, mPw = ?, mPh = ?, mAddr1 = ?, mAddr2 = ?, mAddr3 = ?, mEmail = ? WHERE mId = ?";
	private String updateImgSQL = "UPDATE member SET mImg = ? WHERE mId = ?";
	private String deleteSQL = "DELETE FROM member WHERE mId = ?";
	private String getMemberSQL = "SELECT * FROM member WHERE mId = ?";
	private String getMemberListSQL = "SELECT * FROM member";

	@Autowired
	private JdbcTemplate jdbcTemplate;

	// 회원가입
	public void insertMember(MemberVO vo) {
		Object[] args = { vo.getmId(), vo.getmName(), vo.getmPw(), vo.getmPh(), vo.getmAddr1(), vo.getmAddr2(),
				vo.getmAddr3(), vo.getmEmail(), vo.getmImg() };
		jdbcTemplate.update(insertSQL, args);
	}

	// 회원 정보 수정
	public void updateMember(MemberVO vo) {
		Object[] args = { vo.getmName(), vo.getmPw(), vo.getmPh(), vo.getmAddr1(), vo.getmAddr2(), vo.getmAddr3(),
				vo.getmEmail(), vo.getmId() };
		jdbcTemplate.update(updateSQL, args);
	}

	// 회원 사진 수정
	public void updateImgMember(MemberVO vo) {
		Object[] args = { vo.getmImg(), vo.getmId() };
		jdbcTemplate.update(updateImgSQL, args);
	}

	// 회원 탈퇴
	public void deleteMember(MemberVO vo) {
		jdbcTemplate.update(deleteSQL, vo.getmId());
	}

	// 로그인
	public MemberVO getMember(MemberVO vo) {
		Object[] args = { vo.getmId() };
		MemberVO data = jdbcTemplate.queryForObject(getMemberSQL, args, new MemberRowMapper());
		return data;
	}

	public List<MemberVO> getMemberList(MemberVO vo) {
		return jdbcTemplate.query(getMemberListSQL, new MemberRowMapper());
	}

}
*/