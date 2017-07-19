<%@ Page Title="" Language="C#" MasterPageFile="ljxMaster.master" AutoEventWireup="true" CodeFile="newsList.aspx.cs" Inherits="manager_newsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：网站管理 -&gt; 新闻编辑 列表</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onrowcommand="GridView1_RowCommand" PageSize="6" 
    Width="100%" onpageindexchanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="编号" />
            <asp:BoundField DataField="类别" HeaderText="类别" />
            <asp:BoundField DataField="标题" HeaderText="标题" />
            <asp:BoundField DataField="时间" HeaderText="时间" />
            
            <asp:ButtonField ButtonType="Button" CommandName="select" Text="编辑" 
                HeaderText="编辑" />
            <asp:ButtonField ButtonType="Button" CommandName="del" HeaderText="删除" 
                Text="删除" />
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
</asp:Content>

