<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master"  AutoEventWireup="true" ValidateRequest="false"  CodeFile="newsedit.aspx.cs" Inherits="manager_newsedit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：网站管理 -&gt; 新闻编辑 统一</p>
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
            <td colspan="4">
                数据库读写&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                图片</td>
            <td>
                <asp:TextBox ID="图片" runat="server"></asp:TextBox>
                <asp:TextBox ID="ID" runat="server" Width="1px"></asp:TextBox>
            </td>
            <td>
                新闻类别</td>
            <td>
                <asp:DropDownList ID="新闻类别" runat="server" Width="120px">
                    <asp:ListItem>站内新闻</asp:ListItem>
                    <asp:ListItem>热门推荐</asp:ListItem>
                    <asp:ListItem>企业简介</asp:ListItem>
                    <asp:ListItem>广告</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                添加时间</td>
            <td>
                <asp:TextBox ID="添加时间" runat="server"></asp:TextBox>
            </td>
            <td>
                </td>
            <td>
                &nbsp;</td>
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
                <asp:Button ID="add" runat="server" onclick="add_Click" Text="添加" style="width: 40px" />
            </td>
            <td>
                <asp:Button ID="modi" runat="server" onclick="modi_Click" Text="修改" />
            </td>
            <td>
                <asp:Button ID="del" runat="server" onclick="del_Click" Text="删除" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onpageindexchanged="GridView1_PageIndexChanged" 
                    onpageindexchanging="GridView1_PageIndexChanging" 
                    onrowcommand="GridView1_RowCommand" PageSize="3" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="编号" />
                        <asp:BoundField DataField="类别" HeaderText="类别" />
                        <asp:BoundField DataField="标题" HeaderText="标题" />
                        <asp:BoundField DataField="图片" HeaderText="图片" />
                        <asp:BoundField DataField="时间" HeaderText="编辑时间" />
                        
                        <asp:ButtonField ButtonType="Button" CommandName="select" Text="选择" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

