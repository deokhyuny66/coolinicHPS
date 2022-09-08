<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.model.CalcModel"%>
<%
	request.setCharacterEncoding("utf-8");
	System.out.println("calcProc 호출");
	/* ArrayList<String> storeList = new ArrayList<String>(); */
	CalcModel cmd = new CalcModel();
	/* actionDAO actionDAO = new actionDAO(); */
	String storeVal = null;
	String tempVal = null;
	String mtypeVal = null;
	String msizeVal = null;
	String purcheseVal = null;
	String store = request.getParameter("store");
	String temperture = request.getParameter("temperture");
	String mtype = request.getParameter("mtype");
	String msize = request.getParameter("msize");
	String purchese = request.getParameter("purchese");
	
	cmd.setWidVal(request.getParameter("wid"));
	cmd.setVertVal(request.getParameter("vert"));
	cmd.setHegVal(request.getParameter("heg"));

	/* INPUT STORE DATA */	
	if(store.equals("storelist01")){
		cmd.setStoreVal("어패류");
	}else if(store.equals("storelist02")){
		cmd.setStoreVal("화훼류");
	}else if(store.equals("storelist03")){
		cmd.setStoreVal("돈육");
	}else if(store.equals("storelist04")){
		cmd.setStoreVal("채소류");
	}else if(store.equals("storelist05")){
		cmd.setStoreVal("과실류");
	}else if(store.equals("storelist06")){
		cmd.setStoreVal("혼합류");
	}else if(store.equals("storelist07")){
		cmd.setStoreVal("기타");
	}
	
	/* INPUT TEMPERTURE DATA */	
	if(temperture.equals("temp01")){
		cmd.setTempVal("냉장(0 ~ 15℃)");
	}else if(temperture.equals("temp02")){
		cmd.setTempVal("냉동(0 ~ -20℃)");
	}else if(temperture.equals("temp03")){
		cmd.setTempVal("동결(-20 ~ -40℃)");
	}else if(temperture.equals("temp04")){
		cmd.setTempVal("급속동결(-40 ~ -70℃)");
	}
	
	/* INPUT MTYPE DATA */	
	if(mtype.equals("mtype01")){
		cmd.setMtypeVal("오버랩 도어(일반 도어 타입)");
	}else if(mtype.equals("mtype02")){
		cmd.setMtypeVal("수동 슬라이드 편개(한쪽 열림)");
	}else if(mtype.equals("mtype03")){
		cmd.setMtypeVal("수동 슬라이드 양개(양쪽 열림)");
	}else if(mtype.equals("mtype04")){
		cmd.setMtypeVal("자동 슬라이드 편개(한쪽 열림)");
	}else if(mtype.equals("mtype05")){
		cmd.setMtypeVal("자동 슬라이드 양개(양쪽 열림)");
	}
	
	/* INPUT MTYPE DATA */
	if(msize.equals("msize01")){
		cmd.setMsizeVal("평수에 맞게 스탠다드 적용");
	}else if(msize.equals("msize02")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 900*2100*100 (오버랩)");
	}else if(msize.equals("msize03")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 1000*2100*100 (오버랩)");
	}else if(msize.equals("msize04")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 1200*2400*100 (슬라이드 / 편개)");
	}else if(msize.equals("msize05")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 1400*2600*100 (슬라이드 / 편개)");
	}else if(msize.equals("msize06")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 2400*2600*100 (슬라이드 / 양개)");
	}else if(msize.equals("msize07")){
		cmd.setMsizeVal("가로*세로*도어 두께 = 2600*2800*100 (슬라이드 / 양개)");
	}
	
	/* INPUT PURCHESE DATA */
	if(purchese.equals("purchese01")){
		cmd.setPurcheseVal("구입");
	}else if(purchese.equals("purchese02")){
		cmd.setPurcheseVal("렌탈");
	}
	
	/* 
		1. input 기본 값들로 계산 처리 
		2. 계산 처리 한 py,냉동구분으로 조건 던져서 DB 행 조회 결과 가져오기
		3. 전체,바닥면적으로 조건 던져서 DB 행 조회 결과 가져오기
		4. 결과 최종 값들 뿌리기 
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	TEST
	<%= cmd.getPurcheseVal() %>
</body>
</html>