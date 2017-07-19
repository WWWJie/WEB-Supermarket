<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="manager_AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：产品管理 -&gt; 产品发布</p>
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
                产品名称</td>
            <td colspan="3">
                <asp:TextBox ID="产品名称" runat="server" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                产品类别</td>
            <td>
                <asp:DropDownList ID="类别" runat="server" Width="120px">
                    <asp:ListItem>陶瓷摆件</asp:ListItem>
                    <asp:ListItem>陶瓷花瓶</asp:ListItem>
                    <asp:ListItem>陶瓷香薰</asp:ListItem>
                    <asp:ListItem>陶瓷茶具</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="ID" runat="server" Width="1px"></asp:TextBox>
            </td>
            <td>
                &nbsp;上传图片>
                    <asp:TextBox ID="图片" runat="server" Width="56px"></asp:TextBox><asp:FileUpload 
                        ID="FileUpload1" runat="server" Width="188px" />
            &nbsp;&nbsp;&nbsp;
                    <asp:button id="nUp" runat="server" Width="41px" Text="上传" Font-Bold="True" 
                        OnClick="nUp_Click" Height="16px" ></asp:button>
            </td>
        </tr>
        <tr>
            <td>
                库存</td>
            <td>
                <asp:TextBox ID="库存" runat="server" Height="19px"></asp:TextBox>
            </td>
            <td>
                &nbsp;&nbsp;&nbsp; 价格&nbsp;&nbsp; 
                <asp:TextBox ID="价格" runat="server" Height="19px"></asp:TextBox>
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
            <td align="left">
                    &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                产品介绍：<asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1" colspan="4">
                <div align="left">
                    <textarea id="editor_id" cols="3" name="websitecontent" runat="server" 
                        style="width: 750px; height: 133px;"></textarea></div>
            </td>
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

