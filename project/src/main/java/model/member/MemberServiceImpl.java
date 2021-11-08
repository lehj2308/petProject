package model.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("memberService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MybatisMemberDAO memberDAO;
	
	@Override
	public void insertMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDAO.insertMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDAO.updateMember(vo);
	}
	

	@Override
	public void updateImgMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDAO.updateImgMember(vo);
		
	}

	@Override
	public void deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		memberDAO.deleteMember(vo);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		// TODO Auto-generated method stub

			return memberDAO.getMember(vo);

	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDAO.getMemberList(vo);
	}
	
}
