<!--����������� � ������� ��� ������. ������ ������ �����������-->
  <%Set mdbo =  Server.CreateObject("ADODB.Connection")%>
<!--� ���������� b ���������� ���������� ���� � �������� ��������� inv-->
<!--��� ������� ���������� �� ����������������� ����� server.cfg � ������������� � ������ �����������-->
<%
  Set servFileStream=servcfg.OpenTextFile(b & "\server.cfg")
  s=servFileStream.ReadLine
  i=servFileStream.ReadLine
  p=servFileStream.ReadLine
  servFileStream.Close
%>
<!--������������� ������ �����������-->
  <%mdbo.ConnectionString="Driver={SQL Server};Server=" & s & ";Trusted_Connection=yes;Database=invest;"
  mdbo.Open ConnectionString%>