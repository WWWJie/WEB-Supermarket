<%@ Page Title="" Language="C#" MasterPageFile="~/ljxPageMaster.master" AutoEventWireup="true" CodeFile="person.aspx.cs" Inherits="person" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style33 {
            width: 178px;
            height: 51px;
            text-align: left;
        }
        .auto-style34 {
            width: 178px;
            text-align: left;
            height: 19px;
        }
        .auto-style36 {
            height: 51px;
            width: 101px;
        }
        .auto-style40 {
            width: 714px;
            height: 280px;
        }
        .auto-style41 {
            width: 178px;
            height: 19px;
        }
        .auto-style46 {
            width: 101px;
            text-align: left;
            height: 19px;
        }
        .auto-style49 {
            width: 155px;
            height: 40px;
            text-align: left;
        }
        .auto-style60 {
            height: 40px;
        }
        .auto-style61 {
            height: 40px;
            width: 155px;
            text-align: center;
        }
        .auto-style62 {
            width: 178px;
            height: 40px;
        }
        .auto-style63 {
            width: 101px;
            text-align: center;
            height: 40px;
        }
        .auto-style64 {
            height: 19px;
            width: 155px;
            text-align: center;
        }
        .auto-style66 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style40">
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style36" style="font-size: xx-large">&nbsp; 个 人</td>
            <td class="auto-style36" style="font-size: xx-large">中 心</td>
            <td class="auto-style66"></td>
            <td class="auto-style66"></td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
                <td class="auto-style64" style="font-size: large">用户名 
                    </td>
                <td class="auto-style46">
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </td>
                <td class="auto-style41">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="用户名不能为空 "></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style41">
                    </td>
                </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style61"style="font-size: large">密码 </td>
            <td class="auto-style63">
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
            </td>
            <td class="auto-style60">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="密码不能为空"></asp:RequiredFieldValidator>
                </td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style62"></td>
            <td class="auto-style61"style="font-size: large">确认密码</td>
            <td class="auto-style63">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style60">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次密码不一致"></asp:CompareValidator>
                </td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style61"style="font-size: large">地址</td>
            <td class="auto-style63">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style61"style="font-size: large">联系电话</td>
            <td class="auto-style63">
                <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style62">&nbsp;</td>
            <td class="auto-style49">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
            </td>
            <td class="auto-style63">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
            <td class="auto-style60">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

