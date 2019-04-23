package global.sesoc.shop.dao;

import java.util.List;

import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;

/**
 * 회원관련 Interface
 */
public interface MemberMapper {
	/**
	 * 회원 가입
	 * @param member
	 * @return
	 */
	public int insert(Member member);
	
	/**
	 * 회원 정보 수정
	 * @param member
	 * @return
	 */
	public int update(Member member);
	/**
	 * 로그인, 
	 * @param member
	 * @return
	 */
	public Member loginMember(Member member);

	public int insertRecord(MyRecord myRecord);

	public List<MyRecord> selectRecord(String userid);

	public int deleteRecord(int recordnum);
}
