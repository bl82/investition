<!--��������� ��������� ������ ��� �������� � ������� ��������, ��������� ��� ���������� ����������������� ����� (��� SQL �������)-->
 <%Set servcfg=Server.CreateObject("Scripting.FileSystemObject")%>
<!--������� ��������� �������� � ����������� ������ ��� ����������� � ������ ������-->
  <Meta http-equiv="Content-Type" Content="text/Html; Charset=windows-1251">
  <Link Rel="SHORTCUT ICON" Href="https://intranet/inv/invfavicon.ico">
<!--��������� ������ ������ ����� ���������� �������� �� ������ ������ ������������, ���� ������ ������� Cookie-->
  <%b= Server.MapPath("\inv")%>
<!--� ������ ���� ������ Cookie  ������, �� ����� ���������� �������� �� ����� ������������ Style.cfg-->
  <%If Request.Cookies("StyleInv")="" Then
   Set servFileStream=servcfg.OpenTextFile(b & "\style.cfg")
   s=servFileStream.ReadLine
   servFileStream.Close%>

   <Link Rel="stylesheet" Href="<%=s%>" type="text/css">
  <%Else
   s=Request.Cookies("StyleInv")%>
   <Link Rel="stylesheet" Href="<%=s%>" type="text/css">
  <%End If%>