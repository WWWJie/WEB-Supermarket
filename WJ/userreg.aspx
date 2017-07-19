<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 41px;
            text-align: center;
        }
        .auto-style2 {
            width: 178px;
        }
        .auto-style3 {
            text-align: center;
            width: 107px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: center;
            height: 23px;
            width: 107px;
        }
        .auto-style6 {
            width: 178px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
            width: 324px;
        }
        .auto-style8 {
            width: 324px;
        }
        .auto-style9 {
            width: 324px;
            height: 20px;
        }
        .auto-style10 {
            text-align: center;
            height: 20px;
        }
        .auto-style12 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style1" colspan="5" style="font-size: 23px">欢迎注册</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">用户名 </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空 "></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">密码 </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">确认密码</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style4">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次密码不一致"></asp:CompareValidator>
                </td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">地址</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style3">联系电话</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="提交" />
                </td>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style9"></td>
                <td class="auto-style10" colspan="3"></td>
                <td class="auto-style12"></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
