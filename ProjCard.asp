<html>
<Head>
<%b= Server.MapPath("\")%>
<%if request.Cookies("StyleInv")="" then%>
<%set servcfg=Server.CreateObject("Scripting.FileSystemObject")%>
<%set servFileStream=servcfg.OpenTextFile(b & "\style.cfg")
  s=servFileStream.ReadLine
  servFileStream.Close%>
<link rel="stylesheet" href="<%=s%>" type="text/css">
<%else%>
<%s=request.Cookies("StyleInv")%>
<link rel="stylesheet" href="<%=s%>" type="text/css">
<%End if%>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<title>
Invest-IT!on: PROJEKTI KAART
</title>
<SCRIPT LANGUAGE="JavaScript">
function onKeyPress () {
var keycode;
if (window.event) keycode = window.event.keyCode;
else if (e) keycode = e.which;
else return true;
if (keycode == 13) {
newWindow ('Help.mht','','','','scrollbars');
return false
}
return true 
}
document.onkeypress = onKeyPress;

function change(name,name2,name3,name4)
{
document.links[1].href=name;
document.links[2].href=name2;
document.links[3].href=name3;
document.links[4].href=name4;
}
var win = null;
function newWindow(mypage,myname,w,h,features) {
  var winl = 0;
  var wint = 02;
  if (winl < 0) winl = 0;
  if (wint < 0) wint = 0;
  var settings = 'height=' + h + ',';
  settings += 'width=' + w + ',';
  settings += 'top=' + wint + ',';
  settings += 'left=' + winl + ',';
  settings += features;
  win = window.open(mypage,myname,settings);
  win.window.focus();
}
</script>
<script type="text/javascript">
function confirmClose() {
    if (confirm("Kas tahate panema see aken kinni?")) {
      parent.close();
    }

}
</script>
<SCRIPT LANGUAGE="VBScript" FOR="btnk"> 

Sub btnk_OnClick
  Dim TheForm
  Set TheForm = Document.forms("ValidForm2")
     MyVar=MsgBox("Kas4 tahate kustuta see projekt???",VbYesNo)
	If myVar=6 then     
        TheForm.Submit
        End if
End Sub
Sub btnk2_OnClick
  Dim CEForm
  Set CEForm = Document.forms("ValidForm3")
     MyVar2=MsgBox("Kas3 tahate kustuta see projekt???",VbYesNo)
	If myVar2=6 then     
        CEForm.Submit
        End if
End Sub
</SCRIPT>
</Head>
<body class="Card" background="icons/back.gif">
<%dim m(12)%>
<%m(1)="January"%>
<%m(2)="February"%>
<%m(3)="Mart"%>
<%m(4)="April"%>
<%m(5)="May"%>
<%m(6)="June"%>
<%m(7)="July"%>
<%m(8)="August"%>
<%m(9)="September"%>
<%m(10)="October"%>
<%m(11)="November"%>
<%m(12)="December"%>
<%Set Nol=Server.CreateObject("MSWC.NextLink")%>
<%b= Server.MapPath("\")%>
<%set mdbo =  Server.CreateObject("ADODB.Connection")%>
<%set servcfg=Server.CreateObject("Scripting.FileSystemObject")
  set servFileStream=servcfg.OpenTextFile(b & "\server.cfg")
  s=servFileStream.ReadLine
  i=servFileStream.ReadLine
  p=servFileStream.ReadLine
  servFileStream.Close%>
<%mdbo.ConnectionString="Driver={SQL Server};Server=" & s & ";Trusted_Connection=yes;Database=invest;UID=;PWD=;"%>
<%mdbo.Open ConnectionString%>
<%If Request.QueryString("ye")<>"" Then%>
<%proc=request.QueryString("ye") & request.QueryString("entt") & request.QueryString("pco")%>
<%Else%>
<%If Request.Form("btn")="Ava" Then%>
<%proc=request.Form("ye") & request.Form("entt") & request.Form("pco")%>
<%Else%>
<%If Request.Form("btn")="*" Then%>
<%proc=Request.Form("yir") & MID(request.QueryString("pc"),5,10)%>
<%Else%>
<%proc=request.QueryString("pc")%>
<%srt=Request.QueryString("sr")%>
<%zo=Request.QueryString("y")%>
<%np=Request.QueryString("e3")%>
<%pb=Request.QueryString("em")%>
<%so=Request.QueryString("so")%>
<%co=Request.QueryString("s")%>
<%n=Request.QueryString("no")%>
<%If request.Form("btn")="Sisestus" Then%>
<%proc= Mid(proc,1,5) & request.Form("prc2")%>
<%End IF%>
<%End IF%>
<%End If%>
<%End IF%>
<%If len(proc)=5 Then%>
Projekt ei olnud valitud!
<%Else%>
<p align="Center"><a href="#null" class="Headlink" onClick="confirmClose()">PROJEKTI KAART</a>



<%If request.Form("btn")="Lisa kirje" or request.Form("btn2")="Lisa kirje" Then%>
<%set mdboae = Server.CreateObject("ADODB.Command")%>
<%set mdborae = Server.CreateObject("ADODB.Recordset")%>
<%mdboae.ActiveConnection = mdbo%>
<%a=Request.Form("en")%>
<%l=len(a)%>
<%sl=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl=sl & "&otilde;"%>
<%Case 228%>
<%sl=sl & "&auml;"%>
<%Case 246%>
<%sl=sl & "&ouml;"%>
<%Case 252%>
<%sl=sl & "&uuml;"%>
<%Case 213%>
<%sl=sl & "&Otilde;"%>
<%Case 196%>
<%sl=sl & "&Auml;"%>
<%Case 214%>
<%sl=sl & "&Ouml;"%>
<%Case 220%>
<%sl=sl & "&Uuml;"%>
<%Case Else%>
<%sl=sl & c%>
<%END SELECT%>
<%Next%>
<%a=Request.Form("efn")%>
<%l=len(a)%>
<%sl1=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl1=sl1 & "&otilde;"%>
<%Case 228%>
<%sl1=sl1 & "&auml;"%>
<%Case 246%>
<%sl1=sl1 & "&ouml;"%>
<%Case 252%>
<%sl1=sl1 & "&uuml;"%>
<%Case 213%>
<%sl1=sl1 & "&Otilde;"%>
<%Case 196%>
<%sl1=sl1 & "&Auml;"%>
<%Case 214%>
<%sl1=sl1 & "&Ouml;"%>
<%Case 220%>
<%sl1=sl1 & "&Uuml;"%>
<%Case Else%>
<%sl1=sl1 & c%>
<%END SELECT%>
<%Next%>
<%a=Request.Form("tn")%>
<%l=len(a)%>
<%sl2=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl2=sl2 & "&otilde;"%>
<%Case 228%>
<%sl2=sl2 & "&auml;"%>
<%Case 246%>
<%sl2=sl2 & "&ouml;"%>
<%Case 252%>
<%sl2=sl2 & "&uuml;"%>
<%Case 213%>
<%sl2=sl2 & "&Otilde;"%>
<%Case 196%>
<%sl2=sl2 & "&Auml;"%>
<%Case 214%>
<%sl2=sl2 & "&Ouml;"%>
<%Case 220%>
<%sl2=sl2 & "&Uuml;"%>
<%Case Else%>
<%sl2=sl2 & c%>
<%END SELECT%>
<%Next%>
<%mdboae.CommandText="INSERT INTO Worker (EmplName,EmplFname,TitleName) VALUES ('" & sl & "', '" & sl1 & "', '" & sl2 & "')"%>
<%mdborae.Open mdboae%>
<%End If%>



<%set mdboe = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdboe.ActiveConnection = mdbo%>
<%mdboe.CommandText="EXEC years @PI=" & Mid(proc,6,5)%>
<%mdbor.Open mdboe%>
<form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Select size=1 name="yir">
<%do until mdbor.EOF%>
<option value="<%=mdbor("Yearr")%>"><%=mdbor("Yearr")%> m.a.</option>
<%mdbor.Movenext%>
<%Loop%>
</select>
<input type="Submit" size="4" name="btn" value="*" class="card">
</form>
<%mdbor.Close%>
</p>
<%set mdboen = Server.CreateObject("ADODB.Command")%>
<%set mdboren = Server.CreateObject("ADODB.Recordset")%>
<%mdboen.ActiveConnection = mdbo%>
<%mdboen.CommandText="SELECT * from Enterprise WHERE Enterprise='" & Mid(proc,5,1) & "'"%>
<%mdboren.Open mdboen%>


<%If Request.Form("btn")<>"Muuda" Then%>
<td class="card">
<%If mdboren.EOF<>"True" Then%>
<b>Ettev&otilde;te: <font color="0000FF"><%=mdboren("EDescr")%></font></b>
<%Else%>
Rohkem Ettev&otilde;te pole.
<%End If%>
</td>
<%End If%>
<%mdboren.Close%>
<%mdboen.CommandText="SELECT * from Enterprise"%>
<%mdboren.Open mdboen%>


<%nex=Mid(proc,6,5)%>
<%nex=nex+1%>
<%pron=Mid(proc,1,5) & nex%>
<%nex=nex-2%>
<%prov=Mid(proc,1,5) & nex%>
<%net=Mid(proc,5,1)%>
<%net=net+1%>
<%prot=Mid(proc,1,4) & net & Mid(proc,6,5)%>
<%If net=1 Then%>
<%net=1%>
<%else%>
<%net=net-2%>
<%End If%>
<%prod=Mid(proc,1,4) & net & Mid(proc,6,5)%>

<%set mdboco = Server.CreateObject("ADODB.Command")%>
<%set mdborco = Server.CreateObject("ADODB.Recordset")%>
<%mdboco.ActiveConnection = mdbo%>

<%dea=Year(Request.Form("dea")) & "-" & Month(Request.Form("dea")) & "-" & Day(Request.Form("dea"))%>
<%dba=Year(Request.Form("dba")) & "-" & Month(Request.Form("dba")) & "-" & Day(Request.Form("dba"))%>

<%If Request.QueryString("del")="1" then%>
<%ya=Year(Date())%>
<%mo=Month(Date())%>
<%da=Day(Date())%>
<%zz=mo-04%>
<%If zz>0 Then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=ya-1%>
<%End If%>

<%set mdbodp = Server.CreateObject("ADODB.Command")%>
<%set mdbordp = Server.CreateObject("ADODB.Recordset")%>
<%mdbodp.ActiveConnection = mdbo%>
<%mdbodp.CommandText="DELETE Main WHERE Pid = '" & Mid(proc,6,5) & "' AND yearr='" & Mid(proc,1,4) & "'"%>
<%mdbordp.Open mdbodp%>
<%End if%>

<%If request.QueryString("fd")<>""  or request.Form("btn")="*" or request.Form("btn")="Lisa eritingimus" or request.Form("btn")="Sisestus" or request.Form("btn")="Submit" or request.Form("btn")="Muuda" or request.Form("btn")="Vaata" or (request.Form("btn")="" and request.QueryString("n")="" and request.Form("btn2")="" AND request.QueryString("deh")="" AND request.QueryString("d")="" and Request.Querystring("e")="" and request.QueryString("nn")="" AND request.QueryString("ne")="" and (request.QueryString("nm")="" or request.QueryString("nm")<>"neo" and request.QueryString("nm")<>"oli" )) or request.Form("btn")="Salvesta" or request.Form("btn")="Kohaldama muutused" or request.Form("btn")="Kohaldama" or request.Form("btn")="Ava" Then%>
<%If request.Form("btn")="Kohaldama" Then%>
<%set mdboa = Server.CreateObject("ADODB.Command")%>
<%set mdbora = Server.CreateObject("ADODB.Recordset")%>
<%mdboa.ActiveConnection = mdbo%>

<%mdboa.CommandText="INSERT INTO Status (StatusID, DateBegin, DateEnd, LinkToFile, EmployeeID) VALUES ('" & Request.Form("sta") & "', '" & dba & "', '" & dea & "', '" & Request.Form("ltfa") & "', '" & Request.Form("ema") & "')"%>
<%mdbora.Open mdboa%>

<%set mdbosc = Server.CreateObject("ADODB.Command")%>
<%set mdborsc = Server.CreateObject("ADODB.Recordset")%>
<%mdbosc.ActiveConnection = mdbo%>
<%set mdbosp = Server.CreateObject("ADODB.Command")%>
<%set mdborsp = Server.CreateObject("ADODB.Recordset")%>
<%mdbosp.ActiveConnection = mdbo%>

<%mdbosc.CommandText="SELECT * FROM Status"%>
<%mdborsc.Open mdbosc%>

<%Do until Mdborsc.EOF%>
<%sch=Mdborsc("HistID")%>
<%Mdborsc.moveNext%>
<%Loop%>

<%mdbosp.CommandText="INSERT INTO statProj (HistId, Pid) VALUES ('" & sch & "', '" & Mid(Proc,6,5) & "')"%>
<%mdborsp.Open mdbosp%>

<%End If%>

<%If request.Form("btn")="Kohaldama muutused" Then%>
<%set mdboa = Server.CreateObject("ADODB.Command")%>
<%set mdbora = Server.CreateObject("ADODB.Recordset")%>
<%mdboa.ActiveConnection = mdbo%>
<%dc=Month(Request.Form("dcol")) & "." & Day(Request.Form("dcol")) & "." & Year(Request.Form("dcol"))%>
<%de=Month(Request.Form("dcnl")) & "." & Day(Request.Form("dcnl")) & "." & Year(Request.Form("dcnl"))%>
<%mdboa.CommandText="INSERT INTO Contracts (ContractNo, DateOfConcl, DateOfEnding, EmployeeID, SummOfContr) VALUES ('" & Request.Form("cntl") & "', '" & dc & "', '" & de & "', '" & Request.Form("empll") & "', '" & Request.Form("sucl") & "')"%>
<%mdbora.Open mdboa%>

<%set mdbosp = Server.CreateObject("ADODB.Command")%>
<%set mdborsp = Server.CreateObject("ADODB.Recordset")%>
<%mdbosp.ActiveConnection = mdbo%>

<%mdbosp.CommandText="INSERT INTO CompData (ContractNo, CompanyId, Pid) VALUES ('" & Request.Form("cntl") & "', '" & Request.Form("cmpl") & "', '" & Mid(proc,6,5) & "')"%>
<%mdborsp.Open mdbosp%>

<%End If%>

<%If request.Form("btn")="Lisa eritingimus" Then%>
<%set mdbo1 = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdbo1.ActiveConnection = mdbo%>
<%mdbo1.CommandText="INSERT INTO FaktProj (FaktorID,PID,Basis) VALUES(" & Request.Form("eri") & ", " & Mid(proc,6,5) &  ", '" & Request.Form("bas") & "')"%>
<%mdbor.Open mdbo1%>
<%END IF%>
<%If request.QueryString("fd")<>"" Then%>
<%set mdbo1 = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdbo1.ActiveConnection = mdbo%>
<%mdbo1.CommandText="DELETE FROM FaktProj WHERE PID=" & Mid(proc,6,5) &  " AND FaktorID=" & request.QueryString("fd")%>
<%mdbor.Open mdbo1%>
<%END IF%>
<%If request.Form("btn")="Salvesta" Then%>

<%set mdbo1 = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdbo1.ActiveConnection = mdbo%>
<%mdbo1.CommandText="SELECT * from sta WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdbor.Open mdbo1%>
<%set mdboct = Server.CreateObject("ADODB.Command")%>
<%set mdborct = Server.CreateObject("ADODB.Recordset")%>
<%mdboct.ActiveConnection = mdbo%>
<%mdboct.CommandText="SELECT * from sta WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdborct.Open mdboct%>


<%set mdbosv = Server.CreateObject("ADODB.Command")%>
<%set mdborsv = Server.CreateObject("ADODB.Recordset")%>
<%mdbosv.ActiveConnection = mdbo%>
<%i=1%>
<%ay="yr" & i%>
<%a0="ps" & i%>

<%mdbosv.CommandText="UPDATE Main SET PastSum=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='C' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="1k" & i%>
<%mdbosv.CommandText="UPDATE Main SET Ikvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='C' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="2k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='C' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="3k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='C' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="4k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IVkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='C' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%i=2%>
<%ay="yr" & i%>
<%a0="ps" & i%>
<%mdbosv.CommandText="UPDATE Main SET PastSum=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='F' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="1k" & i%>
<%mdbosv.CommandText="UPDATE Main SET Ikvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='F' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="2k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='F' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="3k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='F' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="4k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IVkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='F' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%i=3%>
<%ay="yr" & i%>
<%a0="ps" & i%>
<%mdbosv.CommandText="UPDATE Main SET PastSum=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='P' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="1k" & i%>
<%mdbosv.CommandText="UPDATE Main SET Ikvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='P' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="2k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='P' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="3k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IIIkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='P' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="4k" & i%>
<%mdbosv.CommandText="UPDATE Main SET IVkvartal=" & Request.Form(a0) & " WHERE Pid='" & Mid(proc,6,5) & "' AND IDentifier='P' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(Proc,5,1) & "'"%>
<%mdborsv.Open mdbosv%>
<%i=1%>

<%Do until mdbor.EOF%>
<%a0="st" & i%>
<%az="hih" & i%>
<%mdbosv.CommandText="UPDATE Status SET StatusID='" & Request.Form(a0) & "' WHERE HistID='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%w=Request.Form("datb" & i)%>
<%dbg=MID(w,4,2) & "/" & MID(w,1,2) & "/" & MID(w,7,4)%>
<%mdbosv.CommandText="UPDATE Status SET DateBegin='" & dbg & "' WHERE HistID='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%w=Request.Form("date" & i)%>
<%den=MID(w,4,2) & "/" & MID(w,1,2) & "/" & MID(w,7,4)%>
<%mdbosv.CommandText="UPDATE Status SET DateEnd='" & den & "' WHERE HistID='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="ltf" & i%>
<%mdbosv.CommandText="UPDATE Status SET LinkToFile='" & Request.Form(a0) & "' WHERE HistID='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="em" & i%>
<%mdbosv.CommandText="UPDATE Status SET EmployeeID='" & Request.Form(a0) & "' WHERE HistID='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%mdbor.MoveNext%>
<%i=i+1%>
<%Loop%>
<%jj=1%>
<%Do until mdborct.EOF%>
<%a1="cnt" & jj%>
<%az="chi" & jj%>
<%mdbosv.CommandText="UPDATE Contracts SET ContractNo='" & Request.Form(a1) & "' WHERE ContractNo='" & Request.Form(az) & "'"%>
<%mdborsv.Open mdbosv%>
<%a0="cmp" & jj%>
<%a2="coi" & jj%>
<%mdbosv.CommandText="UPDATE CompData SET CompanyID='" & Request.Form(a0) & "' WHERE CompanyID='" & Request.Form(a2) & "' AND Pid='" &  Mid(proc,5,6) & "' AND ContractNo='" & Request.Form(a1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a3="dcn" & jj%>
<%a4="dco" & jj%>
<%dn=Month(Request.Form(a3)) & "." & Day(Request.Form(a3)) & "." & Year(Request.Form(a3))%>
<%=Month(Request.Form(a3))%>
<%mdbosv.CommandText="UPDATE Contracts SET DateOfEnding='" & dn & "' WHERE ContractNo='" & Request.Form(a1) & "'"%>
<%mdborsv.Open mdbosv%>
<%db=Month(Request.Form(a4)) & "." & Day(Request.Form(a4)) & "." & Year(Request.Form(a4))%>
<%mdbosv.CommandText="UPDATE Contracts SET DateOfConcl='" & db & "' WHERE ContractNo='" & Request.Form(a1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a5="empl" & jj%>
<%mdbosv.CommandText="UPDATE Contracts SET EmployeeId='" & Request.Form(a5) & "' WHERE ContractNo='" & Request.Form(a1) & "'"%>
<%mdborsv.Open mdbosv%>
<%a6="suc" & jj%>
<%mdbosv.CommandText="UPDATE Contracts SET SummOfContr='" & Request.Form(a6) & "' WHERE ContractNo='" & Request.Form(a1) & "'"%>
<%mdborsv.Open mdbosv%>
<%mdborct.MoveNext%>
<%jj=jj+1%>
<%Loop%>

<%End If%>

<%If request.Form("btn")="Sisestus" Then%>
<%set mdbou = Server.CreateObject("ADODB.Command")%>
<%set mdboru = Server.CreateObject("ADODB.Recordset")%>
<%mdbou.ActiveConnection = mdbo%>
<%a=Request.Form("prn")%>
<%l=len(a)%>
<%sl=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl=sl & "&otilde;"%>
<%Case 228%>
<%sl=sl & "&auml;"%>
<%Case 246%>
<%sl=sl & "&ouml;"%>
<%Case 252%>
<%sl=sl & "&uuml;"%>
<%Case 213%>
<%sl=sl & "&Otilde;"%>
<%Case 196%>
<%sl=sl & "&Auml;"%>
<%Case 214%>
<%sl=sl & "&Ouml;"%>
<%Case 220%>
<%sl=sl & "&Uuml;"%>
<%Case Else%>
<%sl=sl & c%>
<%END SELECT%>
<%Next%>

<%mdbou.CommandText="UPDATE Codes SET ProjName ='" & sl & "' WHERE Pid='" & Request.Form("prc2") & "'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET ProjCode ='" & Request.Form("prc") & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr>='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%set mdboc4 = Server.CreateObject("ADODB.Command")%>
<%set mdborc4 = Server.CreateObject("ADODB.Recordset")%>
<%mdboc4.ActiveConnection = mdbo%>
<%mdboc4.CommandText="SELECT OracleCode From Main WHERE Yearr='" & Request.Form("pry2") & "' and pid <> '" & Request.Form("prc2") & "'"%>
<%mdborc4.Open mdboc4%>
<%sta=0%>
<%Do until mdborc4.EOF%>
<%If mdborc4("OracleCode")=Request.Form("orc") Then%>
<%sta=1%>
<%Else%>
<%End If%>
<%mdborc4.Movenext%>
<%Loop%>
<%If sta=0 or Request.Form("orc")="" Then%>
<%If sta=0 then%>
<%oc=Left(Request.Form("orc"),3) & Right(Request.Form("orc"),3)%>
<%else%>
<%oc="N/A"%>
<%End If%>
<%mdbou.CommandText="UPDATE Main SET OracleCode ='" & oc & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr>='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%Else%>
<b> On vaja sisestama jalle unikaalne Oracle kood, sest kood mis te oli sisestanud on sama mis juba oli s&uuml;steemis!</b>
<%End If%>

<%mdbou.CommandText="UPDATE Main SET Enterprise ='" & Request.Form("ent") & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%If Request.Form("Ren") = "on" then%>
<%renov=1%>
<%Else%>
<%renov=0%>
<%End If%>
<%mdbou.CommandText="UPDATE Main SET RenovBlock = " & renov & " WHERE Pid='" & Request.Form("prc2") & "' AND Yearr='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET RusName = '" & Request.Form("dsc") & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr>='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET Comment = '" & Request.Form("dsc2") & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr>='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET FootNote = '" & Request.Form("dscf") & "' WHERE Pid='" & Request.Form("prc2") & "' AND Yearr>='" & Request.Form("pry2") & "' AND Enterprise='" & Request.Form("pre2") & "'"%>
<%mdboru.Open mdbou%>
<%End If%>


<%set mdbo1 = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdbo1.ActiveConnection = mdbo%>
<%set mdboo1 = Server.CreateObject("ADODB.Command")%>
<%set mdboro1 = Server.CreateObject("ADODB.Recordset")%>
<%mdboo1.ActiveConnection = mdbo%>
<%set mdboo2 = Server.CreateObject("ADODB.Command")%>
<%set mdboro2 = Server.CreateObject("ADODB.Recordset")%>
<%mdboo2.ActiveConnection = mdbo%>
<%set mdboo3 = Server.CreateObject("ADODB.Command")%>
<%set mdboro3 = Server.CreateObject("ADODB.Recordset")%>
<%mdboo3.ActiveConnection = mdbo%>
<%set mdboo4 = Server.CreateObject("ADODB.Command")%>
<%set mdboro4 = Server.CreateObject("ADODB.Recordset")%>
<%mdboo4.ActiveConnection = mdbo%>
<%set mdbou = Server.CreateObject("ADODB.Command")%>
<%set mdboru = Server.CreateObject("ADODB.Recordset")%>
<%mdbou.ActiveConnection = mdbo%>
<%set mdbobi = Server.CreateObject("ADODB.Command")%>
<%set mdborbi = Server.CreateObject("ADODB.Recordset")%>
<%mdbobi.ActiveConnection = mdbo%>

<%mdbo1.ActiveConnection = mdbo%>
<%mdbo1.CommandText="SELECT * from InvPlan WHERE Pid = '" & Mid(proc,6,5) & "' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(proc,5,1) & "' ORDER BY IDentifier"%>
<%mdbor.Open mdbo1%>
<%If mdbor.EOF=True Then%>
<%Else%>
<%If Len(mdbor("ProjCode"))>9 and MID(mdbor("ProjCode"),10,2)="00" Then%>
<%mdbobi.CommandText="SELECT ISNULL(SUM(PastSum),0) as s0, ISNULL(SUM(Ikvartal),0) as s1,ISNULL(SUM(IIkvartal),0) as s2, ISNULL(SUM(IIIkvartal),0) as s3,ISNULL(SUM(IVkvartal),0) as s4 FROM Main WHERE ProjCode LIKE '" & MID(mdbor("ProjCode"),1,9) & "__' AND ProjCode <> '" & mdbor("ProjCode") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdborbi.Open mdbobi%>
<%mdbou.CommandText="UPDATE Main SET PastSum=" & Mdborbi("s0") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET Ikvartal=" & Mdborbi("s1") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIkvartal=" & Mdborbi("s2") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIIkvartal=" & Mdborbi("s3") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IVkvartal=" & Mdborbi("s4") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdborbi.Close%>
<%mdbobi.CommandText="SELECT ISNULL(SUM(PastSum),0) as s0, ISNULL(SUM(Ikvartal),0) as s1,ISNULL(SUM(IIkvartal),0) as s2, ISNULL(SUM(IIIkvartal),0) as s3,ISNULL(SUM(IVkvartal),0) as s4 FROM Main WHERE ProjCode LIKE '" & MID(mdbor("ProjCode"),1,9) & "__' AND ProjCode <> '" & mdbor("ProjCode") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdborbi.Open mdbobi%>
<%mdbou.CommandText="UPDATE Main SET PastSum=" & Mdborbi("s0") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET Ikvartal=" & Mdborbi("s1") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIkvartal=" & Mdborbi("s2") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIIkvartal=" & Mdborbi("s3") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IVkvartal=" & Mdborbi("s4") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdborbi.Close%>
<%mdbobi.CommandText="SELECT ISNULL(SUM(PastSum),0) as s0, ISNULL(SUM(Ikvartal),0) as s1,ISNULL(SUM(IIkvartal),0) as s2, ISNULL(SUM(IIIkvartal),0) as s3,ISNULL(SUM(IVkvartal),0) as s4 FROM Main WHERE ProjCode LIKE '" & MID(mdbor("ProjCode"),1,9) & "__' AND ProjCode <> '" & mdbor("ProjCode") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdborbi.Open mdbobi%>
<%mdbou.CommandText="UPDATE Main SET PastSum=" & Mdborbi("s0") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET Ikvartal=" & Mdborbi("s1") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIkvartal=" & Mdborbi("s2") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIIkvartal=" & Mdborbi("s3") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IVkvartal=" & Mdborbi("s4") & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='P'"%>
<%mdboru.Open mdbou%>
<%mdborbi.Close%>
<%Else%>
<%If CDBL(Mid(proc,1,4))>2004 then%>
<%mdboo1.CommandText="SELECT ROUND(SUM(DEBET)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO NOT BETWEEN 18410 AND 18430) AND DEBET IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 04 AND 06 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro1.Open mdboo1%>
<%mdboo2.CommandText="SELECT ROUND(SUM(DEBET)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO NOT BETWEEN 18410 AND 18430) AND DEBET IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 07 AND 09 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro2.Open mdboo2%>
<%mdboo3.CommandText="SELECT ROUND(SUM(DEBET)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO NOT BETWEEN 18410 AND 18430) AND DEBET IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 10 AND 12 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro3.Open mdboo3%>
<%mdboo4.CommandText="SELECT ROUND(SUM(DEBET)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO NOT BETWEEN 18410 AND 18430) AND DEBET IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1)+1 & " AND RIGHT(MES,2) BETWEEN 01 AND 03 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro4.Open mdboo4%>
<%If mdboro1.EOF=True Then%>
<%va1=0%>
<%Else%>
<%va1=mdboro1("summi")%>
<%End If%>

<%If mdboro2.EOF=True Then%>
<%va2=0%>
<%Else%>
<%va2=mdboro2("summi")%>
<%End If%>

<%If mdboro3.EOF=True Then%>
<%va3=0%>
<%Else%>
<%va3=mdboro3("summi")%>
<%End If%>

<%If mdboro4.EOF=True Then%>
<%va4=0%>
<%Else%>
<%va4=mdboro4("summi")%>
<%End If%>

<%mdboro1.close%><%mdboro2.close%><%mdboro3.close%><%mdboro4.close%>

<%mdboo1.CommandText="SELECT ISNULL(SUM(CREDIT)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO BETWEEN 18410 AND 18430) AND CREDIT IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 04 AND 06 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro1.Open mdboo1%>
<%mdboo2.CommandText="SELECT ISNULL(SUM(CREDIT)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO BETWEEN 18410 AND 18430) AND CREDIT IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 07 AND 09 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro2.Open mdboo2%>
<%mdboo3.CommandText="SELECT ISNULL(SUM(CREDIT)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO BETWEEN 18410 AND 18430) AND CREDIT IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1) & " AND RIGHT(MES,2) BETWEEN 10 AND 12 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro3.Open mdboo3%>
<%mdboo4.CommandText="SELECT ISNULL(SUM(CREDIT)/1000,0) AS summi,PROJECT FROM glav_project WHERE PROJECT='" & Mdbor("OracleCode") & "' AND (KONTO BETWEEN 18410 AND 18430) AND CREDIT IS NOT NULL AND LEFT(MES,1)=" & Mid(proc,4,1)+1 & " AND RIGHT(MES,2) BETWEEN 01 AND 03 GROUP BY PROJECT ORDER BY PROJECT DESC"%>
<%mdboro4.Open mdboo4%>

<%If mdboro1.EOF=True Then%>
<%vc1=0%>
<%Else%>
<%vc1=mdboro1("summi")%>
<%End If%>

<%If mdboro2.EOF=True Then%>
<%vc2=0%>
<%Else%>
<%vc2=mdboro2("summi")%>
<%End If%>

<%If mdboro3.EOF=True Then%>
<%vc3=0%>
<%Else%>
<%vc3=mdboro3("summi")%>
<%End If%>

<%If mdboro4.EOF=True Then%>
<%vc4=0%>
<%Else%>
<%vc4=mdboro4("summi")%>
<%End If%>

<%mdbou.CommandText="UPDATE Main SET Ikvartal=" & CLNG(CDBL(va1)-CDBL(vc1)) & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIkvartal=" & CLNG(CDBL(va2)-CDBL(vc2)) & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIIkvartal=" & CLNG(CDBL(va3)-CDBL(vc3)) & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IVkvartal=" & CLNG(CDBL(va4)-CDBL(vc4)) & " WHERE Pid='" & mdbor("Pid") & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='F'"%>
<%mdboru.Open mdbou%>
<%mdboro1.Close%>
<%mdboro2.Close%>
<%mdboro3.Close%>
<%mdboro4.Close%>
<%End If%>
<%mdboo1.CommandText="SELECT SUM(SummOfContr) AS Summi FROM Contra WHERE Pid='" & mid(proc,6,5) & "' AND MONTH(DateOfConcl)>='04' AND MONTH(DateOfConcl)<'07' AND YEAR(DateOfConcl)='" & Mid(proc,1,4) & "'"%>
<%mdboro1.Open mdboo1%>
<%mdboo2.CommandText="SELECT SUM(SummOfContr) AS Summi FROM Contra WHERE Pid='" & mid(proc,6,5) & "' AND MONTH(DateOfConcl)>='07' AND MONTH(DateOfConcl)<'10' AND YEAR(DateOfConcl)='" & Mid(proc,1,4) & "'"%>
<%mdboro2.Open mdboo2%>
<%mdboo3.CommandText="SELECT SUM(SummOfContr) AS Summi FROM Contra WHERE Pid='" & mid(proc,6,5) & "' AND MONTH(DateOfConcl)>='10' AND MONTH(DateOfConcl)<'12' AND YEAR(DateOfConcl)='" & Mid(proc,1,4) & "'"%>
<%mdboro3.Open mdboo3%>
<%mdboo4.CommandText="SELECT SUM(SummOfContr) AS Summi FROM Contra WHERE Pid='" & mid(proc,6,5) & "' AND MONTH(DateOfConcl)>='01' AND MONTH(DateOfConcl)<'04' AND YEAR(DateOfConcl)='" & CDbl(Mid(proc,1,4))+1 & "'"%>
<%mdboro4.Open mdboo4%>
<%If mdboro1.EOF=True Or mdboro1("summi") & "e" = "e" Then%>
<%vu1=0%>
<%Else%>
<%vu1=mdboro1("summi")%>
<%End If%>

<%If mdboro2.EOF=True Or mdboro2("summi") & "e" = "e" Then%>
<%vu2=0%>
<%Else%>
<%vu2=mdboro2("summi")%>
<%End If%>

<%If mdboro3.EOF=True Or mdboro3("summi") & "e" = "e" Then%>
<%vu3=0%>
<%Else%>
<%vu3=mdboro3("summi")%>
<%End If%>

<%If mdboro4.EOF=True Or mdboro4("summi") & "e" = "e" Then%>
<%vu4=0%>
<%Else%>
<%vu4=mdboro4("summi")%>
<%End If%>
<%mdbou.CommandText="UPDATE Main SET Ikvartal=" & vu1 & " WHERE Pid='" & MID(proc,6,5) & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIkvartal=" & vu2 & " WHERE Pid='" & MID(proc,6,5) & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IIIkvartal=" & vu3 & " WHERE Pid='" & MID(proc,6,5) & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%mdbou.CommandText="UPDATE Main SET IVkvartal=" & vu4 & " WHERE Pid='" & MID(proc,6,5) & "' AND Enterprise='" & mdbor("Enterprise") & "' AND Yearr='" & Mid(proc,1,4) & "' AND Identifier='C'"%>
<%mdboru.Open mdbou%>
<%End If%>
<%End  IF%>

<%set mdboc = Server.CreateObject("ADODB.Command")%>
<%set mdborc = Server.CreateObject("ADODB.Recordset")%>
<%mdboc.ActiveConnection = mdbo%>
<%mdboc.CommandText="SELECT * from Codes WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdborc.Open mdboc%>

<%If mdborc.EOF="True" Then%>
Seda kirjepaneku Andmebaasis pole.
<%Else%>
<%fc=Mid(mdborc("ProjCode"),7,6)%>
<Form id="ValidForm" method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<table border=1 class="card">

<tr class="Card">
<%If request.Form("btn")="Muuda" Then%>
<td class="card">
<a href="Projcard.asp?pc=<%=prov%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/p.ico"></a>
</td>
<td class="card">
<b>Projekti kood: </b>
<Input Type="text" size="25" name="prc" value="<%=mdbor("ProjCode")%>"  class="card"><Input Type="hidden" name="prc2" value="<%=mdbor("Pid")%>"><Input Type="hidden" name="pry2" value="<%=mdbor("Yearr")%>">
</td>
<td class="card">
<b>Oracle kood: </b>
<Input Type="text" size="25" name="orc" value="<%=mdbor("OracleCode")%>"  class="card"><Input Type="hidden" name="orc2" value="<%=mdbor("OracleCode")%>">
</td>
<td class="card">
<a href="Projcard.asp?pc=<%=pron%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/n.ico"></a>
</td>
</tr>

<tr class="Card">
<td class="card">
<a href="Projcard.asp?pc=<%=prot%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/u.ico"></a>
</td>
<td class="card">
<b>
<%If mdbor("RenovBlock")=true Then%>
Plokkide renoveerimine <input type="checkbox" name="ren" checked="true"  class="card">
<%Else%>
Plokkide renoveerimine <input type="checkbox" name="ren"  class="card">
<%End If%>
<b>
</td>
<td class="card">
<b>Ettev&otilde;te: </b>
<Input Type="hidden" name="pre2" value="<%=mdbor("Enterprise")%>" class="card">
<select size="1" name="ent" class="card">
<option value="<%=mdbor("Enterprise")%>"><%=mdbor("EDescr")%></option>
<%do until mdboren.EOF%>
<%If mdbor("Enterprise")<>mdboren("Enterprise") Then%>
<option value="<%=mdboren("Enterprise")%>"><%=mdboren("EDescr")%></option>
<%End If%>
<%mdboren.movenext%>
<%loop%>
</select>
</td>
<td class="card">
<a href="Projcard.asp?pc=<%=prod%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/d.ico"></a>
</td>
</tr>
<tr class="Card">
<td class="card">
</td>
<td class="card">
<b>Projekti Nimetus: </b>
<Input Type="text" size="45" name="prn" value="<%=mdborc("ProjName")%>" class="card"></b><Input Type="hidden" name="prn2" value="<%=mdborc("ProjName")%>">
</td>
<td class="card">
<b>Название: </b><br><Input Type="text" size="45" name="dsc" value="<%=mdbor("RusName")%>" class="card">
</td>
<td class="card">
</td>
</tr>
<tr class="Card">
<td class="card">
</td>
<td class="card">
<b>Comment: </b><br><Input Type="text" size="45" name="dsc2" value="<%=mdbor("Comment")%>" class="card">
</td>
<td class="card">
<b>Footnote: </b><br><Input Type="text" size="45" name="dscf" value="<%=mdbor("FootNote")%>" class="card">
</td>
<td class="card">
</td>
</tr>
<input type="submit" value="Sisestus" name="btn" class="card">
<%Else%>
<%If mdbor.EOF=True Then%>
<tr class="Card">
<td class="card"><a href="Projcard.asp?pc=<%=prov%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/p.ico"></a></td>
<td class="card">
Investeeringute kavas kanne puudub.
</b>
</td>
<td class="card"></td>
<td class="card"><a href="Projcard.asp?pc=<%=pron%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/n.ico"></a></td>
</tr>
<tr class="Card">
<td class="card">
<a href="Projcard.asp?pc=<%=prot%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/u.ico"></a>
</td>
<td class="card">
<b>Projekti Nimetus: <%=mdborc("ProjName")%></b>
</td>
<td class="card">
<input type="submit" value="Muuda" name="btn" disabled="true" class="card">
</td>
<td class="card"><a href="Projcard.asp?pc=<%=prod%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/d.ico"></a>
</td>
</tr>
<%Else%>
<tr class="Card">
<td class="card"><a href="Projcard.asp?pc=<%=prov%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/p.ico"></a>
</td>
<td class="card">
<b>
Projekti Kood:&nbsp;&nbsp;<FOnt color="0000FF"><%=Mid(proc,6,5)%></font>&nbsp;|&nbsp;<%=mdbor("ProjCode")%></b>
</td>
<td class="card">
<b>Oracle kood: 
<Font color="0000AA">
<%=mdbor("OracleCode")%>
</b></font>
</td>
<td class="card">
<a href="Projcard.asp?pc=<%=pron%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/n.ico"></a>
</td>
</tr>
<tr class="Card">
<td class="card"><a href="Projcard.asp?pc=<%=prot%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/u.ico"></a></td>
<td class="card">
<b>Projekti Nimetus: </b>
<Font color="0000AA">
<%=mdborc("ProjName")%>
</font>
</td>
<td class="card">
<input type="submit" value="Muuda" name="btn"  class="card"  onmouseover='window.status="Muuda Projekti kood, Proecti Nimetus, Oracle kood ja Ettev&otilde;te.";'onmouseout='window.status="";'>
</td>
<td class="card"><a href="Projcard.asp?pc=<%=prod%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<Img border="0" src="icons/d.ico"></a></td>
</tr>
<tr class="Card"><td class="card"></td>
<td class="card">
<b>
<%If mdbor("RenovBlock")=true Then%>
<Font color="BB0000">
Plokkide renoveerimine
</font>
<%Else%>
<Font color="0000BB">
Tavaline
</font>
<%End If%>
</b>
</td>
<td class="card">
<b>
Название: </b>
<Font color="0000AA">
<%=mdbor("RusName")%>
</font>
</td><td class="card"></td>
</tr>
<tr class="Card"><td class="card"></td>
<td class="card"><b>
Comment: </b><Font color="0000AA"><%=mdbor("Comment")%></font>
</td>
<td class="card"><b>
FootNote: </b><Font color="0000AA"><%=mdbor("Footnote")%></font>
</td><td class="card"></td>
</tr>
<%End If%>
<%End If%>
<%End If%>
</table>

<table border=1 class="Card">
<tr class="Card">
<td class="card">
<%If mdbor.EOF=True Then%>
<input type="submit" value="Vaata" name="btn" disabled="true" class="card"  onmouseover='window.status="Vaatas Projekti kaart.";'onmouseout='window.status="";'>
<input type="submit" value="Redigeeri" name="btn" disabled="true" class="card"  onmouseover='window.status="Muudas Projekti kaart.";'onmouseout='window.status="";'>
<%Else%>
<input type="submit" value="Vaata" name="btn"  class="card" onmouseover='window.status="Vaatas Projekti kaart.";'onmouseout='window.status="";'>
<input type="submit" value="Redigeeri" name="btn"  class="card" onmouseover='window.status="Muudas Projekti kaart.";'onmouseout='window.status="";'>
<%End If%>
</form>
</td>
<td class="card">
<Form method="POST" action="insert.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"  target="_blank">
<input type="submit" size="10" value="Projekti sisestamine" name="btn"  class="card" onmouseover='window.status="Panes sisse uus Proekt Investetimisse kavasse.";'onmouseout='window.status="";'>
</Form>
</td>
<td class="card">
<Form id="ValidForm2" method="POST" action="ProjCard.asp?pc=<%=proc%>&del=1&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%If mdbor.EOF=True Then%>
<input type="button" value="Projekti kustutamine" name="btnk" class="card"  onmouseover='window.status="Kustutas projekt investeerimis kavast.";'onmouseout='window.status="";'>
<%Else%>
<input type="button" value="Projekti kustutamine" name="btnk" class="card"  onmouseover='window.status="Kustutas projekt investeerimis kavast.";'onmouseout='window.status="";'>
<%End If%>
</form>
</td>
</tr>
</table>

<b>Projektid</b>
<br>
<%If fc<>"00" or (Len(fc)>2 and Mid(fc,4,2)<>"00") Then%>
<table border=1 class="Card">
<tr class="card">
<th class="card">
Aasta
</th>
<th class="card">
Eelmise aastade summa
</th>
<th class="card">
I Kvartal
</th>
<th class="card">
II Kvartal
</th>
<th class="card">
III Kvartal
</th>
<th class="card">
IV Kvartal
</th>
<th class="card">
Seda aasta Summa
</th>
<th class="card">
Kogutud Summa
</th>
<th class="card">
Projekti paralleel
</th>
</tr>
<%If mdbor.EOF=True Then%>
<%Else%>
<tr class="Card">
<td class="card" rowspan="55">
<%=mdbor("Yearr")%>
</td>
</tr>
<%End If%>
<%Do until mdbor.EOF%>
<tr class="Card">
<td class="card">
<%=mdbor("PastSum")%>
</td>
<td class="card">
<%If mdbor("IDentifier")="C" Then%>
<%If Request.QueryString("nm")="neu1" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="olt1"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("Ikvartal")%></a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="neu1"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("Ikvartal")%></a>
<%End If%>
<%Else%>
<%=mdbor("Ikvartal")%>
<%End If%>
</td>
<td class="card">

<%If mdbor("IDentifier")="C" Then%>
<%If Request.QueryString("nm")="neu2" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="olt2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IIkvartal")%></a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="neu2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IIkvartal")%></a>
<%End If%>
<%Else%>
<%=mdbor("IIkvartal")%>
<%End If%>
</td>
<td class="card">
<%If mdbor("IDentifier")="C" Then%>
<%If Request.QueryString("nm")="neu3" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="olt3"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IIIkvartal")%></a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="neu3"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IIIkvartal")%></a>
<%End If%>
<%Else%>
<%=mdbor("IIIkvartal")%>
<%End If%>
</td>
<td class="card">
<%If mdbor("IDentifier")="C" Then%>
<%If Request.QueryString("nm")="neu4" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="olt4"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IVkvartal")%></a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nm=<%="neu4"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IVkvartal")%></a>
<%End If%>
<%Else%>
<%=mdbor("IVkvartal")%>
<%End If%>
</td>
<td class="card">
<%=mdbor("SummYe")%>
</td>
<td class="card">
<%=mdbor("SummTot")%>
</td>
<td class="card">
<%=mdbor("IDtransl")%>
</td>
</tr>
<%If mdbor("IDentifier")="C" AND Mid(Request.QueryString("nm"),1,3)="neu" Then%>
<%If Mid(Request.QueryString("nm"),4,1)="1" Then%>
<%mdboco.CommandText="SELECT Distinct ContractNo,CompanyName,DateOfConcl,DateOfEnding,EmplFName, EmplName, SummOfContr from contra WHERE Pid = '" & Mid(proc,6,5) & "' AND YEAR(DateofConcl)='" & Mid(proc,1,4) & "' AND MONTH(DateOfConcl)>='04' AND MONTH(DateOfConcl)<'07'"%>
<%End If%>
<%If Mid(Request.QueryString("nm"),4,1)="2" Then%>
<%mdboco.CommandText="SELECT Distinct ContractNo,CompanyName,DateOfConcl,DateOfEnding,EmplFName, EmplName, SummOfContr from contra WHERE Pid = '" & Mid(proc,6,5) & "' AND YEAR(DateofConcl)='" & Mid(proc,1,4) & "' AND MONTH(DateOfConcl)>='07' AND MONTH(DateOfConcl)<'10'"%>
<%End If%>
<%If Mid(Request.QueryString("nm"),4,1)="3" Then%>
<%mdboco.CommandText="SELECT Distinct ContractNo,CompanyName,DateOfConcl,DateOfEnding,EmplFName, EmplName, SummOfContr from contra WHERE Pid = '" & Mid(proc,6,5) & "' AND YEAR(DateofConcl)='" & Mid(proc,1,4) & "' AND MONTH(DateOfConcl)>='10' AND MONTH(DateOfConcl)<'12'"%>
<%End If%>
<%If Mid(Request.QueryString("nm"),4,1)="4" Then%>
<%mdboco.CommandText="SELECT Distinct ContractNo,CompanyName,DateOfConcl,DateOfEnding,EmplFName, EmplName, SummOfContr from contra WHERE Pid = '" & Mid(proc,6,5) & "' AND YEAR(DateofConcl)='" & Cdbl(Mid(proc,1,4))+1 & "' AND MONTH(DateOfConcl)>='01' AND MONTH(DateOfConcl)<'04'"%>
<%End If%>
<%mdborco.Open mdboco%>
<tr class="Card">
<th class="card">
Kontrakti Number
</th>
<th class="card">
Firma nimetus
</th>
<th class="card">
S&otilde;lmimise kuup&auml;ev
</th>
<th class="card">
L&otilde;ppimise kuup&auml;ev
</th>
<th class="card">
T&ouml;&ouml;taja
</th>
<th class="card">
Summa
</th>
</tr>
<%Do until mdborco.EOF%>
<tr class="Card">
<td class="card">
<%=mdborco("ContractNo")%>
</td>
<td class="card">
<%=mdborco("CompanyName")%>
</td>
<td class="card">
<%=mdborco("DateofConcl")%>
</td>
<td class="card">
<%=mdborco("DateOfending")%>
</td>
<td class="card">
<%=mdborco("EmplFName")%>&nbsp<%=mdborco("EmplName")%>
</td>
<td class="card">
<%=mdborco("SummOfContr")%>
</td>
</tr>
<%mdborco.Movenext%>
<%Loop%>
<%mdborco.Close%>
<%End If%>
<%mdbor.Movenext%>
<%Loop%>
<%set mdbo2 = Server.CreateObject("ADODB.Command")%>
<%set mdbor2 = Server.CreateObject("ADODB.Recordset")%>
<%mdbo2.ActiveConnection = mdbo%>
<%mdbo2.CommandText="SELECT * from sta WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdbor2.Open mdbo2%>
</table>

<b>Seisundid</b>
<Form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<input type="submit" value="Lisa Kontrakt" name="btn"  class="card" onmouseover='window.status="Lisa Kontrakt Andmebaasile.";'onmouseout='window.status="";'>
<input type="submit" value="Lisa" name="btn"   class="card" onmouseover='window.status="Lisa seisundid Projektile.";'onmouseout='window.status="";'>
</form>
<table border=1 class="Card">
<tr class="card">
<th class="card">

Seisundi Nimetus
</th>
<th class="card">
Alguse kuup&auml;ev

</th>
<th class="card">

L&otilde;ppimise kuup&auml;ev
</th>
<th class="card">

Viide Failile
</th>
<th class="card">

T&ouml;&ouml;taja perekonnanimi
</th>
<th class="card">

T&ouml;&ouml;taja eesnimi
</th>
<th class="card">

T&ouml;&ouml;taja ametikoht
</th>
</tr>
<%Do until mdbor2.EOF%>
<tr class="Card">
<td class="card">

<%If mdbor2("StatusID")="6" or mdbor2("StatusID")="7" Then%>
!
<%Else%>

<%End If%>
<%=mdbor2("StatusName")%>

</td>
<td class="card">

<%=mdbor2("DateBegin")%>
</td>
<td class="card">

<%=mdbor2("DateEnd")%>
</td>
<td class="card">

<%=mdbor2("LinktoFile")%>
</td>
<td class="card">

<%=mdbor2("EmplFname")%>
</td>
<td class="card">

<%=mdbor2("EmplName")%>
</td>
<td class="card">

<%=mdbor2("Titlename")%>
</td>
</tr>
<%mdbor2.Movenext%>
<%Loop%>
</table>
<br>
<form action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" method="POST">
<table border=1 class="Card">
<%jed=1%>
<%set mdbodf = Server.CreateObject("ADODB.Command")%>
<%set mdbordf = Server.CreateObject("ADODB.Recordset")%>
<%mdbodf.ActiveConnection = mdbo%>
<%mdbodf.CommandText="SELECT * FROM tingimused WHERE PID='" & Mid(proc,6,5) & "'"%>
<%mdbordf.Open mdbodf%>
<%set mdbof = Server.CreateObject("ADODB.Command")%>
<%set mdborf = Server.CreateObject("ADODB.Recordset")%>
<%mdbof.ActiveConnection = mdbo%>
<%mdbof.CommandText="SELECT * FROM Faktory"%>
<%mdborf.Open mdbof%>

<tr class="Card">
<th class="card">
Eritingimused
</th>
<th class="card">
P&otilde;hjendus
</th>
<th class="card">
</th>
</tr>
<%Do until mdbordf.EOF%>
<tr class="card">
<td class="card">
<%=mdbordf("FaktorName")%>
</td>
<td class="card">
<%=mdbordf("Basis")%>
</td>
<td class="card">
<a href="ProjCard.asp?pc=<%=proc%>&fd=<%=mdbordf("FaktorID")%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">Kustuta</a>
</td>
<%jed=jed+1%>
<%mdbordf.Movenext%>
</tr>
<%loop%>
<tr class="Card">
<td class="card">
<select size="1" name="eri" class="Card">
<%Do until mdborf.EOF%>
<option value="<%=mdborf("FaktorID")%>"><%=mdborf("FaktorName")%></option>
<%mdborf.MovenExt%>
<%Loop%>
</select>
</td>
<td class="card" rowspan="1">
<input type="Text" name="bas" value="" class="card">
</td>
<td class="card" colspan="1">
<input type="Submit" name="btn" value="Lisa eritingimus" class="card">
</td>
</tr>
</table>
<%Else%>
Puudub juurdep&auml;&auml;s Projekti Grupi projekti kaardile.
<%End If%>

<%Else%>

<%If request.Querystring("deh")<>"" or request.Querystring("nn")<>"" or LEFT(request.Querystring("d"),2)="de" or request.Querystring("d")="nec" or request.QueryString("nm")="neo" or request.Querystring("nm")="oli" Or request.Form("btn")="Muuda seisund" or request.Form("btn")="Muuda kirje" or request.Form("btn")="Redigeeri" or request.Form("btn")="Kustuta" Or request.Form("btn")="Annuleeri" Or Request.QueryString("e")<>"" Then%>

<%If request.Form("btn")="Muuda seisund" Then%>
<%set mdbods = Server.CreateObject("ADODB.Command")%>
<%set mdbords = Server.CreateObject("ADODB.Recordset")%>
<%mdbods.ActiveConnection = mdbo%>
<%g=Request.Form("idc")%>
<%a0="st" & g%>
<%a=Request.Form("stchg")%>
<%l=len(a)%>
<%sl2=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl2=sl2 & "&otilde;"%>
<%Case 228%>
<%sl2=sl2 & "&auml;"%>
<%Case 246%>
<%sl2=sl2 & "&ouml;"%>
<%Case 252%>
<%sl2=sl2 & "&uuml;"%>
<%Case 213%>
<%sl2=sl2 & "&Otilde;"%>
<%Case 196%>
<%sl2=sl2 & "&Auml;"%>
<%Case 214%>
<%sl2=sl2 & "&Ouml;"%>
<%Case 220%>
<%sl2=sl2 & "&Uuml;"%>
<%Case Else%>
<%sl2=sl2 & c%>
<%END SELECT%>
<%Next%>
<%mdbods.CommandText="UPDATE StatCode SET StatusName= '" & sl2 & "' WHERE StatusID = '" & request.Form(a0) & "'"%>
<%mdbords.Open mdbods%>
<%End If%>

<%If request.Form("btn")="Muuda kirje" Then%>
<%set mdbodem = Server.CreateObject("ADODB.Command")%>
<%set mdbordem = Server.CreateObject("ADODB.Recordset")%>
<%mdbodem.ActiveConnection = mdbo%>
<%g=Request.Form("idc2")%>
<%a0="em" & g%>
<%a=Request.Form("nchg")%>
<%l=len(a)%>
<%sl=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl=sl & "&otilde;"%>
<%Case 228%>
<%sl=sl & "&auml;"%>
<%Case 246%>
<%sl=sl & "&ouml;"%>
<%Case 252%>
<%sl=sl & "&uuml;"%>
<%Case 213%>
<%sl=sl & "&Otilde;"%>
<%Case 196%>
<%sl=sl & "&Auml;"%>
<%Case 214%>
<%sl=sl & "&Ouml;"%>
<%Case 220%>
<%sl=sl & "&Uuml;"%>
<%Case Else%>
<%sl=sl & c%>
<%END SELECT%>
<%Next%>
<%mdbodem.CommandText="UPDATE Worker SET EmplName= '" & sl & "' WHERE EmployeeID = '" & request.Form(a0) & "'"%>
<%mdbordem.Open mdbodem%>
<%a=Request.Form("fnchg")%>
<%l=len(a)%>
<%sl=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl=sl & "&otilde;"%>
<%Case 228%>
<%sl=sl & "&auml;"%>
<%Case 246%>
<%sl=sl & "&ouml;"%>
<%Case 252%>
<%sl=sl & "&uuml;"%>
<%Case 213%>
<%sl=sl & "&Otilde;"%>
<%Case 196%>
<%sl=sl & "&Auml;"%>
<%Case 214%>
<%sl=sl & "&Ouml;"%>
<%Case 220%>
<%sl=sl & "&Uuml;"%>
<%Case Else%>
<%sl=sl & c%>
<%END SELECT%>
<%Next%>
<%mdbodem.CommandText="UPDATE Worker SET EmplFName= '" & sl & "' WHERE EmployeeID = '" & request.Form(a0) & "'"%>
<%mdbordem.Open mdbodem%>
<%a=Request.Form("tchg")%>
<%l=len(a)%>
<%sl=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl=sl & "&otilde;"%>
<%Case 228%>
<%sl=sl & "&auml;"%>
<%Case 246%>
<%sl=sl & "&ouml;"%>
<%Case 252%>
<%sl=sl & "&uuml;"%>
<%Case 213%>
<%sl=sl & "&Otilde;"%>
<%Case 196%>
<%sl=sl & "&Auml;"%>
<%Case 214%>
<%sl=sl & "&Ouml;"%>
<%Case 220%>
<%sl=sl & "&Uuml;"%>
<%Case Else%>
<%sl=sl & c%>
<%END SELECT%>
<%Next%>
<%mdbodem.CommandText="UPDATE Worker SET TitleName= '" & sl & "' WHERE EmployeeID = '" & request.Form(a0) & "'"%>
<%mdbordem.Open mdbodem%>
<%End If%>

<%If Request.QueryString("deh")<>"" then%>
<%set mdbods = Server.CreateObject("ADODB.Command")%>
<%set mdbords = Server.CreateObject("ADODB.Recordset")%>
<%mdbods.ActiveConnection = mdbo%>
<%mdbods.CommandText="DELETE Status WHERE HistID = '" & request.QueryString("deh") & "'"%>
<%mdbords.Open mdbods%>
<%End if%>
<%If request.Form("btn")="Annuleeri" Then%>
<%set mdbo5 = Server.CreateObject("ADODB.Command")%>
<%set mdbor5 = Server.CreateObject("ADODB.Recordset")%>
<%mdbo5.ActiveConnection = mdbo%>
<%mdbo5.CommandText="SELECT * from Contracts"%>
<%mdbor5.Open mdbo5%>

<%set mdbods = Server.CreateObject("ADODB.Command")%>
<%set mdbords = Server.CreateObject("ADODB.Recordset")%>
<%mdbods.ActiveConnection = mdbo%>
<%i=1%>
<%Do until mdbor5.EOF%>
<%a1="dl2" & i%>
<%If request.Form(a1)="on" Then%>
<%a2="del2" & i%>
<%a3="coi" & i%>
<%mdbods.CommandText="DELETE CompData WHERE ContractNo = '" & request.Form(a2) & "' AND CompanyID='" & request.Form(a3) & "' AND Pid='" & Mid(proc,6,5) & "'"%>
<%mdbords.Open mdbods%>
<%mdbods.CommandText="DELETE Contracts WHERE ContractNo = '" & request.Form(a2) & "'"%>
<%mdbords.Open mdbods%>
<%End If%>
<%mdbor5.MoveNext%>
<%i=i+1%>
<%Loop%>
<%mdbor5.Close%>
<%End If%>
<%ya=Year(Date())%>
<%mo=Month(Date())%>
<%da=Day(Date())%>
<%zz=mo-04%>
<%If zz>0 Then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=ya-1%>
<%End If%>

<%set mdbo1 = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdbo1.ActiveConnection = mdbo%>
<%mdbo1.CommandText="SELECT * from InvPlan WHERE Pid = '" & Mid(proc,6,5) & "' AND Yearr='" & Mid(proc,1,4) & "' AND Enterprise='" & Mid(proc,5,1) & "' ORDER BY IDentifier"%>
<%mdbor.Open mdbo1%>
<input type="hidden" value="<%=mdbor("Enterprise")%>" name="entt" class="card">
<%set mdboc = Server.CreateObject("ADODB.Command")%>
<%set mdborc = Server.CreateObject("ADODB.Recordset")%>
<%mdboc.ActiveConnection = mdbo%>
<%mdboc.CommandText="SELECT * from Codes WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdborc.Open mdboc%>

<%set mdbow = Server.CreateObject("ADODB.Command")%>
<%set mdborw = Server.CreateObject("ADODB.Recordset")%>
<%mdbow.ActiveConnection = mdbo%>
<%mdbow.CommandText="SELECT * from Worker ORDER BY EmplFName"%>
<%mdborw.Open mdbow%>

<%set mdbos = Server.CreateObject("ADODB.Command")%>
<%set mdbors = Server.CreateObject("ADODB.Recordset")%>
<%mdbos.ActiveConnection = mdbo%>
<%mdbos.CommandText="SELECT * from StatCode"%>
<%mdbors.Open mdbos%>

<table border=1 class="Card">
<tr class="Card">
<td class="card">
<b>Project Code: <Font color="0000FF"><%=mdborc("ProjCode")%></font></b>
</td>
</tr>
<tr class="Card">
<td class="card">

<b>Projekti Nimestus: </b>
<Font color="0000FF">
<%=mdborc("ProjName")%>
</font>
</td>
</tr class="Card">
</table>
<Form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<input type="submit" value="Vaata" name="btn"  class="card"  onmouseover='window.status="Vaatas Projekti kaart.";'onmouseout='window.status="";'>
<input type="submit" value="Redigeeri" name="btn"  class="card"  onmouseover='window.status="Muudas Projekti kaart.";'onmouseout='window.status="";'>
<input type="submit" value="Salvesta" name="btn"   class="card" onmouseover='window.status="Salvestas muutused projekti kaardis.";'onmouseout='window.status="";'> 

<br>
<%i=1%>
<table border=1 class="Card">
<tr class="card">
<th class="card">
Aasta
</th>
<th class="card">
<%If request.QueryString("e")="ne4" Then%>
<a href="ProjCard.asp?e=<%="ol4"%>&pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"  class="th">Eelmise aastade summa</a>
<%Else%>
<a href="ProjCard.asp?e=<%="ne4"%>&pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"  class="th">Eelmise aastade summa</a>
<%End If%>
</th>
<th class="card">

I Kvartal
</th>
<th class="card">

II Kvartal
</th>
<th class="card">

III Kvartal
</th>
<th class="card">

IV Kvartal
</th>
<th class="card">

Seda aasta Summa

</th>
<th class="card">

Kogutud Summa
</th>
<th class="card">

Projekti paralleel
</th>
</tr>
<%i=1%>
<%If mdbor.EOF=False Then%>
<tr class="card">
<td class="card" rowspan="55" bordercolor=#CCCCCC>

<%=mdbor("Yearr")%>
</td>
</tr>
<%Else%>
<tr class="card">
<td class="card" colspan="8">
No records in Database
</td>
</tr>
<%End If%>
<%Do until mdbor.EOF%>
<tr class="card">
<td class="card">

<%If request.QueryString("e")="ne4" Then%>
<input type="text" value="<%=mdbor("PastSum")%>" name="<%="ps" & i%>"  class="card">
<%Else%>
<%=mdbor("PastSum")%>
<input type="hidden" value="<%=mdbor("PastSum")%>" name="<%="ps" & i%>" class="card">
<%End If%>
</td>
<td class="card">
<input type="text" value="<%=mdbor("Ikvartal")%>" name="<%="1k" & i%>" size="10" class="card">
</td>
<td class="card">
<input type="text" value="<%=mdbor("IIkvartal")%>" name="<%="2k" & i%>" size="10"  class="card">
</td>
<td class="card">
<input type="text" value="<%=mdbor("IIIkvartal")%>" name="<%="3k" & i%>" size="10" class="card">
</td>
<td class="card">
<input type="text" value="<%=mdbor("IVkvartal")%>" name="<%="4k" & i%>" size="10"  class="card">
</td>
<td class="card">
<%=mdbor("SummYe")%>
</td>
<td class="card">
<%=mdbor("SummTot")%>
</td>
<td class="card">
<%If mdbor("IDentifier")="C" Then%>
<%If Request.QueryString("nm")="neo" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&nm=<%="oli"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IDtransl")%></a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&nm=<%="neo"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("IDtransl")%></a>
<%End If%>
<%Else%>
<%=mdbor("IDtransl")%>
<%End If%>
</td>
</tr>
<%If mdbor("IDentifier")="C" AND Mid(Request.QueryString("nm"),1,3)="neo" Then%>
<%mdboco.CommandText="SELECT Distinct CompanyId,ContractNo,CompanyName,DateOfConcl,DateOfEnding,EmplFName,EmployeeID,EmplName, SummOfContr from contra WHERE Pid = '" & Mid(proc,6,5) & "' AND ((YEAR(DateofConcl)='" & Mid(proc,1,4) & "' AND MONTH(DateofConcl) BETWEEN 04 AND 12) OR (YEAR(DateofConcl)='" & CDbl(Mid(proc,1,4))+1 & "' AND MONTH(DateofConcl) BETWEEN 01 AND 03))"%>
<%mdborco.Open mdboco%>
<tr class="card">
<th class="card">
Kontrakti Number
</th>
<th class="card">
Firma nimetus
</th>
<th class="card">
S&otilde;lmimise kuup&auml;ev
</th>
<th class="card">
L&otilde;ppimise kuup&auml;ev
</th>
<th class="card">
T&ouml;&ouml;taja
</th>
<th class="card">
Summa
</th>
<th class="card">
<input type="submit" value="Annuleeri"   class="card" name="btn" onmouseover='window.status="Kustutas valitud seisundid Seda Projektist.";'onmouseout='window.status="";'> 
</th>
</tr>
<%jj=1%>
<%set mdbocy = Server.CreateObject("ADODB.Command")%>
<%set mdborcy = Server.CreateObject("ADODB.Recordset")%>
<%mdbocy.ActiveConnection = mdbo%>
<%mdbocy.CommandText="SELECT * from CompID"%>
<%mdborcy.Open mdbocy%>
<%Do until mdborco.EOF%>
<tr class="card">
<td class="card">

<input type="Text" value="<%=mdborco("ContractNo")%>" name="<%="cnt" & jj%>" class="card">
<input type="hidden" value="<%=mdborco("ContractNo")%>" name="<%="chi" & jj%>" class="card">

</td>
<td class="card">

<input type="hidden" value="<%=mdborco("CompanyId")%>" name="<%="coi" & jj%>" class="card">
<select Name="<%="cmp" & jj%>" size="1">
<%'mdborcy.MoveFirst%>
<option value="<%=mdborco("CompanyId")%>"><%=mdborco("CompanyName")%></option>
<%Do until mdborcy.EOF%>
<%If mdborco("CompanyID") <> mdborcy("CompanyID") Then%>
<option value="<%=mdborcy("CompanyId")%>"><%=mdborcy("CompanyName")%></option>
<%End If%>
<%mdborcy.MoveNext%>
<%Loop%>
</select>

</td>
<td class="card">

<input type="Text" value="<%=mdborco("DateofConcl")%>" name="<%="dco" & jj%>" class="card">

</td>
<td class="card">

<input type="Text" value="<%=mdborco("DateOfending")%>" name="<%="dcn" & jj%>" class="card">

</td>
<td class="card">

<select Name="<%="empl" & jj%>" size="1" class="card">
<%'mdborw.MoveFirst%>
<option value="<%=mdborco("EmployeeId")%>"><%=mdborco("EmplFName")%><%=mdborco("EmplName")%></option>
<%Do until mdborw.EOF%>
<%If mdborco("EmployeeID") <> mdborw("EmployeeID") Then%>
<option value="<%=mdborw("EmployeeId")%>"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%End If%>
<%mdborw.MoveNext%>
<%Loop%>
</select>

</td>
<td class="card">

<input type="Text" value="<%=mdborco("SummOfContr")%>" name="<%="suc" & jj%>" class="card">

</td>
<td class="card">

<input type="CheckBox" name="<%="dl2" & jj%>" class="card"><input type="Hidden" name="<%="del2" & jj%>" value="<%=Mdborco("ContractNO")%>">
</td>
</tr>
<%mdborco.Movenext%>
<%jj=jj+1%>
<%Loop%>
<%mdborco.Close%>
<%End If%>
<%i=i+1%>
<%mdbor.Movenext%>
<%Loop%>
<%set mdbo2 = Server.CreateObject("ADODB.Command")%>
<%set mdbor2 = Server.CreateObject("ADODB.Recordset")%>
<%mdbo2.ActiveConnection = mdbo%>
<%mdbo2.CommandText="SELECT * from sta WHERE Pid = '" & Mid(proc,6,5) & "'"%>
<%mdbor2.Open mdbo2%>
</table>

<br>
<table border=1 class="card">
<tr class="card">
<th class="card">

Seisundi nimetus

</th>
<th class="card">

<%If LEFT(request.QueryString("d"),2)<>"de" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=deb&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">Alguse kuup&auml;ev</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nec&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">Alguse kuup&auml;ev</a>
<%End if%>
</th>
<th class="card">

<%If LEFT(request.QueryString("d"),2)<>"de" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=dee&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">L&otilde;ppuse kuup&auml;ev</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nec&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">L&otilde;ppuse kuup&auml;ev</a>
<%End if%>

</th>
<th class="card">

Viide failile

</th>
<th class="card">

Vastutav T&ouml;&ouml;taja

</th>
<th class="card">
<%a2="del" & i%>
Kustuta?
</th>
</tr>
<%i=1%>
<%Do until mdbor2.EOF%>
<tr class="card">
<td class="card">
<%'mdbors.movefirst%>
<select size="1" name="<%="st" & i%>" class="card">
<option value=<%=mdbor2("StatusID")%>><%=mdbor2("StatusName")%></option>
<%Do until mdbors.EOF%>
<%If mdbors("StatusID")<>mdbor2("StatusID") Then%>
<option value=<%=mdbors("StatusID")%>><%=mdbors("StatusName")%></option>
<%End if%>
<%mdbors.movenext%>
<%Loop%>
</select>
<%If request.QueryString("nn")="chg" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nn=<%="lev"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">#</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nn=<%="chg"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">#</a>
<%End If%>
</td>
<td class="card">

<%If request.QueryString("d2b")<>"" then%>
<%detb=Request.QueryString("d2b") & "." & Request.QueryString("m2b") & "." & Request.QueryString("y2b")%>
<%Else%>
<%detb=Mdbor2("DateBegin")%>
<%End if%>
<input type="text" value="<%=detb%>" name="<%="datb" & i%>" class="card" size="12">
<input type="Hidden" name="<%="hih" & i%>" value="<%=Mdbor2("HistId")%>">

</td>
<td class="card">
<%If request.QueryString("d2e")<>"" then%>
<%dete=Request.QueryString("d2e") & "." & Request.QueryString("m2e") & "." & Request.QueryString("y2e")%>
<%Else%>
<%dete=Mdbor2("DateEnd")%>
<%End if%>

<input type="text" value="<%=dete%>" name="<%="date" & i%>" class="card" size="12">

</td>
<td class="card">

<input type="text" value="<%=Mdbor2("LinkToFile")%>" name="<%="ltf" & i%>" class="card" size="13">

</td>
<td class="card">
<%'mdborw.movefirst%>

<select size="1" name="<%="em" & i%>" class="card">
<option value="<%=mdbor2("EmployeeID")%>"><%=mdbor2("EmplFName")%>&nbsp<%=mdbor2("EmplName")%></option>
<%Do until mdborw.EOF%>
<%If mdborw("EmployeeID")<>mdbor2("EmployeeID") Then%>
<option value="<%=mdborw("EmployeeID")%>"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%End if%>
<%mdborw.movenext%>
<%Loop%>
</select>

<%If request.QueryString("nn")="chg2" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nn=<%="lev2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">#</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&i=<%=i%>&nn=<%="chg2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">#</a>
<%End If%>
</td>
<td class="card">
<a href="ProjCard.asp?pc=<%=proc%>&deh=<%=Mdbor2("HistID")%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">Kustuta</a>

</td>
</tr>
<%mdbor2.Movenext%>
<%h=Request.QueryString("i")%>
<%det=h-i%>
<%If request.QueryString("nn")="chg" and det=0 Then%>
<tr class="card">
<td class="card">

<%a0="st" & h%>
<input type="text" name="stchg" value="Muuda Seisundi nimetus" class="card" ><input type="hidden" name="idc" value="<%=h%>">

</td>
<td class="card">
<input type="submit" name="btn" value="Muuda seisund" class="card">
</td>
</tr>
<%End If%>
<%If request.QueryString("nn")="chg2" and det=0 Then%>
<tr class="card">
<td class="card" class='altActive' id='1' title='T&ouml;&ouml;taja nimi siin'>

<%a0="st" & h%>
<input type="text" name="nchg" value="" class="card"><input type="hidden" name="idc2" value="<%=h%>">

</td>
<td class="card" class='altActive' id='1' title='T&ouml;&ouml;taja perekonnanimi siin'>

<%a0="st" & h%>
<input type="text" name="fnchg" value="" class="card">

</td>
<td class="card" class='altActive' id='1' title='T&ouml;&ouml;taja ametikoht siin'>

<input type="text" name="tchg" value="" class="card">

</td>
<td class="card">
<input type="submit" name="btn" value="Muuda kirje" class="card">
</td> 
<%End If%>
</tr>

<%i=i+1%>
<%Loop%>
</table>
</form>
<Form id="ValidForm3" method="POST" action="ProjCard.asp?pc=<%=proc%>&del=1&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<input type="button" value="Projekti kustutamine" name="btnk2"  class="card"  onmouseover='window.status="Kustutas projekt investeerimis kavast.";'onmouseout='window.status="";'>
</form>


<%If LEFT(request.QueryString("d"),1)="d" then%>
<%set mdboe = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdboe.ActiveConnection = mdbo%>

<%If Request.QueryString("Me")="" then%>
<%mes=Month(Date())%>
<%Else%>
<%mes=Request.QueryString("Me")%>
<%End if%>

<%If Request.QueryString("Yee")="" then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=Request.QueryString("Yee")%>
<%End if%>

<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes%>
<%mdbor.Open mdboe%>
<%mn=mdbor("MonthName")%>
<%mdbor.Close%>
<%mdboe.CommandText="SELECT * from Calendar WHERE MONTHH=" & mes & " AND YEARR=" & ya%>
<%mdbor.Open mdboe%>
<Table border=1 class="card">
<tr class="card">
<th class="card" colspan="7">
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th"><<</a>
<%=mn%>&nbsp<%=ya%>
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">>></a>

</th>
</tr>
<tr class="card">
<th class="card">ES</tH>
<th class="card">TE</tH>
<th class="card">KO</tH>
<th class="card">NE</tH>
<th class="card">RE</tH>
<th class="card">LA</tH>
<th class="card">P&Uuml;</tH>
</tr>

<%For i=1 to 5%>
<tr class="card">
<%j=1%>
<%For j=1 to 7%>
<%If mdbor.EOF=false then%>
<%If CDBL(mdbor("WeekD"))=j then%>

<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<th class="card">
<%ELSE%>
<td class="card">
<%END IF%>
<%mdd=mdbor("Dayy")%>
<%If LEN(mdd)<2 then%>
<%mdd="0" & mdd%>
<%End if%>
<%mdm=mdbor("Monthh")%>
<%If LEN(mdm)<2 then%>
<%mdm="0" & mdm%>
<%End if%>
<%If RIGHT(request.QueryString("d"),1)="e" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d=nec&d2e=<%=mdbor("Dayy")%>&m2e=<%=CDBL(mes)%>&y2e=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%If RIGHT(request.QueryString("d"),1)="b" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nec&d2b=<%=mdd%>&m2b=<%=mdm%>&y2b=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%mdbor.Movenext%>
<%Else%>
<td class="card">

<%End if%>
<%Else%>
<td class="card">

<%End if%>

</td>
<%Next%>
</tr>
<%Next%>
<%mdbor.close%>
<%If Request.QueryString("Me")="" then%>
<%mes2=Month(Date())%>
<%Else%>
<%mes2=Request.QueryString("Me")%>
<%End if%>
<%If CDBL(mes)-1<=0 then%>
<%mes=13%>
<%Else%>
<%If CDBL(mes)+1>=13 then%>
<%mes2=0%>
<%End if%>
<%End if%>
<%If mes2-mes<0 then%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH DESC"%>
<%Else%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH ASC"%>
<%End if%>
<%mdbor.Open mdboe%>
<tr class="card">
<%If CDBL(mes)-1<>12 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>
</td>
<td class="card"><%mdbor.MoveNext%></td>
<%If CDBL(mes2)+1<>1 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>

</td>
</tr>
</table>

<%End if%>


<%Else%>


<%If Request.QueryString("del")="1" then%>

<Form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&e=<%=pb%>&e3=<%=np%>">
<input type="submit" value="Vaata" name="btn"  class="card">
<input type="submit" value="Redigeeri" name="btn"  class="card">
</Form>

<%ya=Year(Date())%>
<%mo=Month(Date())%>
<%da=Day(Date())%>
<%zz=mo-04%>
<%If zz>0 Then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=ya-1%>
<%End If%>

<%set mdbodp = Server.CreateObject("ADODB.Command")%>
<%set mdbordp = Server.CreateObject("ADODB.Recordset")%>
<%mdbodp.ActiveConnection = mdbo%>
<%mdbodp.CommandText="DELETE Main WHERE Pid = '" & Mid(proc,6,5) & "' AND yearr='" & Mid(proc,1,4) & "'"%>
<%mdbordp.Open mdbodp%>
<%Else%>

<%If request.QueryString("n")="ol2" or request.QueryString("n")="ne2" or request.QueryString("n")="old" or request.QueryString("n")="new" or LEFT(request.QueryString("d"),2)="da" or request.QueryString("d")="noc" or request.Form("btn")="Lisa" or request.Form("btn")="Lisa kirje" or request.Form("btn")="Lisa Seisund" Then%>

<Form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&e=<%=pb%>&e3=<%=np%>">
<input type="submit" value="Vaata" name="btn" class="card">
<input type="submit" value="Redigeeri" name="btn" class="card">
<input type="submit" value="Kohaldama" name="btn" class="card">


<%If request.Form("btn")="Lisa Seisund" Then%>
<%set mdboas = Server.CreateObject("ADODB.Command")%>
<%set mdboras = Server.CreateObject("ADODB.Recordset")%>
<%mdboas.ActiveConnection = mdbo%>
<%a=Request.Form("sn")%>
<%l=len(a)%>
<%sl2=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl2=sl2 & "&otilde;"%>
<%Case 228%>
<%sl2=sl2 & "&auml;"%>
<%Case 246%>
<%sl2=sl2 & "&ouml;"%>
<%Case 252%>
<%sl2=sl2 & "&uuml;"%>
<%Case 213%>
<%sl2=sl2 & "&Otilde;"%>
<%Case 196%>
<%sl2=sl2 & "&Auml;"%>
<%Case 214%>
<%sl2=sl2 & "&Ouml;"%>
<%Case 220%>
<%sl2=sl2 & "&Uuml;"%>
<%Case Else%>
<%sl2=sl2 & c%>
<%END SELECT%>
<%Next%><%mdboas.CommandText="INSERT INTO StatCode (StatusID,StatusName) VALUES ('" & request.Form("sc") & "', '" & sl2 & "')"%>
<%mdboras.Open mdboas%>
<%End If%>


<%set mdbos = Server.CreateObject("ADODB.Command")%>
<%set mdbors = Server.CreateObject("ADODB.Recordset")%>
<%mdbos.ActiveConnection = mdbo%>
<%mdbos.CommandText="SELECT * FROM StatCode"%>
<%mdbors.Open mdbos%>

<%set mdbow = Server.CreateObject("ADODB.Command")%>
<%set mdborw = Server.CreateObject("ADODB.Recordset")%>
<%mdbow.ActiveConnection = mdbo%>
<%mdbow.CommandText="SELECT * FROM Worker ORDER BY EmplFname"%>
<%mdborw.Open mdbow%>
<table border=1 class="card">
<tr class="card">

<th class="card">

<%nn1=request.QueryString("n1")%>
<%If nn1 & "e" ="e" then%>
<%nn1=0%>
<%Else%>

<%End if%>
<%If LEFT(request.QueryString("d"),2)<>"da" Then%>
<a id="link1" href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&d=dab&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Alguse kuup&auml;ev</a>
<%Else%>
<a id="link1" href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&d=noc&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Alguse kuup&auml;ev</a>
<%End if%>
</th>
<th class="card">
<%If LEFT(request.QueryString("d"),2)<>"da" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&d=dae&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">L&otilde;ppuse kuup&auml;ev</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&d=noc&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">L&otilde;ppuse kuup&auml;ev</a>
<%End if%>
</th>
<th class="card">
<%If request.QueryString("n")="ne2" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&n=<%="ol2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Seisundi Nimetus</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&n=<%="ne2"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Seisundi Nimetus</a>
<%End If%>
</th>
<th class="card">
<%If request.QueryString("n")="new" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&n=<%="old"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Vastutav t&ouml;&ouml;taja</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&n=<%="new"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=request.QueryString("s2")%>&n1=<%=nn1%>" class="th">Vastutav t&ouml;&ouml;taja</a>
<%End If%>
</th>
<th class="card">
Viide failile
</th>

</tr>
<tr class="card">
<td class="card">
<%If Request.QueryString("d1b")="" then%>
<%Dat1b=Date()%>
<%Else%>
<%Dat1b=Request.QueryString("d1b") & "." & Request.QueryString("m1b") & "." & Request.QueryString("y1b")%>
<%End if%>

<input type="text" value="<%=Dat1b%>" name="dba" class="card" size=12>

</td>
<td class="card">
<%If Request.QueryString("d1e")="" then%>
<%Dat1e=Date()%>
<%Else%>
<%Dat1e=Request.QueryString("d1e") & "." & Request.QueryString("m1e") & "." & Request.QueryString("y1e")%>
<%End if%>

<input type="text" value="<%=Dat1e%>" name="dea" class="card" size=12>

</td>
<td class="card">
<%If LEFT(request.QueryString("d"),2)<>"da" Then%>
<%onch="change('ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&d=dab&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value,'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&d=dae&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value"%>
<%Else%>
<%onch="change('ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&d=noc&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value,'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&d=noc&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value"%>
<%End if%>

<%If request.QueryString("n")="ne2" Then%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&n=ol2&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value"%>
<%Else%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&n=ne2&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value"%>
<%End If%>

<%If request.QueryString("n")="new" Then%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&n=old&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value)"%>
<%Else%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d1b=" & Request.QueryString("d1b") & "&m1b=" & Request.QueryString("m1b") & "&y1b=" & Request.QueryString("y1b") & "&d1e=" & Request.QueryString("d1e") & "&m1e=" & Request.QueryString("m1e") & "&y1e=" & Request.QueryString("y1e") & "&n=new&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + sta.options[sta.selectedIndex].value + '&n1=' + ema.options[ema.selectedIndex].value)"%>
<%End If%>

<%'=onch%>

<select size="1" name="sta" class="card" onChange="<%=onch%>">
<%Do until mdbors.EOF%>
<%if request.QueryString("s2")=mdbors("StatusID") then%>
<option value=<%=mdbors("StatusID")%> selected="true"><%=mdbors("StatusName")%></option>
<%Else%>
<option value=<%=mdbors("StatusID")%>><%=mdbors("StatusName")%></option>
<%End if%>
<%mdbors.movenext%>
<%Loop%>
</select>
</td>
<td class="card">
<select size="1" name="ema" class="card" onChange="<%=onch%>">
<%Do until mdborw.EOF%>
<%if CDBL(nn1)<>CDBL(mdborw("EmployeeId")) then%>
<option value="<%=mdborw("EmployeeID")%>"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%Else%>
<option value="<%=mdborw("EmployeeID")%>" selected="true"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%End if%>
<%mdborw.movenext%>
<%Loop%>
</select>
</td>
<td class="card">
<input type="text" value="" name="ltfa" class="card" size=15>
</td>
</tr>
<a name="totj"></a>
<%If request.QueryString("n")="new" Then%>
<tr class="card">
<th class="card">
Isikukood
</th>
<th class="card">
Tootaja nimi
</th>
<th class="card">
Tootaja perekonnanimi
</th>
<th class="card">
Tootaja ametikoht
</th>
<th class="card">
</th>
<tr/>
<tr class="card">
<td class="card">
</td>
<td class="card">
<input type="text" value="" name="En" class="card">
</td>
<td class="card">
<input type="text" value="" name="Efn" class="card">
</td>
<td class="card">
<input type="text" value="" name="tn" class="card">
</td>
<td class="card">
<input type="submit" value="Lisa kirje" name="btn" class="card">
</td>
</tr>



<%End If%>

<%If request.QueryString("n")="ne2" Then%>
<tr class="card">
<th class="card">
Seisundi kood
</th>
<th class="card">
Seisundi nimetus
</th>
<th class="card">
</th>
<tr/>
<tr class="card">
<td class="card">
<input type="text" value="" name="sc" class="card">
</td>
<td class="card">
<input type="text" value="" name="sn" class="card">
</td>
<td class="card">
<input type="submit" value="Lisa Seisund" name="btn" class="card">
</td>
</tr>
<%End If%>
</Form>
</Table>

<%If LEFT(request.QueryString("d"),1)="d" then%>
<%set mdboe = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdboe.ActiveConnection = mdbo%>

<%If Request.QueryString("Me")="" then%>
<%mes=Month(Date())%>
<%Else%>
<%mes=Request.QueryString("Me")%>
<%End if%>

<%If Request.QueryString("Yee")="" then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=Request.QueryString("Yee")%>
<%End if%>

<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes%>
<%mdbor.Open mdboe%>
<%mn=mdbor("MonthName")%>
<%mdbor.Close%>
<%mdboe.CommandText="SELECT * from Calendar WHERE MONTHH=" & mes & " AND YEARR=" & ya%>
<%mdbor.Open mdboe%>
<Table border=1 class="card">
<tr class="card"">
<th class="card" colspan="7">
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th"><<</a>
<%=mn%>&nbsp<%=ya%>
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"  class="th">>></a>
</th>
</tr>
<tr class="card">
<th class="card">ES</tH>
<th class="card">TE</tH>
<th class="card">KO</tH>
<th class="card">NE</tH>
<th class="card">RE</tH>
<th class="card">LA</tH>
<th class="card">P&Uuml;</tH>
</tr>

<%For i=1 to 5%>
<tr class="card">
<%j=1%>
<%For j=1 to 7%>
<%If mdbor.EOF=false then%>
<%If CDBL(mdbor("WeekD"))=j then%>

<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<th class="card">
<Font color="FF0000">
<%ELSE%>
<td class="card">
<%END IF%>
<%If RIGHT(request.QueryString("d"),1)="e" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d1b=<%=Request.QueryString("d1b")%>&m1b=<%=Request.QueryString("m1b")%>&y1b=<%=Request.QueryString("y1b")%>&d=noc&d1e=<%=mdbor("Dayy")%>&m1e=<%=CDBL(mes)%>&y1e=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%If RIGHT(request.QueryString("d"),1)="b" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d1e=<%=Request.QueryString("d1e")%>&m1e=<%=Request.QueryString("m1e")%>&y1e=<%=Request.QueryString("y1e")%>&d=noc&d1b=<%=mdbor("Dayy")%>&m1b=<%=CDBL(mes)%>&y1b=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%mdbor.Movenext%>
<%Else%>
<td class="card">
<%End if%>
<%Else%>
<td class="card">
<%End if%>
</td>
<%Next%>
</tr>
<%Next%>
<%mdbor.close%>
<%If Request.QueryString("Me")="" then%>
<%mes2=Month(Date())%>
<%Else%>
<%mes2=Request.QueryString("Me")%>
<%End if%>
<%If CDBL(mes)-1<=0 then%>
<%mes=13%>
<%Else%>
<%If CDBL(mes)+1>=13 then%>
<%mes2=0%>
<%End if%>
<%End if%>
<%If mes2-mes<0 then%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH DESC"%>
<%Else%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH ASC"%>
<%End if%>
<%mdbor.Open mdboe%>
<tr class="card">
<%If CDBL(mes)-1<>12 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>
</td>
<td class="card"><%mdbor.MoveNext%></td>
<%If CDBL(mes2)+1<>1 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>

</td>
</tr>
</table>

<%End if%>

<%Else%>
<%If request.Form("btn")="Lisa Kontrakt" or request.Form("btn2")="Lisa kirje" or request.QueryString("ne")<>"" or request.QueryString("n")="olz" or request.QueryString("n")="nez" or LEFT(request.QueryString("d"),2)="ns" or LEFT(request.QueryString("d"),2)="ds" or request.Form("btn")="Lisa Firma" Then%>
<%If request.Form("btn")="Lisa Firma" Then%>
<%set mdboaf = Server.CreateObject("ADODB.Command")%>
<%set mdboraf = Server.CreateObject("ADODB.Recordset")%>
<%mdboaf.ActiveConnection = mdbo%>
<%a=Request.Form("fs")%>
<%l=len(a)%>
<%sl2=""%>
<%For i=1 To l%>
<%c=Mid(a,i,1)%>
<%v=asc(c)%>
<%SELECT CASE v%>
<%Case 245%>
<%sl2=sl2 & "&otilde;"%>
<%Case 228%>
<%sl2=sl2 & "&auml;"%>
<%Case 246%>
<%sl2=sl2 & "&ouml;"%>
<%Case 252%>
<%sl2=sl2 & "&uuml;"%>
<%Case 213%>
<%sl2=sl2 & "&Otilde;"%>
<%Case 196%>
<%sl2=sl2 & "&Auml;"%>
<%Case 214%>
<%sl2=sl2 & "&Ouml;"%>
<%Case 220%>
<%sl2=sl2 & "&Uuml;"%>
<%Case Else%>
<%sl2=sl2 & c%>
<%END SELECT%>
<%Next%>
<%mdboaf.CommandText="INSERT INTO CompID (CompanyID,CompanyName) VALUES ('" & request.Form("fd") & "', '" & sl2 & "')"%>
<%mdboraf.Open mdboaf%>
<%End If%>
<Form method="POST" action="ProjCard.asp?pc=<%=proc%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&e=<%=pb%>&e3=<%=np%>">
<input type="submit" value="Vaata" name="btn" class="card">
<input type="submit" value="Redigeeri" name="btn" class="card">
<input type="submit" value="Kohaldama muutused" name="btn" class="card">
<br>
<table>
<tr class="card">
<th class="card">
Kontrakti Number
</th>
<th class="card">
<%If request.QueryString("ne")="nev" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&ne=<%="oltt"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">Firma Nimetus</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&ne=<%="nev"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">Firma Nimetus</a>
<%End If%>

</th>
<th class="card">
<%If LEFT(request.QueryString("d"),2)<>"ds" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=dsb&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">S&otilde;lmimise kuup&auml;ev</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nsc&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">S&otilde;lmimise kuup&auml;ev</a>
<%End if%>
</th>
<th class="card">
<%If LEFT(request.QueryString("d"),2)<>"ds" Then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=dse&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">L&otilde;ppimise kuup&auml;ev</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nsc&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">L&otilde;ppimise kuup&auml;ev</a>
<%End if%>
</th>
<th class="card">
<%if request.QueryString("n")="nez" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&n=<%="olz"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">T&ouml;&ouml;taja</a>
<%Else%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&n=<%="nez"%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>&s2=<%=Request.QueryString("s2")%>&n1=<%=Request.QueryString("n1")%>" class="th">T&ouml;&ouml;taja</a>
<%End if%>
</th>
<th class="card">
Summa
</th>
</tr>
<%set mdbow = Server.CreateObject("ADODB.Command")%>
<%set mdborw = Server.CreateObject("ADODB.Recordset")%>
<%mdbow.ActiveConnection = mdbo%>
<%mdbow.CommandText="SELECT * from Worker ORDER BY EmplFname"%>
<%mdborw.Open mdbow%>
<%set mdbocy = Server.CreateObject("ADODB.Command")%>
<%set mdborcy = Server.CreateObject("ADODB.Recordset")%>
<%mdbocy.ActiveConnection = mdbo%>
<%mdbocy.CommandText="SELECT * from CompID ORDER BY CompanyName"%>
<%mdborcy.Open mdbocy%>

<tr class="card">
<td class="card">

<input type="Text" value="" name="<%="cntl"%>" class="card" size=11>

</td>
<td class="card">
<%If request.QueryString("ne")="nev" Then%>
<%onch="change('ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&ne=oltt&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value"%>
<%Else%>
<%onch="change('ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&ne=nev&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value"%>
<%End if%>

<%If LEFT(request.QueryString("d"),2)<>"ds" Then%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&d=dsb&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value,'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&d=dsb&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value"%>
<%Else%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&d=nsc&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value,'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&d=nsc&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value"%>
<%End if%>

<%if request.QueryString("n")="nez" then%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&n=olz&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value)"%>
<%Else%>
<%onch=onch & ",'ProjCard.asp?pc=" & proc & "&d2b=" & Request.QueryString("d2b") & "&m2b=" & Request.QueryString("m2b") & "&y2b=" & Request.QueryString("y2b") & "&d2e=" & Request.QueryString("d2e") & "&m2e=" & Request.QueryString("m2e") & "&y2e=" & Request.QueryString("y2e") & "&n=nez&sr=" & srt & dd & "&no=" & n & "&y=" & zo & " &s=" & co & "&em=" & pb & "&e3=" & np & "&s2=' + cmpl.options[cmpl.selectedIndex].value + '&n1=' + empll.options[empll.selectedIndex].value)"%>
<%End if%>
<select Name="cmpl" size="1" class="card" style="width:150" onChange="<%=onch%>"> 
<%'mdborcy.MoveFirst%>
<%Do until mdborcy.EOF%>
<%if request.QueryString("s2")=mdborcy("CompanyId") then%>
<option value=<%=mdborcy("CompanyId")%> selected="true"><%=mdborcy("CompanyName")%></option>
<%Else%>
<option value="<%=mdborcy("CompanyId")%>" ><%=mdborcy("CompanyName")%></option>
<%End If%>
<%mdborcy.MoveNext%>
<%Loop%>
</select>
</td>
<td class="card">
<%If Request.QueryString("d2b")="" then%>
<%Dat1b=Date()%>
<%Else%>
<%Dat1b=Request.QueryString("d2b") & "." & Request.QueryString("m2b") & "." & Request.QueryString("y2b")%>
<%End if%>
<input type="Text" value="<%=Dat1b%>" name="<%="dcol"%>" class="card" size=12>
</td>
<td class="card">
<%If Request.QueryString("d2e")="" then%>
<%Dat1e=Date()%>
<%Else%>
<%Dat1e=Request.QueryString("d2e") & "." & Request.QueryString("m2e") & "." & Request.QueryString("y2e")%>
<%End if%>
<input type="Text" value="<%=Dat1e%>" name="<%="dcnl"%>" class="card" size=12>
</td>
<td class="card">
<select Name="empll" class="card" size="1" onChange="<%=onch%>">
<%'mdborw.MoveFirst%>
<%Do until mdborw.EOF%>
<%if request.QueryString("n1")="" then%>
<%ene=0%>
<%Else%>
<%ene=request.QueryString("n1")%>
<%End if%>
<%if CDBL(ene)=CDBL(mdborw("EmployeeId")) then%>
<option value=<%=mdborw("EmployeeId")%> selected="true"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%Else%>
<option value="<%=mdborw("EmployeeId")%>"><%=mdborw("EmplFName")%>&nbsp<%=mdborw("EmplName")%></option>
<%End if%>
<%mdborw.MoveNext%>
<%Loop%>
</select>
</td>
<td class="card">
<input type="Text" value="0" name="<%="sucl"%>" class="card" size=8> 
</td>
</tr>

<%If LEFT(request.QueryString("d"),1)="d" then%>
<%set mdboe = Server.CreateObject("ADODB.Command")%>
<%set mdbor = Server.CreateObject("ADODB.Recordset")%>
<%mdboe.ActiveConnection = mdbo%>

<%If Request.QueryString("Me")="" then%>
<%mes=Month(Date())%>
<%Else%>
<%mes=Request.QueryString("Me")%>
<%End if%>

<%If Request.QueryString("Yee")="" then%>
<%ya=Year(Date())%>
<%Else%>
<%ya=Request.QueryString("Yee")%>
<%End if%>

<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes%>
<%mdbor.Open mdboe%>
<%mn=mdbor("MonthName")%>
<%mdbor.Close%>
<%mdboe.CommandText="SELECT * from Calendar WHERE MONTHH=" & mes & " AND YEARR=" & ya%>
<%mdbor.Open mdboe%>
<Table border=1 class="card">
<tr class="card">
<th class="card" colspan="7">
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th"><<</a>
<%=mn%>&nbsp<%=ya%>
<a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>" class="th">>></a>

</th>
</tr>
<tr class="card">
<th class="card">ES</tH>
<th class="card">TE</tH>
<th class="card">KO</tH>
<th class="card">NE</tH>
<th class="card">RE</tH>
<th class="card">LA</tH>
<th class="card">P&Uuml;</tH>
</tr>

<%For i=1 to 5%>
<tr class="card">
<%j=1%>
<%For j=1 to 7%>
<%If mdbor.EOF=false then%>
<%If CDBL(mdbor("WeekD"))=j then%>

<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<th class="card">
<%ELSE%>
<td class="card">
<%END IF%>
<%mdd=mdbor("Dayy")%>
<%If LEN(mdd)<2 then%>
<%mdd="0" & mdd%>
<%End if%>
<%mdm=mdbor("Monthh")%>
<%If LEN(mdm)<2 then%>
<%mdm="0" & mdm%>
<%End if%>
<%If RIGHT(request.QueryString("d"),1)="e" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2b=<%=Request.QueryString("d2b")%>&m2b=<%=Request.QueryString("m2b")%>&y2b=<%=Request.QueryString("y2b")%>&d=nsc&d2e=<%=mdd%>&m2e=<%=mdm%>&y2e=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%If RIGHT(request.QueryString("d"),1)="b" then%>
<a href="ProjCard.asp?pc=<%=proc%>&d2e=<%=Request.QueryString("d2e")%>&m2e=<%=Request.QueryString("m2e")%>&y2e=<%=Request.QueryString("y2e")%>&d=nsc&d2b=<%=mdd%>&m2b=<%=mdm%>&y2b=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>">
<%IF mdbor("Dayy")=DAY(DATE()) and CDBL(mes)=CDBL(MONTH(DATE())) and CDBL(ya)=CDBL(YEAR(DATE())) then%>
<Font color="FF0000">
<%ELSE%>
<%END IF%>
<%=mdbor("Dayy")%>
</font>
</a>
<%End if%>
<%mdbor.Movenext%>
<%Else%>
<td class="card">

<%End if%>
<%Else%>
<td class="card">

<%End if%>

</td>
<%Next%>
</tr>
<%Next%>
<%mdbor.close%>
<%If Request.QueryString("Me")="" then%>
<%mes2=Month(Date())%>
<%Else%>
<%mes2=Request.QueryString("Me")%>
<%End if%>
<%If CDBL(mes)-1<=0 then%>
<%mes=13%>
<%Else%>
<%If CDBL(mes)+1>=13 then%>
<%mes2=0%>
<%End if%>
<%End if%>
<%If mes2-mes<0 then%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH DESC"%>
<%Else%>
<%mdboe.CommandText="SELECT * from Mesjaca WHERE MONTHH=" & mes-1 & " OR  MONTHH=" & mes2+1 & " ORDER BY MONTHH ASC"%>
<%End if%>
<%mdbor.Open mdboe%>
<tr class="card">
<%If CDBL(mes)-1<>12 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes)-1%>&yee=<%=CDBL(ya)-1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>
</td>
<td class="card"><%mdbor.MoveNext%></td>
<%If CDBL(mes2)+1<>1 Then%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%Else%>
<td class="card" colspan="3"><a href="ProjCard.asp?pc=<%=proc%>&d=<%=Request.QueryString("d")%>&me=<%=CDBL(mes2)+1%>&yee=<%=CDBL(ya)+1%>&sr=<%=srt & dd%>&no=<%=n%>&y=<%=zo%>&s=<%=co%>&em=<%=pb%>&e3=<%=np%>"><%=mdbor("MonthName")%></a>
<%End If%>

</td>
</tr>
</table>

<%End if%>


<%If request.QueryString("ne")="nev" Then%>
<tr class="card>
<th class="card">
Firma kood
</th>
<th class="card">
Firma nimetus
</th>
<th class="card">
</th>
</tr>
<tr class="card">
<td class="card">
<input type="text" value="" name="fd" class="card">
</td>
<td class="card">
<input type="text" value="" name="fs" class="card">
</td>
<td class="card">
<input type="submit" value="Lisa Firma" name="btn"  class="card">
</td>
</tr>
<%End If%>
<%If request.QueryString("n")="nez" Then%>
<tr class="card">
<th class="card">
Isikukood
</th>
<th class="card">
Tootaja nimi
</th>
<th class="card">
Tootaja perekonnanimi
</th>
<th class="card">
Tootaja ametikoht
</th>
<th class="card">
</th>
<tr/>
<tr class="card">
<td class="card">
</td>
<td class="card">
<input type="text" value="" name="En" class="card">
</td>
<td class="card">
<input type="text" value="" name="Efn" class="card">
</td>
<td class="card">
<input type="text" value="" name="tn" class="card">
</td>
<td class="card">
<input type="submit" value="Lisa kirje" name="btn2" class="card">
</td>
</tr>
<%End If%>

</table>
</form>
<%End If%>
<%End If%>
<%End if%>
<%End if%>
<%End if%>
<%End if%>
</body>
</html>