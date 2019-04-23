package global.sesoc.shop.dao;

import java.util.List;

import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;
import global.sesoc.shop.vo.Reply;

/**
 * 회원관련 Interface
 */
public interface ReplyMapper {
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

	public int replyWrite(Reply r);

	public List<Reply> selectAll(Reply reply);

	public int replyDelete(Reply reply);
}
