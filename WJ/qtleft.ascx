<%@ Control Language="C#" AutoEventWireup="true" CodeFile="qtleft.ascx.cs" Inherits="qtleft" %>
<style type="text/css">
    .auto-style1 {
        width: 59px;
    }
    .auto-style2 {
        height: 24px;
        width: 59px;
    }
    .auto-style3 {
        width: 72px;
    }
    .auto-style4 {
        width: 72px;
        height: 24px;
    }
    .auto-style5 {
        height: 24px;
    }
    .auto-style6 {
        width: 10px;
    }
    .auto-style7 {
        height: 323px;
    }
    </style>

    <table id="Table3" border="0"  cellpadding="0" cellspacing="0" style="height: 220px; width: 246px; margin-top:-50px;">
              <tr>
                <td class="auto-style7">
                    <table id="Table4" width="246" height="200"  border="0" cellpadding="0" cellspacing="0" style="margin-bottom:-10px">
                  <tr>
                    <td width="246" height="36" background="image/top2.jpg">
                        <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">系统公告</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td>
                        <table id="Table5" width="246" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="image/top2.jpg" width="30" height="180" alt=""></td>
                        <td width="203" height="180"><marquee border="0" direction="up" height="168" onMouseOut="start()" onMouseOver="stop()"
                scrollamount="1" scrolldelay="50"><TABLE width="92%" height="100%" 
            border=0 align=center 
      cellPadding=0 cellSpacing=5>
                      <TBODY><TR><TD><%=ngg %></TD></TR></TBODY></TABLE></marquee></td>
                        <td><img src="image/top2.jpg" width="13" height="180" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="image/top2.jpg" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td>
                    <table id="Table6" width="246" height="120" border="0" cellpadding="0" cellspacing="0" style="margin-top:-40px">
                  <tr>
                    <td width="246" height="36" background="image/top2.jpg">
                        <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom"><span class="STYLE1">用户登陆</span></td>
                        <td width="32%">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td>
                        <table id="Table7" width="246"height="200"  border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="30" background="image/top2.jpg">&nbsp;</td>
                          <td width="203" height="60">
                            
                            <br>
                          
                            
                              <asp:Panel ID="Panel1" runat="server" Height="111px" Width="216px" style="margin-left: 0px">
                            <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" style="width: 196px">
                                <tr>
                                    <td align="right" class="auto-style1">
                                        用户名:</td>
                                    <td align="left">
                                        <asp:TextBox ID="TextBox1" runat="server" Style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style1">
                                        密码:</td>
                                    <td align="left">
                                        <asp:TextBox ID="TextBox2" runat="server" Style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            width: 100px; color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px"
                                            TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr style="">
                                    <td align="right" class="auto-style1">
                                        权限:</td>
                                    <td align="left">
                                        <asp:DropDownList ID="cx" runat="server" Height="16px" OnSelectedIndexChanged="cx_SelectedIndexChanged" Width="93px">
                                            <asp:ListItem>无</asp:ListItem>
                                            <asp:ListItem>管理员</asp:ListItem>
                                        </asp:DropDownList></td>
                                </tr>
                                <tr style="display:none">
                                    <td align="right" class="auto-style1">&nbsp;</td>
                                    <td align="left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td style="height: 24px">
                                        <asp:Button ID="Button1" runat="server" Height="18px" OnClick="Button1_Click"
                                            Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                            border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                            Text=" 登 陆 " Width="46px" />
                                        &nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="用户注册" /></td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" Height="100px" Width="200px">
                            <table align="center" border="0" cellpadding="0" cellspacing="0" height="103" style="width: 191px">
                                <tr>
                                    <td align="right" class="auto-style3">
                                        用户名:</td>
                                    <td align="left">
                                        <%=Session["username"].ToString().Trim() %>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="auto-style4">
                                        您的权限:</td>
                                    <td align="left" class="auto-style5">
                                        <%=Session["cx"].ToString().Trim() %>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;<asp:Button ID="Button2" runat="server" Height="18px" OnClick="Button2_Click"
                                            Style="border-right: #cadcb2 1px solid; border-top: #cadcb2 1px solid; font-size: 12px;
                                            border-left: #cadcb2 1px solid; color: #81b432; border-bottom: #cadcb2 1px solid"
                                            Text=" 退 出 " Width="46px" />
                                        <asp:Button ID="Button4" runat="server"  OnClick="Button4_Click" Style="border-right: #cadcb2 1px solid;
                                            border-top: #cadcb2 1px solid; font-size: 12px; border-left: #cadcb2 1px solid;
                                            color: #81b432; border-bottom: #cadcb2 1px solid; height: 18px" Text="个人后台" /></td>
                                </tr>
                            </table>
                        </asp:Panel>
                           
                            </td>
                          <td width="13" background="image/top2.jpg">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="image/top2.jpg" width="246" height="13" alt=""></td>
                  </tr>
                </table></td>
              </tr>
			  
			 </table>  
                    
            
    <table id="Table8" width="246" height="229" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="image/top2.jpg">
                        <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom">站内新闻</td>
                        <td width="32%">
                           &nbsp;&nbsp;
                           <a href="news.aspx"><span class="STYLE2"style="color:#6600FF">more</span></a>
                          </td>
                      </tr>
                    </table>

                    </td>
                  </tr>
                  <tr>
                    <td>
                        <table id="Table9" width="246" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><img src="image/top2.jpg" width="30" height="180" alt=""></td>
                        <td width="203" height="180">
                        <asp:DataList ID="DataList1" runat="server" Width="80%" BorderStyle="None" 
                                            CellPadding="0" Height="144px" style="margin-left: 24px; margin-top: 0px;" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                                            <ItemTemplate>
                                                <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        
                                                        <td>
                                                          
                                                        <a href='ggdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                        <%# CutStr(DataBinder.Eval(Container.DataItem, "标题 "))%></a>
                                                        </td>
                                                        
                                                    </tr>
                                                    
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                          </td>
                        <td><img src="image/top2.jpg" width="13" height="180" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="image/top2.jpg" width="246" height="13" alt="">

                    </td>
                  </tr>
                </table>              
                  
    <table id="Table1" width="246" height="229" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="246" height="36" background="image/top2.jpg">
                        <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="68%" align="center" valign="bottom">招聘信息</td>
                        <td width="32%">&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;
                           <a href="zhaopin.aspx"><span class="STYLE2"style="color:#6600FF">more</span></a>
                          </td>
                      </tr>
                    </table>

                    </td>
                  </tr>
                  <tr>
                    <td>
                        <table id="Table2" width="246" height="180" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td class="auto-style6"><img src="image/top2.jpg" width="30" height="180" alt=""></td>
                        <td width="203" height="180">
                        <asp:DataList ID="DataList2" runat="server" Width="80%" BorderStyle="None" 
                                            CellPadding="0" Height="144px" style="margin-left: 24px; margin-top: 0px;" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                                            <ItemTemplate>
                                                <table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        
                                                        <td>
                                                          
                                                        <a href='zpdetail.aspx?id=<%#DataBinder.Eval(Container.DataItem, "ID") %>'>
                                                        <%# CutStr(DataBinder.Eval(Container.DataItem, "标题 "))%></a>
                                                        </td>
                                                        
                                                    </tr>
                                                    
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                          </td>
                        <td><img src="image/top2.jpg" width="13" height="180" alt=""></td>
                      </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td><img src="image/top2.jpg" width="246" height="13" alt="">

                    </td>
                  </tr>
                </table>
                
