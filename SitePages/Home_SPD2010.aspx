﻿<%@ Assembly Name="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ProjectProperty Property="Title" runat="server"/> - <SharePoint:ListItemProperty runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><SharePoint:AlphaImage ID=onetidtpweb1 Src="/_layouts/15/images/wiki.png?rev=44" Width=145 Height=54 Alt="" Runat="server"/></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="CollaborationServer" content="SharePoint Team Web Site" />
	<SharePoint:ScriptBlock runat="server">
	var navBarHelpOverrideKey = &quot;WSSEndUser&quot;;
	</SharePoint:ScriptBlock>
	<SharePoint:RssLink runat="server"/>
	</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMiniConsole" runat="server">
	<SharePoint:FormComponent TemplateName="WikiMiniConsole" ControlMode="Display" runat="server" id="WikiMiniConsole"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderLeftActions" runat="server">
	<SharePoint:RecentChangesMenu runat="server" id="RecentChanges"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<span id="wikiPageNameDisplay" style="display: none;" runat="server">
		<SharePoint:ListItemProperty runat="server"/>
	</span>
	<span style="display:none;" id="wikiPageNameEdit" runat="server">
		<asp:TextBox id="wikiPageNameEditTextBox" runat="server"/>
	</span>
	<SharePoint:VersionedPlaceHolder UIVersion="4" runat="server">
		<SharePoint:SPRibbonButton
			id="btnWikiEdit"
			RibbonCommand="Ribbon.WikiPageTab.EditAndCheckout.SaveEdit.Menu.SaveEdit.Edit"
			runat="server"
			Text="edit"/>
		<SharePoint:SPRibbonButton
			id="btnWikiSave"
			RibbonCommand="Ribbon.WikiPageTab.EditAndCheckout.SaveEdit.Menu.SaveEdit.SaveAndStop"
			runat="server"
			Text="edit"/>
		<SharePoint:SPRibbonButton
			id="btnWikiRevert"
			RibbonCommand="Ribbon.WikiPageTab.EditAndCheckout.SaveEdit.Menu.SaveEdit.Revert"
			runat="server"
			Text="Revert"/>
	</SharePoint:VersionedPlaceHolder>
	<SharePoint:EmbeddedFormField id="WikiField" FieldName="WikiField" ControlMode="Display" runat="server"><div class="ExternalClass57A8E25D38E246139E5DCF48FD1A84D5"><table id="layoutsTable" style="width&#58;100%;"><tbody><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner">
		​<img class="ms-rtePosition-2" alt="CYDCOR-HEADER-New.png" src="/SiteAssets/SitePages/Home/INTRANET%20-%20V1.png" style="margin&#58;5px;width&#58;100%;height&#58;250px;" /></div></div></td></tr><tr style="vertical-align&#58;top;"><td style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"> 
<a href="/Lists/Calendar/calendar.aspx">
   <h1>
      <strong>Upcoming Events</strong>​<br></h1>
   <p> (View Full Calendar)</p></a> 
<div class="ms-rtestate-read ms-rte-wpbox"><div class="ms-rtestate-notify  ms-rtestate-read be68f214-b38e-4917-9a5b-881b5ce9ee9d" id="div_be68f214-b38e-4917-9a5b-881b5ce9ee9d" unselectable="on"></div><div id="vid_be68f214-b38e-4917-9a5b-881b5ce9ee9d" unselectable="on" style="display&#58;none;"></div></div>
</div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>
				Latest News</strong><br></h1><div class="ms-rtestate-read ms-rte-wpbox" unselectable="on"><div class="ms-rtestate-notify  ms-rtestate-read e6baccbc-9e71-4b89-a2eb-4d80e7b4afb7" id="div_e6baccbc-9e71-4b89-a2eb-4d80e7b4afb7" unselectable="on"></div><div id="vid_e6baccbc-9e71-4b89-a2eb-4d80e7b4afb7" unselectable="on" style="display&#58;none;"></div></div><p>
   <br>&nbsp;<br></p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Veras%20Updates/AllItems.aspx"><h1><strong>
				Weekly&nbsp;Updates</strong><br></h1></a>
<div class="ms-rtestate-read ms-rte-wpbox"><div class="ms-rtestate-notify  ms-rtestate-read b59d813b-7b0d-40d9-af80-6cad75e23716" id="div_b59d813b-7b0d-40d9-af80-6cad75e23716" unselectable="on"></div><div id="vid_b59d813b-7b0d-40d9-af80-6cad75e23716" unselectable="on" style="display&#58;none;"></div></div>
</div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1>
   <strong>Why Salesforce​​​</strong></h1><p style="text-align&#58;center;">&nbsp;<br></p><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><p>
				&nbsp;<img alt="Full Image with bubbles.png" src="/SiteAssets/SitePages/Home/Full%20Image%20with%20bubbles.png" style="margin&#58;5px;width&#58;1528px;height&#58;697px;" /></p></blockquote></blockquote></blockquote>
<div><table width="100%" class="ms-rteTable-default" cellspacing="0"><tbody><tr><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​<br></td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td></tr></tbody></table> 
   <br> 
</div><p>&nbsp;&nbsp;&nbsp;&nbsp;</p><div style="width&#58;100%;"><div style="width&#58;35%;display&#58;inline-block;"> 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="550" height="360" src="https&#58;//www.youtube.com/embed/Z4IOZCQ2L7M" frameborder="0" allowfullscreen=""></iframe>
			&nbsp;</div></div><div style="width&#58;35%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="550" height="360" src="https&#58;//player.vimeo.com/video/153234861" frameborder="0" allowfullscreen=""></iframe> 
			&nbsp;</div></div><div style="width&#58;25%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="550" height="360" src="https&#58;//player.vimeo.com/video/189256572" frameborder="0" allowfullscreen=""></iframe> 
			&nbsp;</div></div></div><p>&nbsp;</p><h1>
   <a href="/Lists/Testimonials/AllItems.aspx"> 
      <strong>Testimonials</strong></a></h1><p>&nbsp;</p><div class="ms-rtestate-read ms-rte-wpbox"><div class="ms-rtestate-notify  ms-rtestate-read ba5cfc21-ae09-49f8-9a5d-5401816338ba" id="div_ba5cfc21-ae09-49f8-9a5d-5401816338ba" unselectable="on"></div><div id="vid_ba5cfc21-ae09-49f8-9a5d-5401816338ba" unselectable="on" style="display&#58;none;"></div></div><p>
			​<br>&nbsp;</p><div class="ms-rtestate-read ms-rte-wpbox"><div class="ms-rtestate-notify  ms-rtestate-read e59612d2-2e53-44ca-bd94-a6945953a8a3" id="div_e59612d2-2e53-44ca-bd94-a6945953a8a3" unselectable="on"></div><div id="vid_e59612d2-2e53-44ca-bd94-a6945953a8a3" unselectable="on" style="display&#58;none;"></div></div>
<br></div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
