<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="Show" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 519px;
        }
        .auto-style9 {
            width: 100%;
            height: 297px;
        }
        .auto-style12 {
            text-align: left;
            height: 47px;
        }
        .auto-style13 {
            height: 16px;
        }
        .auto-style14 {
            width: 519px;
            height: 16px;
        }
        .auto-style15 {
            width: 350px;
            height: 16px;
        }
        .auto-style16 {
            width: 519px;
            height: 21px;
        }
        .auto-style17 {
            width: 350px;
            height: 21px;
        }
        .auto-style18 {
            height: 21px;
        }
        .auto-style19 {
            height: 46px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style9">
            <tr>
                <td class="auto-style2" rowspan="5">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/a4.jpg" Width="480px" Height="400px"/>
                </td>
                <td class="auto-style19" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label">
                        
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" colspan="2">
                    库存：<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    电话：<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    价格：<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                &nbsp;
                    &nbsp;&nbsp;
                    <br />
                    <br />
                    住址：<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" colspan="2">
                    姓名：<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    数量&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="157px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style17">
                    <asp:Button ID="Button1" runat="server" Text="加入购物车" OnClick="Button1_Click" />
                </td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
