<%@ Assembly Name="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" meta:progid="SharePoint.WebPartPage.Document" %>
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
<WebPartPages:ErrorWebPart runat="server" ErrorMessage="List does not exist.

The page you selected contains a list that does not exist.  It may have been deleted by another user." FatalError="False" ErrorType="Unknown" Title="Error" FrameType="Default" SuppressWebPartChrome="False" Description="An unexpected error has been encountered in this Web Part." IsIncluded="True" ZoneID="wpz" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="False" AllowMinimize="False" AllowConnect="False" AllowEdit="False" AllowHide="False" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_be68f214_b38e_4917_9a5b_881b5ce9ee9d" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{62407EA8-41DE-4D42-845F-B6117493E0DB}" WebPart="true" Height="" Width=""></WebPartPages:ErrorWebPart>












</div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>
				Latest News</strong><br></h1>
				<WebPartPages:ErrorWebPart runat="server" ErrorMessage="List does not exist.

The page you selected contains a list that does not exist.  It may have been deleted by another user." FatalError="False" ErrorType="Unknown" Title="Error" FrameType="Default" SuppressWebPartChrome="False" Description="An unexpected error has been encountered in this Web Part." IsIncluded="True" ZoneID="wpz" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="False" AllowMinimize="False" AllowConnect="False" AllowEdit="False" AllowHide="False" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_e6baccbc_9e71_4b89_a2eb_4d80e7b4afb7" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{C781195C-FD7E-4EDF-84DB-F3242F69D20D}" WebPart="true" Height="" Width=""></WebPartPages:ErrorWebPart>











<p>
   <br>&#160;<br></p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Veras%20Updates/AllItems.aspx"><h1><strong>
				Weekly&#160;Updates</strong><br></h1></a>
<WebPartPages:ErrorWebPart runat="server" ErrorMessage="List does not exist.

The page you selected contains a list that does not exist.  It may have been deleted by another user." FatalError="False" ErrorType="Unknown" Title="Error" FrameType="Default" SuppressWebPartChrome="False" Description="An unexpected error has been encountered in this Web Part." IsIncluded="True" ZoneID="wpz" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="False" AllowMinimize="False" AllowConnect="False" AllowEdit="False" AllowHide="False" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_b59d813b_7b0d_40d9_af80_6cad75e23716" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{B099158C-DE9D-4D02-8E8E-FAC350C56999}" WebPart="true" Height="" Width=""></WebPartPages:ErrorWebPart>












</div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1>
   <strong>Why Salesforce​​​</strong></h1><p style="text-align&#58;center;">&#160;<br></p><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><p>
				&#160;<img alt="Full Image with bubbles.png" src="/SiteAssets/SitePages/Home/Full%20Image%20with%20bubbles.png" style="margin&#58;5px;width&#58;1528px;height&#58;697px;" /></p></blockquote></blockquote></blockquote>
<div><table width="100%" class="ms-rteTable-default" cellspacing="0"><tbody><tr><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​<br></td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td></tr></tbody></table> 
   <br> 
</div><p>&#160;&#160;&#160;&#160;</p><div style="width&#58;100%;"><div style="width&#58;33%;display&#58;inline-block;"> 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="580" height="360" src="https&#58;//www.youtube.com/embed/Z4IOZCQ2L7M" frameborder="0" allowfullscreen=""></iframe>
			&#160;</div></div><div style="width&#58;33%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="580" height="360" src="https&#58;//player.vimeo.com/video/153234861" frameborder="0" allowfullscreen=""></iframe> 
			&#160;</div></div><div style="width&#58;34%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="600" height="360" src="https&#58;//player.vimeo.com/video/189256572" frameborder="0" allowfullscreen=""></iframe> 
			&#160;</div></div></div><p>&#160;</p><h1>
   <a href="/Lists/Testimonials/AllItems.aspx"> 
      <strong>Testimonials</strong></a></h1><p>&#160;</p>
			<WebPartPages:ErrorWebPart runat="server" ErrorMessage="List does not exist.

The page you selected contains a list that does not exist.  It may have been deleted by another user." FatalError="False" ErrorType="Unknown" Title="Error" FrameType="Default" SuppressWebPartChrome="False" Description="An unexpected error has been encountered in this Web Part." IsIncluded="True" ZoneID="wpz" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="False" AllowMinimize="False" AllowConnect="False" AllowEdit="False" AllowHide="False" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_ba5cfc21_ae09_49f8_9a5d_5401816338ba" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{2BE1ED71-F705-4A8F-A5B0-58582DA66929}" WebPart="true" Height="" Width=""></WebPartPages:ErrorWebPart>











<p>​<br>&#160;</p><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;style&gt;
.ms-core-navigation { DISPLAY: none }
#contentBox { margin-left: 20px }
.nivo-caption{color:#fff !important;}
.theme-default a.nivo-prevNav{display:none;}
.theme-default a.nivo-nextNav{display:none;}
&lt;/style&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_e59612d2_2e53_44ca_bd94_a6945953a8a3" __MarkupType="vsattributemarkup" __WebPartId="{BD71785A-A6E5-4745-9A2B-45B097F07339}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>












<br></div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
