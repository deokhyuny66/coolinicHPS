<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page import="java.util.*"%>
<%@ page import="com.freeze.model.CalcModel"%>
<%
	request.setCharacterEncoding("utf-8");
	System.out.println("calcProc ȣ��");
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
		cmd.setStoreVal("���з�");
	}else if(store.equals("storelist02")){
		cmd.setStoreVal("ȭ�ѷ�");
	}else if(store.equals("storelist03")){
		cmd.setStoreVal("����");
	}else if(store.equals("storelist04")){
		cmd.setStoreVal("ä�ҷ�");
	}else if(store.equals("storelist05")){
		cmd.setStoreVal("���Ƿ�");
	}else if(store.equals("storelist06")){
		cmd.setStoreVal("ȥ�շ�");
	}else if(store.equals("storelist07")){
		cmd.setStoreVal("��Ÿ");
	}
	
	/* INPUT TEMPERTURE DATA */	
	if(temperture.equals("temp01")){
		cmd.setTempVal("����(0 ~ 15��)");
	}else if(temperture.equals("temp02")){
		cmd.setTempVal("�õ�(0 ~ -20��)");
	}else if(temperture.equals("temp03")){
		cmd.setTempVal("����(-20 ~ -40��)");
	}else if(temperture.equals("temp04")){
		cmd.setTempVal("�޼ӵ���(-40 ~ -70��)");
	}
	
	/* INPUT MTYPE DATA */	
	if(mtype.equals("mtype01")){
		cmd.setMtypeVal("������ ����(�Ϲ� ���� Ÿ��)");
	}else if(mtype.equals("mtype02")){
		cmd.setMtypeVal("���� �����̵� ��(���� ����)");
	}else if(mtype.equals("mtype03")){
		cmd.setMtypeVal("���� �����̵� �簳(���� ����)");
	}else if(mtype.equals("mtype04")){
		cmd.setMtypeVal("�ڵ� �����̵� ��(���� ����)");
	}else if(mtype.equals("mtype05")){
		cmd.setMtypeVal("�ڵ� �����̵� �簳(���� ����)");
	}
	
	/* INPUT MTYPE DATA */
	if(msize.equals("msize01")){
		cmd.setMsizeVal("����� �°� ���Ĵٵ� ����");
	}else if(msize.equals("msize02")){
		cmd.setMsizeVal("����*����*���� �β� = 900*2100*100 (������)");
	}else if(msize.equals("msize03")){
		cmd.setMsizeVal("����*����*���� �β� = 1000*2100*100 (������)");
	}else if(msize.equals("msize04")){
		cmd.setMsizeVal("����*����*���� �β� = 1200*2400*100 (�����̵� / ��)");
	}else if(msize.equals("msize05")){
		cmd.setMsizeVal("����*����*���� �β� = 1400*2600*100 (�����̵� / ��)");
	}else if(msize.equals("msize06")){
		cmd.setMsizeVal("����*����*���� �β� = 2400*2600*100 (�����̵� / �簳)");
	}else if(msize.equals("msize07")){
		cmd.setMsizeVal("����*����*���� �β� = 2600*2800*100 (�����̵� / �簳)");
	}
	
	/* INPUT PURCHESE DATA */
	if(purchese.equals("purchese01")){
		cmd.setPurcheseVal("����");
	}else if(purchese.equals("purchese02")){
		cmd.setPurcheseVal("��Ż");
	}
	
	/* 
		1. input �⺻ ����� ��� ó�� 
		2. ��� ó�� �� py,�õ��������� ���� ������ DB �� ��ȸ ��� ��������
		3. ��ü,�ٴڸ������� ���� ������ DB �� ��ȸ ��� ��������
		4. ��� ���� ���� �Ѹ��� 
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