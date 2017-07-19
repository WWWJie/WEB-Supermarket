<%@ Page Title="" Language="C#" MasterPageFile="~/manager/ljxMaster.master" AutoEventWireup="true" CodeFile="ProductList.aspx.cs" Inherits="manager_ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="RightURL" Runat="Server">
    <p>
        你当前位置：产品管理 -&gt; 产品列表</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" 
                    onrowcommand="GridView1_RowCommand" PageSize="6" 
    Width="100%" onpageindexchanging="GridView1_PageIndexChanging" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="编号" />
            <asp:BoundField DataField="产品名称" HeaderText="产品名称" />
            <asp:BoundField DataField="介绍" HeaderText="介绍" />
            <asp:BoundField DataField="库存" HeaderText="库存" />
            <asp:BoundField DataField="价格" HeaderText="价格" />
            <asp:BoundField DataField="图片" HeaderText="图片" />
            <asp:BoundField DataField="类别" HeaderText="类别" />
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

