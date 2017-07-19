<%@ Page Title="" Language="C#" MasterPageFile="ljxPageMaster.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 401px;
        }
        .auto-style6 {
        }
        .auto-style8 {
            width: 209px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="86px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>所有分类</asp:ListItem>
        <asp:ListItem>陶瓷摆件</asp:ListItem>
        <asp:ListItem>陶瓷花瓶</asp:ListItem>
        <asp:ListItem>陶瓷香薰</asp:ListItem>
        <asp:ListItem>陶瓷茶具</asp:ListItem>
    </asp:DropDownList>
                &nbsp;
                <asp:Button ID="Button2" runat="server" Text="搜索" OnClick="Button2_Click" />
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:DataList ID="DataList2" runat="server" RepeatColumns="3"  style="text-align: center" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                     <ItemStyle Wrap="True" />
            <ItemTemplate>
                <table style="width:100%;">
                    
                    <tr>
                        <td colspan="1">
                            <a href='<%# "ID=" + Eval("ID") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">
                            <img alt="" src="<%#  Eval("图片")%>"  height="150"  width="220" border="0" />
                            </a></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            产品名称： 
                            <a href='<%# "show.aspx?ID=" + Eval("ID") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">   <%#  Eval("产品名称")%>  </a>
                                
                           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                             
                            <a href='<%# "show.aspx?ID=" + Eval("ID") + "&name=" + Eval("介绍") %>' 
                                target="_blank">   <%#  Eval("介绍")%>  </a>
                                
                           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            产品价格： 
                            <a href='<%# "show.aspx?ID=" + Eval("ID") + "&price=" + Eval("价格") %>' 
                                target="_blank">   <%#  Eval("价格")%>  </a>
                                
                           
                        </td>
                    </tr>
                    
                </table>
            </ItemTemplate>
        </asp:DataList>
            </td>
        </tr>
                <tr bgcolor="#f1f1f1">
                                                <td height="35" weight="100%" class="auto-style8">
                                                    <p align="center" style="width: 234%">
                                                        首 页 上一页 下一页 尾 页 页次：1/1页 共有10种商品 转到<input class="wenbenkuang" value="1" maxlength="5"
                                                            size="2" name="page" tyep="TEXT">页
                                                        <input class="go-wenbenkuang" value="GO" type="submit"></p>
                                                </td>
                                            </tr>
            </td>
        </tr>
    </table>
&nbsp;
</asp:Content>

