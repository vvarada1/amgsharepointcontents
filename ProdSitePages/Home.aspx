<%@ Assembly Name="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%> <%@ Page Language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WikiEditPage" MasterPageFile="~masterurl/default.master"      MainContentID="PlaceHolderMain" meta:webpartpageexpansion="full" meta:progid="SharePoint.WebPartPage.Document" %>
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
<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="False" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{6E66DD7F-F3CF-4A62-B8E9-871806A11590}" EnableOriginalValue="False" ViewContentTypeId="0x" ListUrl="" ListDisplayName="" ListName="{62A1EF96-A01D-41B4-83E9-2C78FA03DA5B}" ListId="62a1ef96-a01d-41b4-83e9-2c78fa03da5b" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Salesforce Trainings" FrameType="None" SuppressWebPartChrome="False" Description="Salesforce Training Calendar" IsIncluded="True" PartOrder="1" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/images/itevent.png" TitleUrl="/Lists/Calendar" DetailLink="/Lists/Calendar" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/images/itevent.png" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_be68f214_b38e_4917_9a5b_881b5ce9ee9d" ChromeType="None" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{6E66DD7F-F3CF-4A62-B8E9-871806A11590}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
	<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" />
	<ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" />
	<ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" />
	<ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" />
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
	<View Name="{6E66DD7F-F3CF-4A62-B8E9-871806A11590}" MobileView="TRUE" Type="HTML" Hidden="TRUE" TabularView="FALSE" RecurrenceRowset="TRUE" DisplayName="" Url="/SitePages/Home.aspx" Level="1" BaseViewID="0" ContentTypeID="0x" >
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










</div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><strong>
				Latest News</strong><br></h1>
				<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="True" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{C8029807-B44B-4008-BF54-BA0CA98BFFE1}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{EAC5F3AE-0227-480A-B036-DA853AA3E1D8}" ListId="eac5f3ae-0227-480a-b036-da853aa3e1d8" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Salesforce News!" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="wpz" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/Lists/Salesforce News" DetailLink="/Lists/Salesforce News" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_e6baccbc_9e71_4b89_a2eb_4d80e7b4afb7" ChromeType="None" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{C8029807-B44B-4008-BF54-BA0CA98BFFE1}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>




<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<JSLink>
					~site/Apptexfiles/instances/c8029807-b44b-4008-bf54-ba0ca98bffe1.js</JSLink>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{C8029807-B44B-4008-BF54-BA0CA98BFFE1}" MobileView="TRUE" Type="HTML" Hidden="TRUE" DisplayName="" Url="/SitePages/Home.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ImageUrl="/_layouts/15/images/generic.png?rev=44" ><Query><OrderBy><FieldRef Name="ID"/></OrderBy></Query><ViewFields><FieldRef Name="LinkTitleNoMenu"/><FieldRef Name="epud"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><Aggregations Value="Off"/><ViewStyle ID="15"/><JSLink>clienttemplates.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="Standard"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>









<p>
   <br>&nbsp;<br></p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><a href="/Lists/Veras%20Updates/AllItems.aspx"><h1><strong>
				Weekly&nbsp;Updates</strong><br></h1></a>
<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="True" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{8DB3F613-C235-4CAE-BC33-58B357E134CA}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{BCB0151C-C105-46CB-B1B5-EC824D0FDC8C}" ListId="bcb0151c-c105-46cb-b1b5-ec824d0fdc8c" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Weekly Updates" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="wpz" PartOrder="3" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/Lists/Veras Updates" DetailLink="/Lists/Veras Updates" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_b59d813b_7b0d_40d9_af80_6cad75e23716" ChromeType="None" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{8DB3F613-C235-4CAE-BC33-58B357E134CA}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>




<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<JSLink>
	~site/Apptexfiles/instances/8db3f613-c235-4cae-bc33-58b357e134ca.js</JSLink>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{8DB3F613-C235-4CAE-BC33-58B357E134CA}" MobileView="TRUE" Type="HTML" Hidden="TRUE" DisplayName="" Url="/SitePages/Home.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ImageUrl="/_layouts/15/images/generic.png?rev=44" ><Query><OrderBy><FieldRef Name="Created"/></OrderBy></Query><ViewFields><FieldRef Name="LinkTitle"/><FieldRef Name="u0r5"/><FieldRef Name="Picture"/><FieldRef Name="URL_x0020_Link"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><Aggregations Value="Off"/><JSLink>clienttemplates.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="Standard"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>










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
			<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="True" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{29B9CA28-0E9F-418D-9FFE-C6877271D3BE}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{3E40D163-AA81-4F69-A9B7-EFEF9A14A006}" ListId="3e40d163-aa81-4f69-a9b7-efef9a14a006" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="Testimonials" FrameType="BorderOnly" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="wpz" PartOrder="4" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/Lists/Testimonials" DetailLink="/Lists/Testimonials" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_ba5cfc21_ae09_49f8_9a5d_5401816338ba" ChromeType="BorderOnly" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{29B9CA28-0E9F-418D-9FFE-C6877271D3BE}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>




<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<JSLink>
				~site/Apptexfiles/instances/29b9ca28-0e9f-418d-9ffe-c6877271d3be.js</JSLink>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{29B9CA28-0E9F-418D-9FFE-C6877271D3BE}" MobileView="TRUE" Type="HTML" Hidden="TRUE" DisplayName="" Url="/SitePages/Home.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ImageUrl="/_layouts/15/images/generic.png?rev=44" ><Query><OrderBy><FieldRef Name="ID"/></OrderBy></Query><ViewFields><FieldRef Name="LinkTitle"/><FieldRef Name="_x0075_496"/><FieldRef Name="q0ax"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>clienttemplates.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="Standard"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>









<p>​<br>&nbsp;</p><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;style&gt;
.ms-core-navigation { DISPLAY: none }
#contentBox { margin-left: 20px }
.nivo-caption{color:#fff !important;}
.theme-default a.nivo-prevNav{display:none;}
.theme-default a.nivo-nextNav{display:none;}
&lt;/style&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_e59612d2_2e53_44ca_bd94_a6945953a8a3" __MarkupType="vsattributemarkup" __WebPartId="{45779667-3434-48D6-A2DC-C5E91B939E03}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>










<br></div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
