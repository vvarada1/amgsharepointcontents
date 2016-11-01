<%@ Assembly Name="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
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
<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="False" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" ViewGuid="{CF7F201D-C9CF-462C-873A-8E698F554DA1}" EnableOriginalValue="False" ViewContentTypeId="0x" ListName="{2CAEB5AD-0555-4BE2-B694-9CAB513231BE}" ListId="2caeb5ad-0555-4be2-b694-9cab513231be" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Calendar" FrameType="Default" SuppressWebPartChrome="False" Description="" IsIncluded="True" PartOrder="12" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itevent.png?rev=44" TitleUrl="/dev/Lists/Calendar" DetailLink="/dev/Lists/Calendar" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itevent.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_717a3bf5_02a6_44f6_9e56_8580e956da66" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{CF7F201D-C9CF-462C-873A-8E698F554DA1}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
	<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection"/>
	<ParameterBinding Name="dvt_sortfield" Location="Postback;Connection"/>
	<ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue=""/>
	<ParameterBinding Name="dvt_firstrow" Location="Postback;Connection"/>
	<ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" />
	<ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" />
	<ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" />
	<ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" />
	<ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noevents_toaddeventclickaddnewevent)" />
	<ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noevents_toaddeventclickaddnewevent_howto)" />
	<ParameterBinding Name="AddNewAnnouncement" Location="Resource(wss,AddNewEvent)" />
	<ParameterBinding Name="MoreAnnouncements" Location="Resource(wss,more_events)" />
</ParameterBindings>
<DataFields>
</DataFields>
<XmlDefinition>
	<View Name="{CF7F201D-C9CF-462C-873A-8E698F554DA1}" MobileView="TRUE" Type="HTML" Hidden="TRUE" TabularView="FALSE" RecurrenceRowset="TRUE" DisplayName="" Url="/dev/SitePages/Home.aspx" Level="1" BaseViewID="0" ContentTypeID="0x" >
		<Query>
			<Where>
				<DateRangesOverlap>
					<FieldRef Name="EventDate"/>
					<FieldRef Name="EndDate"/>
					<FieldRef Name="RecurrenceID"/>
					<Value Type="DateTime">
						<Now/>
					</Value>
				</DateRangesOverlap>
			</Where>
		</Query>
		<ViewFields>
			<FieldRef Name="EventDate" Explicit="TRUE"/>
			<FieldRef Name="LinkTitleNoMenu" Explicit="TRUE"/>
			<FieldRef Name="Description" Explicit="TRUE"/>
			<FieldRef Name="fRecurrence" Explicit="TRUE"/>
		</ViewFields>
		<RowLimit>5</RowLimit>
		<Aggregations Value="Off"/>
		<XslLink>main.xsl</XslLink>
		<Toolbar Type="Standard"/>
	</View>
</XmlDefinition>
</WebPartPages:XsltListViewWebPart>














<p>&nbsp;</p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>
				Latest News</strong><br></h1>
				
<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="False" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{16005872-3A75-49D0-AA1D-02D53C6EAE28}" EnableOriginalValue="False" ViewContentTypeId="0x" ListUrl="" ListDisplayName="" ListName="{782E8AE8-2A79-4C84-B2EC-5ED2D98EA60B}" ListId="782e8ae8-2a79-4c84-b2ec-5ed2d98ea60b" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Salesforce News!" FrameType="Default" SuppressWebPartChrome="False" Description="" IsIncluded="True" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/dev/Lists/Salesforce News" DetailLink="/dev/Lists/Salesforce News" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_5f8c1ddf_62af_4e5b_8263_1f01954f1c8a" __MarkupType="vsattributemarkup" __WebPartId="{16005872-3A75-49D0-AA1D-02D53C6EAE28}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width="">
	<ParameterBindings>
					<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" />
					<ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" />
					<ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" />
					<ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" />
					<ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" />
					<ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" />
					<ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" />
					<ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" />
					<ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" />
					<ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" />
				</ParameterBindings>
	<JSLink>
					~site/Apptexfiles/instances/16005872-3A75-49D0-AA1D-02D53C6EAE28.js</JSLink>
	<DataFields></DataFields>
<XmlDefinition>
					<View Name="{16005872-3A75-49D0-AA1D-02D53C6EAE28}" MobileView="TRUE" Type="HTML" Hidden="TRUE" TabularView="FALSE" DisplayName="" Url="/dev/SitePages/Home.aspx" Level="1" BaseViewID="0" ContentTypeID="0x" >
						<Query>
							<OrderBy>
					<FieldRef Name="ID"/>
							</OrderBy>
						</Query>
						<ViewFields>
							<FieldRef Name="LinkTitleNoMenu"/>
				<FieldRef Name="epud"/>
						</ViewFields>
						<RowLimit Paged="TRUE">30</RowLimit>
			<Aggregations Value="Off"/>
			<ViewStyle ID="15"/>
			<JSLink>clienttemplates.js</JSLink>
						<XslLink Default="TRUE">main.xsl</XslLink>
						<Toolbar Type="Standard"/>
					</View>
				</XmlDefinition>
</WebPartPages:XsltListViewWebPart>










<p>
   <br>&nbsp;<br></p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Veras%20Updates/AllItems.aspx"><h1><strong>
				Weekly&nbsp;Updates</strong><br></h1></a>













</div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1>
   <strong>Why Salesforce​​​</strong></h1><p style="text-align&#58;center;">&nbsp;<br></p><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><blockquote style="margin&#58;0px 0px 0px 40px;padding&#58;0px;border&#58;currentcolor;"><p>
				&nbsp;<img alt="Full Image with bubbles.png" src="/SiteAssets/SitePages/Home/Full%20Image%20with%20bubbles.png" style="margin&#58;5px;width&#58;1528px;height&#58;697px;" /></p></blockquote></blockquote></blockquote>
<div><table width="100%" class="ms-rteTable-default" cellspacing="0"><tbody><tr><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​<br></td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td><td class="ms-rteTable-default" style="border&#58;currentcolor;width&#58;25%;">
	​</td></tr></tbody></table> 
   <br> 
</div><p>&nbsp;&nbsp;&nbsp;&nbsp;</p><div style="width&#58;100%;"><div style="width&#58;33%;display&#58;inline-block;"> 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="580" height="360" src="https&#58;//www.youtube.com/embed/Z4IOZCQ2L7M" frameborder="0" allowfullscreen=""></iframe>
			&nbsp;</div></div><div style="width&#58;33%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="580" height="360" src="https&#58;//player.vimeo.com/video/153234861" frameborder="0" allowfullscreen=""></iframe> 
			&nbsp;</div></div><div style="width&#58;34%;display&#58;inline-block;">​ 
      <div class="ms-rtestate-read ms-rte-embedcode ms-rtestate-notify ms-rte-embedil s4-wpActive">
         <iframe width="600" height="360" src="https&#58;//player.vimeo.com/video/189256572" frameborder="0" allowfullscreen=""></iframe> 
			&nbsp;</div></div></div><p>&nbsp;</p><h1>
   <a href="/Lists/Testimonials/AllItems.aspx"> 
      <strong>Testimonials</strong></a></h1><p>&nbsp;</p>
			











<p>​<br>&nbsp;</p><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;style&gt;
.ms-core-navigation { DISPLAY: none }
#contentBox { margin-left: 20px }
.nivo-caption{color:#fff !important;}
.theme-default a.nivo-prevNav{display:none;}
.theme-default a.nivo-nextNav{display:none;}
&lt;/style&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_e59612d2_2e53_44ca_bd94_a6945953a8a3" __MarkupType="vsattributemarkup" __WebPartId="{37646EA7-1296-4052-9C9C-276590A2892B}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>














<br></div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
