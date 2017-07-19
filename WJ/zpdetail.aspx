<%@ Page Title="" Language="C#" MasterPageFile="~/ljxPageMaster.master" AutoEventWireup="true" CodeFile="zpdetail.aspx.cs" Inherits="zpdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table17" border="0" cellpadding="0" cellspacing="0" height="219" width="757">
        <tr>
            <td background="image/top2.jpg" height="37" width="757">
                <table border="0" cellpadding="0" cellspacing="0" height="21" style="margin-left: 52px" width="100%">
                    <tr>
                        <td align="center" class="auto-style1" valign="bottom" width="22%"><span class="STYLE1">&nbsp;&nbsp;&nbsp;&nbsp; 内容详细</span></td>
                        <td class="auto-style1" width="78%"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table18" border="0" cellpadding="0" cellspacing="0" height="100%" width="757">
                    <tr>
                        <td background="qtimages/1_02_02_02_02_01.gif" width="14"></td>
                        <td class="newsline" height="174" valign="top" width="714">
                            <table align="center" border="1" bordercolor="#a5dfc6" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="96%">
                                <tr>
                                    <td align="left" height="110">
                                        <%=ncontent %>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <input name="Submit5" onclick="javascript: history.back();" style="border-right: #000000 1px solid; border-top: #000000 1px solid; border-left: #000000 1px solid; color: #666666; border-bottom: #000000 1px solid; height: 19px" type="button" value="返回" /> </td>
                                </tr>
                            </table>
                        </td>
                        <td background="qtimages/1_02_02_02_02_03.gif" width="29"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <img alt="" height="8" src="qtimages/1_02_02_02_03.gif" width="757" /></td>
        </tr>
    </table>
</asp:Content>

