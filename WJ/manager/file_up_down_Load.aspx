<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master" AutoEventWireup="true" CodeFile="file_up_down_Load.aspx.cs" Inherits="manager_file_up_down_Load" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：网站管理 - 文件上传下载</p>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:HyperLink ID="HyperLink1" runat="server" Target="_blank">下载文件</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                文件名称：<asp:TextBox ID="downfilename" runat="server"></asp:TextBox>
                <asp:Button ID="backdown" runat="server" Text="后台代码下载" 
                    onclick="backdown_Click" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                采用可视控件FileUpload上传：<asp:TextBox ID="图片" runat="server" Width="56px"></asp:TextBox>&nbsp;<asp:FileUpload 
                        ID="FileUpload1" runat="server" Width="188px" />
                    <asp:button id="nUp" runat="server" Width="41px" Text="上传" Font-Bold="True" 
                    OnClick="nUp_Click" Height="20px" ></asp:button>
                    &nbsp;
                </td>
            <td>
                &nbsp;</td>
        </tr>
                <tr>
            <td>
                采用Client插件上传到ftp</td>
            <td>
                ftp:<asp:TextBox ID="ftpTextBox" runat="server">ftp://10.22.128.130</asp:TextBox>
                ,&nbsp;&nbsp; 选择文件：<asp:FileUpload 
                        ID="FileUpload2" runat="server" Width="188px" />
                <asp:Button ID="myftp" runat="server" Text="上传到ftp" onclick="myftp_Click" />
                    &nbsp;&nbsp;
                <asp:Button ID="downftp" runat="server" Text="下载ftp" onclick="downftp_Click" />
                    </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

