<%@ Page Title="" Language="C#" MasterPageFile="~/ljxPageMaster.master" AutoEventWireup="true" CodeFile="myindex.aspx.cs" Inherits="myindex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/i1.jpg" Width="715px" Height="64px"  />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="1">
                 <asp:DataList ID="DataList2" runat="server" RepeatColumns="2"  style="text-align: center">
                     <ItemStyle Wrap="True" />
            <ItemTemplate>
                <table style="width:100%;">
                    
                    <tr>
                        <td colspan="1">
                            <a href='<%# "Show.aspx?ID=" + Eval("ID") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">
                            <img alt="" src="<%#  Eval("图片")%>"  height="200"  width="330" border="0" />
                            </a></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            产品名称： 
                            <a href='<%# "Show.aspx?ID=" + Eval("ID") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">   <%#  Eval("产品名称")%>  </a>
                                
                           
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            产品价格： 
                            <a href='<%# "Show.aspx?ID=" + Eval("ID") + "&price=" + Eval("价格") %>' 
                                target="_blank">   <%#  Eval("价格")%>  </a>
                                
                           
                        </td>
                    </tr>
                    
                </table>
            </ItemTemplate>
        </asp:DataList>                                          

            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;
                <tr>
            <td>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/i2.jpg" Width="715px"  />
            </td>
        </tr>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2"  style="text-align: center" RepeatDirection="Horizontal">
                     <ItemStyle Wrap="True" />
            <ItemTemplate>
                <table style="width:100%;">
                    
                    <tr>
                        <td colspan="1">
                            <a href='<%# "Show.aspx?ID=" + Eval("ID") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">
                            <img alt="" src="<%#  Eval("图片")%>"  height="200"  width="330" border="0" />
                            </a></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="1">
                            类别： 
                            <a href='<%# "Show.aspx?类别=" + Eval("类别") + "&name=" + Eval("产品名称") %>' 
                                target="_blank">   <%#  Eval("类别")%>  </a>
                                
                           
                        </td>
                    </tr>
                    
                    
                </table>
            </ItemTemplate>
        </asp:DataList>
            </td>
        </tr>
    </table>
    
    
    
</asp:Content>




