<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shopping.aspx.cs" Inherits="shopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 179px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table style="width:100%;">
                <tr>
                    <td colspan="4">
                        购物车&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        产品名称</td>
                    <td>
                        <asp:TextBox ID="产品名称" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        数量</td>
                    <td>
                       <asp:TextBox ID="数量" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        价格</td>
                    <td>
                        <asp:TextBox ID="价格" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        订购人</td>
                    <td>
                        <asp:TextBox ID="订购人" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        地址</td>
                    <td>
                        <asp:TextBox ID="地址" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        电话</td>
                    <td>
                        <asp:TextBox ID="电话" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td class="style1">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="read" runat="server" onclick="read_Click" Text="读取" 
                            Width="56px" />
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="modi" runat="server" onclick="modi_Click" Text="修改" />
                    </td>
                    <td>
                        <asp:Button ID="del" runat="server" onclick="del_Click" Text="删除" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            CellPadding="3" GridLines="None" 
                            onrowcommand="GridView1_RowCommand" Width="100%" AllowPaging="True" 
                            onpageindexchanging="GridView1_PageIndexChanging" PageSize="3" 
                            AllowSorting="True" BackColor="White" BorderColor="White" 
                            BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" />
                                <asp:BoundField DataField="产品名称" HeaderText="产品名称" />
                                <asp:BoundField DataField="数量" HeaderText="数量" />
                                <asp:BoundField DataField="价格" HeaderText="价格" />
                                <asp:BoundField DataField="地址" HeaderText="地址" />
                                <asp:BoundField DataField="订购人" HeaderText="订购人" />
                                <asp:BoundField DataField="电话" HeaderText="电话" />
                                
                                <asp:ButtonField ButtonType="Button" CommandName="select" HeaderText="选择" Text="选择" />
                              
                                
                                
                                
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#DEDFDE" HorizontalAlign="Center" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
