<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.list.action.actionDTO"%>
<%
	request.setCharacterEncoding("utf-8");
	/* ArrayList<String> storeList = new ArrayList<String>(); */
	actionDTO actionDTO = new actionDTO();
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
	
	actionDTO.setWidVal(request.getParameter("wid"));
	actionDTO.setVertVal(request.getParameter("vert"));
	actionDTO.setHegVal(request.getParameter("heg"));

	/* INPUT STORE DATA */	
	if(store.equals("storelist01")){
		actionDTO.setStoreVal("어패류");
	}else if(store.equals("storelist02")){
		actionDTO.setStoreVal("화훼류");
	}else if(store.equals("storelist03")){
		actionDTO.setStoreVal("돈육");
	}else if(store.equals("storelist04")){
		actionDTO.setStoreVal("채소류");
	}else if(store.equals("storelist05")){
		actionDTO.setStoreVal("과실류");
	}else if(store.equals("storelist06")){
		actionDTO.setStoreVal("혼합류");
	}else if(store.equals("storelist07")){
		actionDTO.setStoreVal("기타");
	}
	
	/* INPUT TEMPERTURE DATA */	
	if(temperture.equals("temp01")){
		actionDTO.setTempVal("냉장(0 ~ 15℃)");
	}else if(temperture.equals("temp02")){
		actionDTO.setTempVal("냉동(0 ~ -20℃)");
	}else if(temperture.equals("temp03")){
		actionDTO.setTempVal("동결(-20 ~ -40℃)");
	}else if(temperture.equals("temp04")){
		actionDTO.setTempVal("급속동결(-40 ~ -70℃)");
	}
	
	/* INPUT MTYPE DATA */	
	if(mtype.equals("mtype01")){
		actionDTO.setMtypeVal("오버랩 도어(일반 도어 타입)");
	}else if(mtype.equals("mtype02")){
		actionDTO.setMtypeVal("수동 슬라이드 편개(한쪽 열림)");
	}else if(mtype.equals("mtype03")){
		actionDTO.setMtypeVal("수동 슬라이드 양개(양쪽 열림)");
	}else if(mtype.equals("mtype04")){
		actionDTO.setMtypeVal("자동 슬라이드 편개(한쪽 열림)");
	}else if(mtype.equals("mtype05")){
		actionDTO.setMtypeVal("자동 슬라이드 양개(양쪽 열림)");
	}
	
	/* INPUT MTYPE DATA */
	if(msize.equals("msize01")){
		actionDTO.setMsizeVal("평수에 맞게 스탠다드 적용");
	}else if(msize.equals("msize02")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 900*2100*100 (오버랩)");
	}else if(msize.equals("msize03")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 1000*2100*100 (오버랩)");
	}else if(msize.equals("msize04")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 1200*2400*100 (슬라이드 / 편개)");
	}else if(msize.equals("msize05")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 1400*2600*100 (슬라이드 / 편개)");
	}else if(msize.equals("msize06")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 2400*2600*100 (슬라이드 / 양개)");
	}else if(msize.equals("msize07")){
		actionDTO.setMsizeVal("가로*세로*도어 두께 = 2600*2800*100 (슬라이드 / 양개)");
	}
	
	/* INPUT PURCHESE DATA */
	if(purchese.equals("purchese01")){
		actionDTO.setPurcheseVal("구입");
	}else if(purchese.equals("purchese02")){
		actionDTO.setPurcheseVal("렌탈");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	가로: <%=wid %><br>
	세로: <%=vert %><br>
	높이: <%=heg %><br>
	저장품목: <%=storeVal %><br>
	희망온도: <%=tempVal %><br>
	출입구형태: <%=mtypeVal %><br>
	구입형태: <%=purcheseVal %> 
	출입구사이즈: <%=actionDTO.getMsizeVal() %><br>
--%>
</body>
</html>
