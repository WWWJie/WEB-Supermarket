<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left.ascx.cs" Inherits="manager_left" %>
<div id="manager_left">
    <div class="sys" style="cursor: pointer" onclick="itemselect(1)">
        <img src="../image/arrBig1.gif" id="sysimg1" width="11" height="11" alt="" />
        账号管理</div>
    <div id="leftMenu1" class="leftMenu">
        <ul>
          <li><a href="/Manager/Index.aspx"><span></span> 系统管理员</a></li>          
        </ul>
    </div>
    <div class="sys" style="cursor: pointer" onclick="itemselect(2)">
        <img src="../image/arrBig1.gif" id="sysimg2" width="11" height="11" alt="" />
        网站管理</div>
    <div id="leftMenu2" class="leftMenu">
        <ul> 
            <li><a href="newsedit.aspx"><span></span> 新闻编辑_统一</a></li>
            <li><a href="newsList.aspx"><span></span> 新闻编辑_列表</a></li>
            <li><a href="file_up_down_Load.aspx"><span></span> 图片上传下载</a></li>
        </ul>
    </div>
    <div class="sys" style="cursor: pointer" onclick="itemselect(3)">
        <img src="../image/arrBig1.gif" id="sysimg3" width="11" height="11" alt="" />
        产品管理</div>
    <div id="leftMenu3" class="leftMenu">
        <ul>           
                    
            <li><a href="AddProduct.aspx"><span></span> 产品发布</a></li>
            <li><a href="ProductList.aspx"><span></span> 产品列表</a></li>
        </ul>
    </div>
     <div class="sys" style="cursor: pointer" onclick="itemselect(4)">
        <img src="../image/arrBig1.gif" id="sysimg4" width="11" height="11" alt="" />
        新闻管理</div>
    <div id="leftMenu4" class="leftMenu">
        <ul>           
            
            <li><a href="newsList_edit.aspx"><span></span> 新闻发布</a></li>   
            <li><a href="newsList.aspx"><span></span> 新闻列表</a></li>            
        </ul>
    </div>

      <div class="sys" style="cursor: pointer" onclick="itemselect(4)">
        <img src="../image/arrBig1.gif" id="Img1" width="11" height="11" alt="" />
        招聘管理</div>
    <div id="Div1" class="leftMenu">
        <ul>           
            
            <li><a href="zhaopin_edit.aspx"><span></span> 招聘信息发布</a></li>
            <li><a href="zhaopinList.aspx"><span></span> 招聘信息列表</a></li>            
        </ul>
    </div>
</div>
