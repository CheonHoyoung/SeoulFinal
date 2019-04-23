package global.sesoc.shop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import global.sesoc.shop.vo.Friend;
import global.sesoc.shop.vo.Member;
import global.sesoc.shop.vo.RequestFriend;

/**
 * 회원관련 Interface
 */
public interface FriendMapper {
	public int insert(Member member);

	public int getTotalBoard(Map<String, String> map); // 한페이지에 7개씩 

	public List<Member> selectMember(Map<String, String> map, RowBounds rb);

	public int deleteFriend(String friend_id);

	public int friendInsert(Friend f);

	public List<Friend> selectFriend(String userid);

	public int requestFriendInsert(RequestFriend rf);

	public List<RequestFriend> selectRequestFriend(RequestFriend rf);

	public int deleteRequestFriend(RequestFriend rrf);

	public List<Friend> selectWFriend(Friend f);

	public List<Member> selectAccessUser();
}
