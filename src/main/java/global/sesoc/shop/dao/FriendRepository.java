package global.sesoc.shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.shop.vo.Friend;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.MyRecord;
import global.sesoc.shop.vo.RequestFriend;

@Repository
public class FriendRepository {
	@Autowired
	SqlSession session;
	
	public int insertRecord(MyRecord myRecord) {
		System.out.println(myRecord);
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		int result = mapper.insertRecord(myRecord);	
		return result;
	}
	/**
	 * 전체 유저 조회
	 * @return list 조회된 전체 유저
	 */
	public List<Member> selectMember(String searchItem, String searchWord, int startRecord, int countPerPage) {
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		Map<String, String> map = new HashMap<>();
		
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		System.out.println(rb);
		List<Member> list = mapper.selectMember(map, rb);
		
		return list;
	}
	
	//전체 글 개수 조회
	public int getBoardCount(String searchItem, String searchWord) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		
		Map<String, String> map = new HashMap<>();
		
		map.put("searchItem", searchItem);
		map.put("searchWord", searchWord);
		
		int result = mapper.getTotalBoard(map);
		return result;
	}
	public int friendInsert(Friend f) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		int result = mapper.friendInsert(f);	
		return result;
	}
	public List<Friend> selectFriend(String userid) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		List<Friend> flist = mapper.selectFriend(userid);
		return flist;
	}
	
	public List<Friend> selectWFriend(Friend f) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		List<Friend> flist = mapper.selectWFriend(f);
		return flist;
	}
	
	public int deleteFriend(String friend_id) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		int result = mapper.deleteFriend(friend_id);
		return result;
	}
	
	public int requestFriendInsert(RequestFriend rf) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		int result = mapper.requestFriendInsert(rf);	
		return result;
	}
	public List<RequestFriend> selectRequestFriend(RequestFriend rf) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		List<RequestFriend> rflist = mapper.selectRequestFriend(rf);
		return rflist;
	}
	public int deleteRequestFriend(RequestFriend rrf) {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		int result = mapper.deleteRequestFriend(rrf);
		return result;
	}
	public List<Member> selectAccessUser() {
		FriendMapper mapper = session.getMapper(FriendMapper.class);
		List<Member> flist = mapper.selectAccessUser();
		return flist;
	}
	
}

/*
@Controller  --view랑 연동
@Repository  --db랑 연동
@Service     --로직작업
@Componentt  --bean이랑 (여러가지 잡다)
<bean> 으로 등록되는것은 위의 4가지 +1 
*/