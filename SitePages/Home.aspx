<%@ Assembly Name="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" %> <%@ Import Namespace="Microsoft.SharePoint.WebPartPages" %> <%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> <%@ Import Namespace="Microsoft.SharePoint" %> <%@ Assembly Name="Microsoft.Web.CommandUI, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:ProjectProperty Property="Title" runat="server"/> - <SharePoint:ListItemProperty runat="server"/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageImage" runat="server"><SharePoint:AlphaImage ID=onetidtpweb1 Src="/_layouts/15/images/wiki.png?rev=44" Width=145 Height=54 Alt="" Runat="server"/></asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="CollaborationServer" content="SharePoint Team Web Site" />
	<SharePoint:ScriptBlock runat="server">
	var navBarHelpOverrideKey = "WSSEndUser";
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
	<SharePoint:EmbeddedFormField id="WikiField" FieldName="WikiField" ControlMode="Display" runat="server"><div class="ExternalClass57A8E25D38E246139E5DCF48FD1A84D5"><table id="layoutsTable" style="width&#58;100%;"><tbody><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner">​​​<img class="ms-rtePosition-2" alt="CYDCOR-HEADER-New.png" src="/SiteAssets/SitePages/Home/INTRANET%20-%20V1.png" style="margin&#58;5px;width&#58;100%;height&#58;250px;" />​​<br></div></div></td></tr><tr style="vertical-align&#58;top;"><td style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Calendar/calendar.aspx"><h1><strong>Upcoming Events</strong>​<br></h1><p>(View Full Calendar)</p></a>
	 <h1>WebPart1</div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>Latest News</strong><br></h1>
			<h1>WebPart2</h1>
<p><br>&#160;<br></p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Veras%20Updates/AllItems.aspx"><h1><strong>Weekly&#160;Updates</strong><br></h1></a>
			<h1>WebPart3</h1>

</div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>Why Salesforce​​​</strong></h1><p style="text-align&#58;center;">&#160;<br></p><blockquote style="border-width&#58;medium;border-style&#58;none;border-color&#58;initial;padding&#58;0px;margin&#58;0px 0px 0px 40px;"><blockquote style="border-width&#58;medium;border-style&#58;none;border-color&#58;initial;padding&#58;0px;margin&#58;0px 0px 0px 40px;"><blockquote style="border-width&#58;medium;border-style&#58;none;border-color&#58;initial;padding&#58;0px;margin&#58;0px 0px 0px 40px;"><p>&#160;<img alt="Full Image with bubbles.png" src="/SiteAssets/SitePages/Home/Full%20Image%20with%20bubbles.png" style="margin&#58;5px;width&#58;1528px;height&#58;697px;" /></p></blockquote></blockquote></blockquote><div><table width="100%" class="ms-rteTable-default" cellspacing="0"><tbody><tr><td class="ms-rteTable-default" style="width&#58;25%;">​</td><td class="ms-rteTable-default" style="width&#58;25%;">​<br></td><td class="ms-rteTable-default" style="width&#58;25%;">​</td><td class="ms-rteTable-default" style="width&#58;25%;">​</td></tr></tbody></table><br></div><p>&#160;&#160;&#160;&#160;</p><div style="width&#58;100%;"><div style="width&#58;50%;display&#58;inline-block;">​ <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive"><iframe width="650" height="360" src="https&#58;//www.youtube.com/embed/Z4IOZCQ2L7M" frameborder="0" allowfullscreen=""></iframe>&#160;</div></div><div style="width&#58;50%;display&#58;inline-block;">​ <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive"><iframe width="650" height="360" src="https&#58;//player.vimeo.com/video/153234861" frameborder="0" allowfullscreen=""></iframe>&#160;</div></div></div><p>&#160;</p><h1><a href="/Lists/Testimonials/AllItems.aspx"><strong>Testimonials</strong></a></h1><p>&#160;</p>
			<h1>WebPart4</h1>

<p>​<br>&#160;</p><h1>WebPart5</h1>
<br></div></div></td></tr></tbody></table><span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
