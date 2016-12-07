<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
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
	<SharePoint:EmbeddedFormField id="WikiField" FieldName="WikiField" ControlMode="Display" runat="server"><div class="ExternalClass75B424ABB7F74643A779F95DA47138A8"><table id="layoutsTable" style="width&#58;100%;"><tbody><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;/Style%20Library/CSS/Cydcor_SP.css&quot;&gt;
&lt;img src=&quot;/dev/SiteAssets/SitePages/INTRANET-V6.png&quot; alt=&quot;&quot; style=&quot;width: 100%; height: 95px;&quot;/&gt;
&lt;ul class=&quot;menubar1&quot;&gt;
   &lt;li&gt; 
      &lt;a href=&quot;/dev/SitePages/dev_Home_Ph02.aspx&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt; 
      &lt;a href=&quot;/dev/SitePages/dev_Salesforce_Ph02.aspx&quot;&gt;Salesforce&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;ul class=&quot;menubar1 menubar2&quot;&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.youtube.com/user/Cydcor&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/01%20youtube.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.facebook.com/CydcorLLC&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/02%20facebook.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://twitter.com/cydcor&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/03%20twitter.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.linkedin.com/company/cydcor&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/04%20linkedin.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.instagram.com/cydcor/&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/06%20instagram.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.flickr.com/photos/cydcor&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/05%20flickr.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
&lt;/ul&gt;

" Title="Script Editor" Description="Allows authors to insert HTML snippets or scripts." ChromeType="None" ID="g_af1388f3_16f7_47f6_9fc4_a99521a7180a" __MarkupType="vsattributemarkup" __WebPartId="{84FDE6BB-6940-40FC-85B0-D6DDA42C0A6B}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

</div></div></td></tr><tr style="vertical-align&#58;top;"><td style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><spsswc:SearchBoxScriptWebPart runat="server" QueryGroupNamesJson="[&quot;Default&quot;]" UseSharedSettings="True" UpdatePageTitle="False" FurtherSharedSearchBoxSettingsCheckNeeded="False" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_SearchBox_Compact.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Search Box" FrameType="None" SuppressWebPartChrome="False" Description="Displays a search box that allows users to search for information." IsIncluded="True" ZoneID="wpz" PartOrder="16" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_e28a4c25_b63d_4bec_9c97_44dfac775c78" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{D8FE9E9C-FA52-4DEF-8206-FEEB9D5FF7D9}" WebPart="true" Height="" Width=""></spsswc:SearchBoxScriptWebPart>

 
<img src="/dev/SiteAssets/siteImages/Salesforce%20Page.png" alt="" style="margin&#58;5px;width&#58;100%;height&#58;24px;" />​ 
<h1 class="section-headers">Calendar<br></h1>
			<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="False" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{61EB01E4-C31A-4AD4-B1DE-A6E67895DB69}" EnableOriginalValue="False" ViewContentTypeId="0x" ListUrl="" ListDisplayName="" ListName="{2CAEB5AD-0555-4BE2-B694-9CAB513231BE}" ListId="2caeb5ad-0555-4be2-b694-9cab513231be" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="dev_Calendar" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" PartOrder="14" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itevent.png?rev=44" TitleUrl="/dev/Lists/Calendar" DetailLink="/dev/Lists/Calendar" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itevent.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_405527e2_4116_4bad_b3b9_4e2f25c79caa" ChromeType="None" __MarkupType="vsattributemarkup" __WebPartId="{61EB01E4-C31A-4AD4-B1DE-A6E67895DB69}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
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
				<ParameterBinding Location="Resource(wss,AddNewEvent)" Name="AddNewAnnouncement" />
				<ParameterBinding Location="Resource(wss,more_events)" Name="MoreAnnouncements" />
			</ParameterBindings>
<DataFields>
</DataFields>
<XmlDefinition>
				<View Name="{61EB01E4-C31A-4AD4-B1DE-A6E67895DB69}" MobileView="TRUE" Type="HTML" Hidden="TRUE" TabularView="FALSE" RecurrenceRowset="TRUE" DisplayName="" Url="/dev/SitePages/dev_Salesforce_Ph02.aspx" Level="1" BaseViewID="0" ContentTypeID="0x" >
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
					<RowLimit>10</RowLimit>
					<XslLink>main.xsl</XslLink>
					<Toolbar Type="Standard"/>
				</View>
			</XmlDefinition>
</WebPartPages:XsltListViewWebPart>

<h1 class="section-headers">Popular Resources<br></h1>​ 
<spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="12" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;Default&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Salesforce_Ph02.aspx?groupname=Default&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/dev_popularResources\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:34,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/dev_popularResources\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:34,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_TwoLines.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="12" SelectedPropertiesJson="[&quot;Path&quot;,&quot;Title&quot;,&quot;FileExtension&quot;,&quot;SecondaryFileExtension&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="Default" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_ListWithPaging.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="12" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_53d4eb53_0378_459c_b7cc_129720cfdf56" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{0BFCE8CB-0DF8-4FF7-852E-A5F2273AE0C9}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<p>&nbsp;</p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner">
				​<strong class="ms-rteThemeForeColor-5-5 ms-rteFontFace-12" style="font-size&#58;22px;">Latest 
				News</strong> 
<spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="4" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;6af14da4-34dd-48ba-a498-2c3f73ac2a3e&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Salesforce_Ph02.aspx?groupname=6af14da4%2D34dd%2D48ba%2Da498%2D2c3f73ac2a3e&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/lists/dev_latestNews\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:34,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/lists/dev_latestNews\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:34,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTopWrapHorizontalTiles.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="4" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;Title&quot;,&quot;Description&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;,&quot;IsAllDayEvent&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="6af14da4-34dd-48ba-a498-2c3f73ac2a3e" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_List.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="10" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_5ce83af4_438a_4e35_b3e2_775d5b3664ae" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{51DBD8DF-0527-4523-ABFE-3D49E86BFF7E}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<h1>
   <span class="ms-rteStyle-Normal">
      <span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;">
         <strong>Why Salesforce</strong></span></span></h1><p> 
   <img src="/SiteAssets/SitePages/Home/Full%20Image%20with%20bubbles.png" alt="" style="width&#58;100%;height&#58;auto;" />&nbsp;<br>
	​<br></p><h1><span class="ms-rteStyle-Normal"><span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;"><strong>
				Salesforce Videos</strong></span></span></h1> 
<font face="MyriadPro-Regular" size="4"> 
   <p align="LEFT">AT&amp;T Residential – Eight Reps Now Using Salesforce</p> </font> 
<font face="MyriadPro-Regular" size="2">
   <p align="LEFT">This week six additional reps were trained on Salesforce for 
	a total of eight now actively selling in the -eld. The reps are eager to 
	learn the features and functionality and are also providing input for future 
	enhancements.</p></font>
<WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;iframe width=&quot;100%&quot; height=&quot;360&quot; src=&quot;https://www.youtube.com/embed/Z4IOZCQ2L7M&quot; frameborder=&quot;0&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt;
			&amp;nbsp;" Title="Script Editor" Description="Allows authors to insert HTML snippets or scripts." ChromeType="None" ID="g_bb0635e7_5a11_4626_9055_0298e3251e5a" __MarkupType="vsattributemarkup" __WebPartId="{6B2F0A20-EBDF-4496-AB03-FC06CF552AEF}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

 
<font face="MyriadPro-Regular" size="4"> 
   <p align="LEFT">AT&amp;T Residential – Eight Reps Now Using Salesforce</p></font><font face="MyriadPro-Regular" size="2"> 
   <p align="LEFT">This week six additional reps were trained on Salesforce for 
	a total of eight now actively selling in the -eld. The reps are eager to 
	learn the features and functionality and are also providing input for future 
	enhancements.</p></font>
<WebPartPages:ScriptEditorWebPart runat="server" Content="         &lt;iframe width=&quot;100%&quot; height=&quot;360&quot; src=&quot;https://player.vimeo.com/video/153234861&quot; frameborder=&quot;0&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt; 
			&amp;nbsp;
" Title="Script Editor" Description="Allows authors to insert HTML snippets or scripts." ChromeType="None" ID="g_59e99109_ddeb_4c96_9f6c_5ea6fc946af8" __MarkupType="vsattributemarkup" __WebPartId="{FF074DBB-31D4-42FA-AE17-C821F5DFE6C8}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

 
<font face="MyriadPro-Regular" size="4">
   <p align="LEFT">AT&amp;T Residential – Eight Reps Now Using Salesforce</p></font>
				​<font face="MyriadPro-Regular" size="2"> 
   <p align="LEFT">This week six additional reps were trained on Salesforce for 
	a total of eight now actively selling in the -eld. The reps are eager to 
	learn the features and functionality and are also providing input for future 
	enhancements.</p></font> 
<WebPartPages:ScriptEditorWebPart runat="server" Content="         &lt;iframe width=&quot;100%&quot; height=&quot;360&quot; src=&quot;https://player.vimeo.com/video/189256572&quot; frameborder=&quot;0&quot; allowfullscreen=&quot;&quot;&gt;&lt;/iframe&gt; 
			&amp;nbsp;
" Title="Script Editor" Description="Allows authors to insert HTML snippets or scripts." ChromeType="None" ID="g_73151a39_ee07_4980_a64d_454f9061ab52" __MarkupType="vsattributemarkup" __WebPartId="{DBC8D296-F0C9-42CA-86DC-1EA422B03627}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<p>&nbsp;</p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;33.3%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner">
				​​​
   <h1 class="section-headers">Testimonials​​<br></h1>​ 
   <spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="4" PropertyMappings="Picture URL{Picture URL}:PublishingImage;PictureURL;PictureThumbnailURL,Link URL{Link URL}:Path,Line 1{Line 1}:,Line 2{Line 2}:multipleline1OWSMTXT,Line 3{Line 3}:multipleline2OWSMTXT,Line 4{Line 4}:multipleline3OWSMTXT,Line 5{Line 5}:multipleline4OWSMTXT,Line 6{Line 6}:multipleline5OWSMTXT,SecondaryFileExtension,ContentTypeId,IsAllDayEvent" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;9aa92664-33cb-4541-b79c-c339e160c2ff&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Salesforce_Ph02.aspx?groupname=9aa92664%2D33cb%2D4541%2Db79c%2Dc339e160c2ff&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/Lists/Testimonials\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:34,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/Lists/Testimonials\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:34,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTopTestimonial.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="4" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;multipleline1OWSMTXT&quot;,&quot;multipleline2OWSMTXT&quot;,&quot;multipleline3OWSMTXT&quot;,&quot;multipleline4OWSMTXT&quot;,&quot;multipleline5OWSMTXT&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;,&quot;IsAllDayEvent&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="9aa92664-33cb-4541-b79c-c339e160c2ff" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_Slideshow.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="2" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_e025c5fd_ef72_4c7a_b982_007113bbef7e" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{899E36F0-E4B6-49EF-B5C8-03DFFC20FFBE}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<div> ​<br></div></div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><div class="ms-rtestate-read ms-rte-wpbox" ><div class="ms-rtestate-notify  ms-rtestate-read 830fb67b-d3d3-480e-97f6-3d133cd74251" id="div_830fb67b-d3d3-480e-97f6-3d133cd74251" unselectable="on"></div></div></div></div></td></tr></tbody></table><span id="layoutsData" style="display&#58;none;">
		true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
</asp:Content>
