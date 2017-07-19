<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ggdetail.aspx.cs" Inherits="ggdetail" %>

<%@ Register Src="qtdown.ascx" TagName="qtdown" TagPrefix="uc3" %>

<%@ Register Src="qtleft.ascx" TagName="qtleft" TagPrefix="uc2" %>

<%@ Register Src="qttop.ascx" TagName="qttop" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>王洁_详细内容</title><LINK href="qtimages/style.css" type=text/css rel=stylesheet>
<style type="text/css">
<!--
.STYLE1 {
	color: #185838;
	font-weight: bold;
}
.STYLE2 {
	color: #FFFF00;
	font-weight: bold;
}
    .auto-style1 {
        height: 21px;
    }
-->
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="Form1" runat="server">
    <div>

<table width="1003" height="1100" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td>
            <uc1:qttop ID="Qttop1" runat="server" />
        </td>
	</tr>
	<tr>
		<td>
            <table id="Table2" width="1003" height="694" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign=top><uc2:qtleft id="Qtleft1" runat="server"></uc2:qtleft></td>
            <td valign="top">
                <table id="Table12" width="757" height="694" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td valign="top">
                    <table id="Table15" width="757" height="219" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="757" height="37" background="image/top2.jpg">
                        <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0" style="margin-left: 52px">
                      <tr>
                        <td width="22%" align="center" valign="bottom" class="auto-style1"><span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp; 内容详细</span></td>
                        <td width="78%" class="auto-style1"></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                  <tr>
                    <td>
                        <table id="Table16" width="757" height="100%" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td background="qtimages/1_02_02_02_02_01.gif" width="14"></td>
                        <td width="714" height="174" class=newsline valign=top>
                            <table align="center" border="1" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0"
                                style="border-collapse: collapse" width="96%">
                                
                                <tr>
                                    <td align="left" height="110">
                                        <%=ncontent %>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <input name="Submit5" onclick="javascript: history.back();" style="border-right: #000000 1px solid;
                                            border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666;
                                            border-bottom: #000000 1px solid; height: 19px" type="button" value="返回" />

                                    </td>
                                </tr>
                            </table>
                            </td>
                        <td background="qtimages/1_02_02_02_02_03.gif" width="29"></td>
                      </tr>
                    </table></td>
                  </tr>

                  <tr>
                    <td><img src="qtimages/1_02_02_02_03.gif" width="757" height="8" alt=""></td>
                  </tr>
                </table>

                </td>
              </tr>
              
            </table></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td width="1003" height="116" background="qtimages/1_03.gif">
            <uc3:qtdown ID="Qtdown1" runat="server" />
        </td>
	</tr>
</table>

    </div></form>
</body>
</html>
