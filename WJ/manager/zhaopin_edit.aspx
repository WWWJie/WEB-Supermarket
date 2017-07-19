<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master" AutoEventWireup="true" CodeFile="zhaopin_edit.aspx.cs" Inherits="manager_zhaopin_edit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：招聘管理 -&gt; 招聘信息发布</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <script charset="utf-8" src="../kindeditor/kindeditor.js" type="text/javascript"></script>
    <script charset="utf-8" src="../kindeditor/lang/zh_CN.js" type="text/javascript"></script>
    <script type="text/javascript">
        var editor;
        KindEditor.ready(function (K) {
            editor = K.create('#MainContent_editor_id', {
                resizeType: 2,
                uploadJson: '/kindeditor/asp.net/upload_json.ashx',
                fileManagerJson: '/kindeditor/asp.net/file_manager_json.ashx',
                allowFileManager: false,
                resizeMode: 0,
                width: '700px',
                resizeType: 1,
                items: ['source', 'undo', 'redo', 'fontname', 'fontsize', 'forecolor', 'hilitecolor', 'bold', 'justifyleft', 'justifycenter', 'justifyright', 'image', 'flash', 'media', 'insertfile', 'baidumap', 'pagebreak', 'textcolor', 'bgcolor']
            });
        });
    </script>

        <table style="width:100%;">
        <tr>
            <td colspan="4" style="text-align: center">
                招聘信息编辑界面
            </td>
        </tr>
        <tr>
            <td>
                标题</td>
            <td colspan="3">
                <asp:TextBox ID="标题" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                时间</td>
            <td>
                <asp:TextBox ID="时间" runat="server" Height="19px"></asp:TextBox>
                <asp:TextBox ID="ID" runat="server" Width="1px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td align="left">
                    &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                招聘内容：<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <div align="left">
                    <textarea id="editor_id" cols="3" name="websitecontent" rows="3" runat="server" 
                        style="width: 750px; height: 300px;"></textarea></div>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="read" runat="server" onclick="read_Click" Text="读取" 
                    Width="56px" />
            </td>
            <td>
                <asp:Button ID="add" runat="server" onclick="add_Click" Text="添加" />
            </td>
            <td>
                <asp:Button ID="modi" runat="server" onclick="modi_Click" Text="修改" />
            </td>
            <td>
                <asp:Button ID="yulan" runat="server"  Text="预览效果" onclick="yulan_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

