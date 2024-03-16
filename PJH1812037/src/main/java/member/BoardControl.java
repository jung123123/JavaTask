package member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/boardcontrol")
public class BoardControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BoardControl() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		String action = request.getParameter("action");
		System.out.println("action="+action);
		
		if (action.equals("boardForm")) {	//게시판 보기
			
			System.out.println("==list");

			BoardDAO dao = new BoardDAO();
			List<Board> list = dao.getBoardAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			response.sendRedirect("board.jsp");
		}
		else if (action.equals("boardwriterForm")) {

			Board b = new Board();
			MemberKey k = new MemberKey();
			System.out.println("key="+k.getkey());
			String m = b.getWriter();
			System.out.println("getWriter(): "+m);
		
			HttpSession sess = request.getSession();
			sess.setAttribute("m", m);
			
			
			response.sendRedirect("boardwriter.jsp");
		}
		
		else if (action.equals("boardinsert")) {	// 글쓰기
			MemberKey k = new MemberKey();
			System.out.println("key="+k.getkey());
			
			String writer = request.getParameter("writer");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Board b = new Board();
	
			b.setTitle(writer);
			b.setWriter(title);
			b.setContent(content);
			
			BoardDAO dao = new BoardDAO();
			
			dao.insert(b);
			
			List<Board> list = dao.getBoardAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			//View 한테 보냄
			response.sendRedirect("board.jsp");
		}
		
		else if (action.equals("boardlist")) {	// 게시물 보기 
			String bid = request.getParameter("bid");
			String title = request.getParameter("title");
			System.out.println("bid ="+bid);
			System.out.println("title ="+title);
			BoardDAO dao = new BoardDAO();
			Board m = dao.getOne(bid);	//수정 내용 검색 
			
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("m", m);
			
			response.sendRedirect("boardlist.jsp");
		}
		else if (action.equals("boardDelete")) {
			String bid = request.getParameter("bid");
			BoardDAO dao = new BoardDAO();
			dao.deleteOne(bid);
			
			List<Board> list = dao.getBoardAll();	
			
			//결과를 세션 객체에 담아서 보냄
			HttpSession sess = request.getSession();
			sess.setAttribute("list", list);
			
			response.sendRedirect("board.jsp");
			
		}else if (action.equals("boardUpdate")) {	
			System.out.println("boardUpdate");//회원 정보 수정
			String bid = request.getParameter("bid");
			System.out.println(bid);
			String title = request.getParameter("title");
			System.out.println(title);
			String content = request.getParameter("content");
			System.out.println(content);
			
			BoardDAO dao = new BoardDAO();
			dao.updateOne(bid,title,content);	
			
			List<Board> list = dao.getBoardAll();
			
			// 수정 후 모든 리스트를 받아서 화면에 처리
			HttpSession s = request.getSession();
			s.setAttribute("list", list);
				
			response.sendRedirect("board.jsp");
			
		}
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
