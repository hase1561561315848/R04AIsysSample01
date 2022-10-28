package jp.jc21.t.yoshizawa.WEB01;

import java.io.IOException;
import java.net.URISyntaxException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResultServlet
 */
@WebServlet("/sentimentresult")
public class SentimentResultServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SentimentResultServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String string = "生姜焼定食";
		request.setAttribute("string", string);
		try {
			Language1 result = Sentiment.getSentiment(string);
			String message1 = String.valueOf(result.documents[0].confidenceScores.positive);
			String message2 = String.valueOf(result.documents[0].confidenceScores.neutral);
			String message3 = String.valueOf(result.documents[0].confidenceScores.negative);
//			?ConfidenceScores message = result.documents[0].confidenceScores;
			request.setAttribute("message1", message1);
			request.setAttribute("message2", message2);
			request.setAttribute("message3", message3);
			request.getRequestDispatcher("/WEB-INF/jsp/sentimentresult.jsp").forward(request, response);
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String string = request.getParameter("string");
		request.setAttribute("string", string);

		try {
			Language1 result = Sentiment.getSentiment(string);
			
			String message1 = String.valueOf(result.documents[0].confidenceScores.positive);
			String message2 = String.valueOf(result.documents[0].confidenceScores.neutral);
			String message3 = String.valueOf(result.documents[0].confidenceScores.negative);
			
//			float message1 = result.documents[0].confidenceScores.positive;
//			float message2 = result.documents[0].confidenceScores.neutral;
//			float message3 = result.documents[0].confidenceScores.negative;
//			ConfidenceScores message = result.documents[0].confidenceScores;
			request.setAttribute("message1", message1);
			request.setAttribute("message2", message2);
			request.setAttribute("message3", message3);
			request.getRequestDispatcher("/WEB-INF/jsp/sentimentresult.jsp").forward(request, response);
		} catch (URISyntaxException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}

	}

}