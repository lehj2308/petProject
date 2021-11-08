package model.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisMemberDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MemberVO vo) {
		mybatis.insert("dao.insertMember", vo);
	}
	public void updateMember(MemberVO vo) {
		mybatis.update("dao.updateMember", vo);
	}
	public void updateImgMember(MemberVO vo) {
		mybatis.update("dao.updateImgMember", vo);
	}
	public void deleteMember(MemberVO vo) {
		mybatis.delete("dao.deleteMember", vo);
	}
	public MemberVO getMember(MemberVO vo) {
		return (MemberVO)mybatis.selectOne("dao.getMember", vo);
	}
	public List<MemberVO> getMemberList(MemberVO vo){
	      return mybatis.selectList("dao.getMemberList",vo);
	}

}