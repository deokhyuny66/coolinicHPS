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
		actionDTO.setStoreVal("���з�");
	}else if(store.equals("storelist02")){
		actionDTO.setStoreVal("ȭ�ѷ�");
	}else if(store.equals("storelist03")){
		actionDTO.setStoreVal("����");
	}else if(store.equals("storelist04")){
		actionDTO.setStoreVal("ä�ҷ�");
	}else if(store.equals("storelist05")){
		actionDTO.setStoreVal("���Ƿ�");
	}else if(store.equals("storelist06")){
		actionDTO.setStoreVal("ȥ�շ�");
	}else if(store.equals("storelist07")){
		actionDTO.setStoreVal("��Ÿ");
	}
	
	/* INPUT TEMPERTURE DATA */	
	if(temperture.equals("temp01")){
		actionDTO.setTempVal("����(0 ~ 15��)");
	}else if(temperture.equals("temp02")){
		actionDTO.setTempVal("�õ�(0 ~ -20��)");
	}else if(temperture.equals("temp03")){
		actionDTO.setTempVal("����(-20 ~ -40��)");
	}else if(temperture.equals("temp04")){
		actionDTO.setTempVal("�޼ӵ���(-40 ~ -70��)");
	}
	
	/* INPUT MTYPE DATA */	
	if(mtype.equals("mtype01")){
		actionDTO.setMtypeVal("������ ����(�Ϲ� ���� Ÿ��)");
	}else if(mtype.equals("mtype02")){
		actionDTO.setMtypeVal("���� �����̵� ��(���� ����)");
	}else if(mtype.equals("mtype03")){
		actionDTO.setMtypeVal("���� �����̵� �簳(���� ����)");
	}else if(mtype.equals("mtype04")){
		actionDTO.setMtypeVal("�ڵ� �����̵� ��(���� ����)");
	}else if(mtype.equals("mtype05")){
		actionDTO.setMtypeVal("�ڵ� �����̵� �簳(���� ����)");
	}
	
	/* INPUT MTYPE DATA */
	if(msize.equals("msize01")){
		actionDTO.setMsizeVal("����� �°� ���Ĵٵ� ����");
	}else if(msize.equals("msize02")){
		actionDTO.setMsizeVal("����*����*���� �β� = 900*2100*100 (������)");
	}else if(msize.equals("msize03")){
		actionDTO.setMsizeVal("����*����*���� �β� = 1000*2100*100 (������)");
	}else if(msize.equals("msize04")){
		actionDTO.setMsizeVal("����*����*���� �β� = 1200*2400*100 (�����̵� / ��)");
	}else if(msize.equals("msize05")){
		actionDTO.setMsizeVal("����*����*���� �β� = 1400*2600*100 (�����̵� / ��)");
	}else if(msize.equals("msize06")){
		actionDTO.setMsizeVal("����*����*���� �β� = 2400*2600*100 (�����̵� / �簳)");
	}else if(msize.equals("msize07")){
		actionDTO.setMsizeVal("����*����*���� �β� = 2600*2800*100 (�����̵� / �簳)");
	}
	
	/* INPUT PURCHESE DATA */
	if(purchese.equals("purchese01")){
		actionDTO.setPurcheseVal("����");
	}else if(purchese.equals("purchese02")){
		actionDTO.setPurcheseVal("��Ż");
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
	����: <%=wid %><br>
	����: <%=vert %><br>
	����: <%=heg %><br>
	����ǰ��: <%=storeVal %><br>
	����µ�: <%=tempVal %><br>
	���Ա�����: <%=mtypeVal %><br>
	��������: <%=purcheseVal %> 
	���Ա�������: <%=actionDTO.getMsizeVal() %><br>
--%>
</body>
</html>
