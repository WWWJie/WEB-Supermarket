<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="manager_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
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
                新闻信息编辑界面
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
                新闻来源</td>
            <td>
                <asp:TextBox ID="新闻来源" runat="server"></asp:TextBox>
                <asp:TextBox ID="id" runat="server" Width="1px"></asp:TextBox>
            </td>
            <td>
                新闻类别</td>
            <td>
                <asp:DropDownList ID="新闻类别" runat="server" Width="120px">
                    <asp:ListItem>网内新闻</asp:ListItem>
                    <asp:ListItem>国际新闻</asp:ListItem>
                    <asp:ListItem>国内新闻</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                添加人</td>
            <td>
                <asp:TextBox ID="添加人" runat="server"></asp:TextBox>
            </td>
            <td>
                编辑日期</td>
            <td>
                <asp:TextBox ID="编辑日期" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                新闻内容：</td>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

