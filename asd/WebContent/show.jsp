<%@ page contentType="text/html;charset=gb2312" %>
<%@ page import="java.util.*" import="java.text.SimpleDateFormat"%>
<%! public String handleStr(String s) {
       try {  byte [] bb= s.getBytes("iso-8859-1");
              s = new String(bb);
       }
       catch(Exception exp){}
       return s;
    }
%>

<HTML><body>
  <% Vector v=(Vector)application.getAttribute("Mess");
  SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
  
     for(int i=0;i<v.size();i++) {
        String message=(String)v.elementAt(i);
        String []a =message.split("#");              
        out.print("��������:<br>"+handleStr(a[2]));
        out.print("<br>");
        out.println(df.format(new Date()));
        out.print("<br>--------------<br>");
     } 
  %>
 <a href="index.jsp"> �������ת<a>
</body></HTML>
