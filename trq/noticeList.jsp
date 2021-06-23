<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>

<!-- 본문 시작 noticeList.jsp -->
<h3>문의사항 목록</h3>
<p><a href="noticeForm.jsp">[글쓰기]</a>
<table>
<tr>
	<th>제목&nbsp;</th>
	<th>작성자&nbsp;</th>
	<th>작성일&nbsp;</th>
	<th>조회수</th>
</tr> 
<%
	//한페이지당 출력할 행의 갯수
	int recordPerPage=5;
	
	ArrayList<tripChoicetrqDTO> list=dao.list3(col, word, nowPage, recordPerPage);
	if(list==null){  
		out.println("<tr>");
		out.println(" <td colspan='4'>");
		out.println("   <strong>관련자료 없음</strong>");
		out.println(" </td>");
		out.println("</tr>");
	}else{
		
		//오늘 날짜를 문자열 "" 만들기
		String today=Utility.getDate();  
		
		for(int i=0; i<list.size(); i++){
			dto=list.get(i);
%>	
	<tr>
			<td style="text-align: left">
<%
				//답변이미지 출력
			for(int n=1; n<dto.getIndent(); n++){
				out.println("<img src='../images/reply.gif'>");
			}//for end
%>
			
				<a href="noticeRead.jsp?trq_no=<%=dto.getTrq_no()%>&col=<%=col%>&word=<%=word%>"><%=dto.getTrq_sub()%></a>
<%
				//오늘 작성한 글제목 뒤에 new이미지 출력
				//작성일(regdt)에서 "년월일"만 자르기 -> 2021-04-27
				String regdt=dto.getRegdt().substring(0,10); // -> "2021-04-27"
				if(regdt.equals(today)){ //작성일과 오늘날짜가 같다면
					out.println("<img src='../images/new.gif'>");		
				}//if () end
				
				//조회수가 10이상이면 hot 이미지 출력
				if(dto.getReadcnt()>=10){
					out.println("<img src='../images/hot.gif'>");
				}//if end
%>				
			</td>
			<td><%=dto.getTu_id()%></td>
			<td><%=dto.getRegdt().substring(0,10)%></td>
			<td><%=dto.getReadcnt()%></td>
		</tr>
<%	
	}//for end
	
		//글갯수
		int totalRecord=dao.count2(col, word);
		out.println("<tr>");
		out.println("  <td colspan='4' style='text-align: center;'> ");
		out.println("  글갯수 : <strong>");
		out.println(totalRecord);
		out.println("  </strong>");
		out.println("  </td>");
		out.println("</tr>"); 
%>
	<!-- 페이지 리스트 시작 -->
	<tr>
		<td colspan="4">
<% 
		String paging=new Paging().paging3(totalRecord, nowPage, recordPerPage, col, word, "noticeList.jsp");
		out.print(paging);
%>
		</td>
	</tr>
	<!-- 페이지 리스트 끝 --> 
	
		<!-- 검색 시작 -->
		<tr>
			<td colspan="4" style="text-align: center; height: 50px">
				<form action="noticeList.jsp" onsubmit="return searchCheck()">
					<select name="col">
						<option value="tu_id">작성자
						<option value="trq_sub">제목
						<option value="trq_con">내용
						<option value="trq_sub_trq_con">제목+내용
					</select>
					<input type="text" name="word" id="word">
					<input type="submit" value="검색" class="btn btn-primary">
				</form>
			</td>
		</tr>
		<!-- 검색 끝 -->
<%
	}//if end
%>
	</table>

<!-- 본문 끝 -->

<%@ include file="../footer.jsp" %>