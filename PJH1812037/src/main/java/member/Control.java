package member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import member.MemberDAO;
import member.Member;




@WebServlet("/control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Control() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
//		String uri = request.getRequestURI();
//		System.out.println(uri);
//		String path = request.getContextPath();
//		System.out.println(path);
//		String command = uri.substring(path.length()+1);
//		System.out.println("요청기능 : " + command);
//
//		if(command.equals("check.do")) {
//					
//			String id =request.getParameter("id");
//			MemberDAO dao = new MemberDAO();
//			
//			Boolean check = dao.idCheck(id);//회원 검사
//			
//			PrintWriter out = response.getWriter();
//			
//			out.print(check);
//			
//			if(check) {
//				System.out.println("id 중복");
//				
//			}else {
//				System.out.println("중복 아님");
//			}
//		
//		}
		
		
		String action = request.getParameter("action");
		System.out.println("action="+action);
		
		if (action.equals("loginForm")) {	//로그인 폼
			response.sendRedirect("login.jsp");
		}
		else if (action.equals("joinForm")) {	//회원 가입 폼
			response.sendRedirect("join.jsp");
		}
		else if (action.equals("mainForm")) {	//메인 폼
			response.sendRedirect("main.jsp");
		}
		
		else if (action.equals("login")) {	//로그인 
			String id =request.getParameter("id");
			String pwd =request.getParameter("pwd");
			
			MemberDAO dao = new MemberDAO();
			
			Boolean lr = dao.loginCheck(id,pwd);//회원 검사
			
			HttpSession session = request.getSession();
			
			if(lr) {
				System.out.println("회원 맞음");
				
				MemberKey k = new MemberKey();
				k.setKey(id);
				
				System.out.println("key="+k.getkey());
				
				session.setAttribute("id", id);
				
				
				
				
				Member m = dao.idkey(id);	//수정 내용 검색 
				
				
				//결과를 세션 객체에 담아서 보냄
				HttpSession sess = request.getSession();
				sess.setAttribute("m", m);
				Board b = new Board();			// 아이디로 글쓴이 만들기
				b.setWriter(id);
				
				System.out.println("getWriter(): " + b.getWriter());
				
			}else {
				System.out.println("회원 아님");
			}
			
			response.sendRedirect("main.jsp");
			
		}if(action.equals("join")) {	//회원 가입
			//회원가입 
			
			System.out.println("join");
			
			String name = request.getParameter("na");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
			Member m = new Member();
			m.setName(name);
			m.setId(id);
			m.setPwd(pwd);
			m.setEmail(email);
			m.setPhone(phone);
			
			MemberDAO dao = new MemberDAO();
			//dao.insert(name, id, pwd, email, phone);
			dao.insert(m);
			
			List<Member> list = dao.getMemberAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			//View 한테 보냄
			response.sendRedirect("main.jsp");
			
		}else if (action.equals("logout")) {	//로그 아웃
			HttpSession session = request.getSession();
			session.removeAttribute("id");

			response.sendRedirect("main.jsp");
			}
		else if (action.equals("memberForm")) {	//회원리스트 폼
				response.sendRedirect("member.jsp");
			}
		
		else if (action.equals("list")) {
			//회원 리스트 보기
			
			System.out.println("==list");

			MemberDAO dao = new MemberDAO();
			List<Member> list = dao.getMemberAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			//View 한테 보냄
			response.sendRedirect("member.jsp");
			
		}else if (action.equals("updateForm")) {	//회원 수정 form
			System.out.println("==updateForm");

			String id = request.getParameter("id");
			
			MemberDAO dao = new MemberDAO();
			Member m = dao.getOne(id);	//수정 내용 검색 
			
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("m", m);
			
			//View 한테 보냄
			response.sendRedirect("memberUpdateForm.jsp");
			
		}else if (action.equals("update")) {		//회원 정보 수정
			System.out.println("==update");
			String id = request.getParameter("id");
			
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			
			MemberDAO dao = new MemberDAO();
			dao.updateOne(id,phone,email);	//id 에 해당하는 사람의 정보 수정
			
			List<Member> list = dao.getMemberAll();	
			
			// 수정 후 모든 리스트를 받아서 화면에 처리
			HttpSession s = request.getSession();
			s.setAttribute("list", list);
				
			response.sendRedirect("member.jsp");
			
		}else if (action.equals("delete")) {
			String id = request.getParameter("id");
			MemberDAO dao = new MemberDAO();
			dao.deleteOne(id);
			
			List<Member> list = dao.getMemberAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			response.sendRedirect("member.jsp");
			
		}
		
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
