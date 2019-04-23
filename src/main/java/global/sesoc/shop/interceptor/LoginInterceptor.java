package global.sesoc.shop.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/*
 * 1) HandlerInterceptorAdapter를 상속받아 클래스 정의
 * 2) preHandle() 오버라이딩
 * 3) servlet-context.xml에 1)에서 작성한 클래스를 빈 등록
 *    , 인터셉터 처리할 경로 등록
 */

public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("Interceptor prehandle()");
		//로그인을 하지 않은 사람은 로그인을 하도록 유도한다
		//로그인 여부 확인(리퀘스트를 통해 얻어옴)
		HttpSession session = request.getSession();
		String loginId = (String)session.getAttribute("loginId");		
		
		//로그인 했으면 true, 로그인을 안했으면 로그인 화면으로 리다이렉트
		if(loginId == null) {
			String contextPath = request.getContextPath();
			// el문에서는 ${PageContext.request.contextPath}
			response.sendRedirect(contextPath+"/Login");
			return false;
		}
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("Interceptor posthandle()");
		
		
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
