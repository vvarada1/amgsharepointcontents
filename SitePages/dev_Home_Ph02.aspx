<%@ Register TagPrefix="WpNs0" Namespace="Microsoft.Office.Server.Search.WebControls" Assembly="Microsoft.Office.Server.Search, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
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
	<SharePoint:EmbeddedFormField id="WikiField" FieldName="WikiField" ControlMode="Display" runat="server"><div class="ExternalClass57A8E25D38E246139E5DCF48FD1A84D5"><table id="layoutsTable" style="width&#58;100%;"><tbody><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;/Style%20Library/CSS/Cydcor_sp.css&quot;&gt;
&lt;img src=&quot;/dev/SiteAssets/SitePages/INTRANET-V6.png&quot; alt=&quot;&quot; style=&quot;width: 100%; height: 95px;&quot;/&gt;
&lt;ul class=&quot;menubar1&quot;&gt;
   &lt;li&gt; 
      &lt;a href=&quot;/dev/SitePages/dev_Home_Ph02.aspx&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;/dev/SitePages/dev_People_Services_Ph02.aspx&quot;&gt;People Services&lt;/a&gt;&lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;/dev/SitePages/dev_Salesforce_Ph02.aspx&quot;&gt;Salesforce&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;ul class=&quot;menubar1 menubar2&quot;&gt;
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
      &lt;a href=&quot;https://www.flickr.com/photos/cydcor&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/05%20flickr.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
   &lt;li&gt; 
      &lt;a href=&quot;https://www.instagram.com/cydcor/&quot; target=&quot;_blank&quot;&gt;
         &lt;img src=&quot;/dev/Social%20Media/06%20instagram.png&quot; alt=&quot;&quot;/&gt; &lt;/a&gt; &lt;/li&gt;
&lt;/ul&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_1824965f_a63c_4b02_9a9b_1506e16e632a" __MarkupType="vsattributemarkup" __WebPartId="{FF8D2DED-0030-4379-A0EE-0542B3724ADF}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

</div></div></td></tr><tr style="vertical-align&#58;top;"><td style="width&#58;25%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><spsswc:SearchBoxScriptWebPart runat="server" QueryGroupNamesJson="[&quot;Default&quot;]" UseSharedSettings="True" UpdatePageTitle="False" FurtherSharedSearchBoxSettingsCheckNeeded="False" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Search/Control_SearchBox_Compact.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Search Box" FrameType="None" SuppressWebPartChrome="False" Description="Displays a search box that allows users to search for information." IsIncluded="True" ZoneID="wpz" PartOrder="0" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_14457ea2_1b89_469c_8d37_d042cfee8e9d" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{481E3E15-CB8C-4911-9F9A-AF665DBDE472}" WebPart="true" Height="" Width=""></spsswc:SearchBoxScriptWebPart>

<h1 class="section-headers">Calendar</h1>​
<p>(View Full Calendar) 
   <a href="/dev/Lists/Calendar/calendar.aspx"> </a> </p>
			<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="False" ServerRender="False" ClientRender="False" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{08D56889-FC3B-43C1-A975-098EE274B28F}" EnableOriginalValue="False" ViewContentTypeId="0x" ListUrl="" ListDisplayName="" ListName="{2CAEB5AD-0555-4BE2-B694-9CAB513231BE}" ListId="2caeb5ad-0555-4be2-b694-9cab513231be" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="dev_Calendar" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" PartOrder="28" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itevent.png?rev=44" TitleUrl="/dev/Lists/Calendar" DetailLink="/dev/Lists/Calendar" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itevent.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_717a3bf5_02a6_44f6_9e56_8580e956da66" ChromeType="None" ExportMode="NonSensitiveData" __MarkupType="vsattributemarkup" __WebPartId="{08D56889-FC3B-43C1-A975-098EE274B28F}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
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
				<View Name="{08D56889-FC3B-43C1-A975-098EE274B28F}" MobileView="TRUE" Type="HTML" Hidden="TRUE" TabularView="FALSE" RecurrenceRowset="TRUE" DisplayName="" Url="/dev/SitePages/dev_Home_Ph02.aspx" Level="1" BaseViewID="0" ContentTypeID="0x" >
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

<h1 class="section-headers"> Popular Resources </h1><spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="12" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;1b472dd7-5713-44c3-9c6d-59b85f906869&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Home_Ph02.aspx?groupname=1b472dd7%2D5713%2D44c3%2D9c6d%2D59b85f906869&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/dev_popularResources\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;FillIn&quot;:&quot;false&quot;,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:21},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/dev_popularResources\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;FillIn\&quot;:\&quot;false\&quot;,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:21}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_TwoLines.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="12" SelectedPropertiesJson="[&quot;Path&quot;,&quot;Title&quot;,&quot;FileExtension&quot;,&quot;SecondaryFileExtension&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="1b472dd7-5713-44c3-9c6d-59b85f906869" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_ListWithPaging.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="22" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_57ea4f0d_b413_4522_a31e_0c4cbfff49f1" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{B291CA64-D911-40D7-B613-45DD57CAE5E7}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<p>&nbsp;</p><h1 class="section-headers"> Famous Quote </h1><p>
   <img src="/dev/SiteAssets/siteImages/Quote-VERA.gif" alt="" style="margin&#58;5px;width&#58;100%;height&#58;275px;" />&nbsp;</p></div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;50%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1><span style="font-size&#58;16pt;">
				<span class="ms-rteStyle-Normal"><strong class="ms-rteThemeForeColor-5-5 ms-rteFontFace-12" style="font-size&#58;22px;">
				Company&nbsp;Progress</strong></span></span></h1>
				


				










			

<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="True" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{4109337D-A966-4D0F-A895-9450190FD289}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{E6553A4C-C65C-4D35-98D3-AD0D855B7522}" ListId="e6553a4c-c65c-4d35-98d3-ad0d855b7522" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="dev_companyProgress" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="wpz" PartOrder="24" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/dev/Lists/dev_companyProgress" DetailLink="/dev/Lists/dev_companyProgress" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_4388a77b_1755_4615_b0f4_d6fde15f5063" ChromeType="None" __MarkupType="vsattributemarkup" __WebPartId="{4109337D-A966-4D0F-A895-9450190FD289}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="" Width=""><ParameterBindings>
<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<JSLink>
	~site/Apptexfiles/instances/4109337d-a966-4d0f-a895-9450190fd289.js</JSLink>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{4109337D-A966-4D0F-A895-9450190FD289}" MobileView="TRUE" Type="HTML" Hidden="TRUE" DisplayName="" Url="/dev/SitePages/dev_Home_Ph02.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ImageUrl="/_layouts/15/images/generic.png?rev=44" ><Query><OrderBy><FieldRef Name="ID"/></OrderBy></Query><ViewFields><FieldRef Name="LinkTitle"/><FieldRef Name="Image"/><FieldRef Name="ImageUrl"/><FieldRef Name="derivedField"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>clienttemplates.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="Standard"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>

<h1><span class="ms-rteStyle-Normal"><span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;"><strong>
Latest News</strong></span></span></h1><p>&nbsp;</p>
				












			






























<spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="4" PropertyMappings="Picture URL{Picture URL}:PublishingImage;PictureURL;PictureThumbnailURL,Link URL{Link URL}:Path,Line 1{Line 1}:Title,Line 2{Line 2}:Description,Line 3{Line 3}:,SecondaryFileExtension,ContentTypeId,IsAllDayEvent" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;ddaf9b2d-dd52-4a4c-bff9-8a332dae7013&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Home_Ph02.aspx?groupname=ddaf9b2d%2Ddd52%2D4a4c%2Dbff9%2D8a332dae7013&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/Lists/dev_latestNews\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:21,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/Lists/dev_latestNews\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:21,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTopWrap.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="4" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;Title&quot;,&quot;Description&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;,&quot;IsAllDayEvent&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="ddaf9b2d-dd52-4a4c-bff9-8a332dae7013" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_ListWithPaging.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="18" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_9478e46b_2b22_485d_be57_4aab48d4e73d" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{888E3894-DF09-47D0-A1D6-A070F5085C71}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<h1><span class="ms-rteStyle-Normal"><span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;"><strong>
People from the Field</strong></span></span></h1>
				<WebPartPages:XsltListViewWebPart runat="server" ViewFlag="" ViewSelectorFetchAsync="False" InplaceSearchEnabled="True" ServerRender="False" ClientRender="True" InitialAsyncDataFetch="False" WebId="00000000-0000-0000-0000-000000000000" IsClientRender="False" GhostedXslLink="main.xsl" NoDefaultStyle="" ViewGuid="{37F7213B-0A06-4286-8ADD-23B4B2EA4A32}" EnableOriginalValue="False" ViewContentTypeId="" ListUrl="" ListDisplayName="" ListName="{8EB70B81-B8CF-4FB2-80EE-EDE8C40859B5}" ListId="8eb70b81-b8cf-4fb2-80ee-ede8c40859b5" PageSize="-1" UseSQLDataSourcePaging="True" DataSourceID="" ShowWithSampleData="False" AsyncRefresh="False" ManualRefresh="False" AutoRefresh="False" AutoRefreshInterval="60" Title="dev_peopleFTField" FrameType="None" SuppressWebPartChrome="False" Description="" IsIncluded="True" ZoneID="wpz" PartOrder="16" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" CatalogIconImageUrl="/_layouts/15/images/itgen.png?rev=44" TitleUrl="/dev/Lists/dev_peopleFTField" DetailLink="/dev/Lists/dev_peopleFTField" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="/_layouts/15/images/itgen.png?rev=44" IsIncludedFilter="" ExportControlledProperties="False" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_da5f552c_50aa_4bc8_b740_ff38ef10adae" ChromeType="None" __MarkupType="vsattributemarkup" __WebPartId="{37F7213B-0A06-4286-8ADD-23B4B2EA4A32}" __AllowXSLTEditing="true" __designer:CustomXsl="Fldtypes_mswhTitle.xsl;fldtypes_Ratings.xsl" WebPart="true" Height="475px" Width=""><ParameterBindings>
<ParameterBinding Name="dvt_sortdir" Location="Postback;Connection" /><ParameterBinding Name="dvt_sortfield" Location="Postback;Connection" /><ParameterBinding Name="dvt_startposition" Location="Postback" DefaultValue="" /><ParameterBinding Name="dvt_firstrow" Location="Postback;Connection" /><ParameterBinding Name="OpenMenuKeyAccessible" Location="Resource(wss,OpenMenuKeyAccessible)" /><ParameterBinding Name="open_menu" Location="Resource(wss,open_menu)" /><ParameterBinding Name="select_deselect_all" Location="Resource(wss,select_deselect_all)" /><ParameterBinding Name="idPresEnabled" Location="Resource(wss,idPresEnabled)" /><ParameterBinding Name="NoAnnouncements" Location="Resource(wss,noXinviewofY_LIST)" /><ParameterBinding Name="NoAnnouncementsHowTo" Location="Resource(wss,noXinviewofY_DEFAULT)" /></ParameterBindings>
<JSLink>
					~site/Apptexfiles/instances/37f7213b-0a06-4286-8add-23b4b2ea4a32.js</JSLink>
<DataFields>
</DataFields>
<XmlDefinition>
<View Name="{37F7213B-0A06-4286-8ADD-23B4B2EA4A32}" MobileView="TRUE" Type="HTML" Hidden="TRUE" DisplayName="" Url="/dev/SitePages/dev_Home_Ph02.aspx" Level="1" BaseViewID="1" ContentTypeID="0x" ImageUrl="/_layouts/15/images/generic.png?rev=44" ><Query><OrderBy><FieldRef Name="ID"/></OrderBy></Query><ViewFields><FieldRef Name="LinkTitle"/><FieldRef Name="image"/><FieldRef Name="Description"/><FieldRef Name="Empty"/></ViewFields><RowLimit Paged="TRUE">30</RowLimit><JSLink>clienttemplates.js</JSLink><XslLink Default="TRUE">main.xsl</XslLink><Toolbar Type="Standard"/></View></XmlDefinition>
</WebPartPages:XsltListViewWebPart>


				











<h1><span class="ms-rteStyle-Normal"><span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;"><strong>
Cydcor Q/A</strong></span></span></h1><p>&nbsp;</p><p>&nbsp;</p><spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="1" PropertyMappings="Picture URL{Picture URL}:PublishingImage;PictureURL;PictureThumbnailURL,Link URL{Link URL}:Path,Line 1{Line 1}:,Line 2{Line 2}:multipleline1OWSMTXT,Line 3{Line 3}:multipleline2OWSMTXT,SecondaryFileExtension,ContentTypeId" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;e3c309d4-f2d4-4305-9ebd-bc69ec894923&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Home_Ph02.aspx?groupname=e3c309d4%2Df2d4%2D4305%2D9ebd%2Dbc69ec894923&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/Lists/dev_cydcorQA\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:21,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/Lists/dev_cydcorQA\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:21,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_Picture3Lines.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="1" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;multipleline1OWSMTXT&quot;,&quot;multipleline2OWSMTXT&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="e3c309d4-f2d4-4305-9ebd-bc69ec894923" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_List.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="14" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_f0d00f6c_f42a_45c1_a68e_bf136906322e" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{33C6849D-1B1F-4C9E-962E-E7268D1E34CD}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<p>&nbsp;</p><p>&nbsp;</p>
				











<h1><span class="ms-rteStyle-Normal"><span class="ms-rteFontFace-12 ms-rteThemeForeColor-5-5" style="font-size&#58;22px;"><strong>
Behaviors We Value</strong></span></span></h1>
				











<spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="2" PropertyMappings="Picture URL{Picture URL}:PublishingImage;PictureURL;PictureThumbnailURL,Link URL{Link URL}:Path,Line 1{Line 1}:Title,Line 2{Line 2}:multipleline1OWSMTXT,Line 3{Line 3}:,SecondaryFileExtension,ContentTypeId,IsAllDayEvent" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;5afbbd5f-4477-4fb9-a295-3d7dbdf8cb6a&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Home_Ph02.aspx?groupname=5afbbd5f%2D4477%2D4fb9%2Da295%2D3d7dbdf8cb6a&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/lists/dev_bwv\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:21,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/lists/dev_bwv\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:21,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTopWrap.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="2" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;Title&quot;,&quot;multipleline1OWSMTXT&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;,&quot;IsAllDayEvent&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="5afbbd5f-4477-4fb9-a295-3d7dbdf8cb6a" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_List.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="4" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_1d6252b6_b8fb_4288_9b61_3c57a0c96b25" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{04E026B9-3CB9-475A-A36D-72891ED52D5A}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>





</div></div></td><td class="ms-wiki-columnSpacing" style="width&#58;25%;"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><h1 class="section-headers"> 
				Featured Videos </h1><spsswc:ContentBySearchWebPart runat="server" AlwaysRenderOnServer="False" ResultType="" NumberOfItems="2" DataProviderJSON="{&quot;QueryGroupName&quot;:&quot;Default&quot;,&quot;QueryPropertiesTemplateUrl&quot;:&quot;querygroup://webroot/SitePages/dev_Home_Ph02.aspx?groupname=Default&quot;,&quot;IgnoreQueryPropertiesTemplateUrl&quot;:false,&quot;SourceID&quot;:&quot;e1327b9c-2b8c-4b23-99c9-3730cb29c3f7&quot;,&quot;SourceName&quot;:&quot;Items matching a tag&quot;,&quot;SourceLevel&quot;:&quot;Ssa&quot;,&quot;CollapseSpecification&quot;:&quot;&quot;,&quot;QueryTemplate&quot;:&quot;{searchboxquery}&quot;,&quot;FallbackSort&quot;:null,&quot;FallbackSortJson&quot;:&quot;null&quot;,&quot;RankRules&quot;:null,&quot;RankRulesJson&quot;:&quot;null&quot;,&quot;AsynchronousResultRetrieval&quot;:false,&quot;SendContentBeforeQuery&quot;:true,&quot;BatchClientQuery&quot;:true,&quot;FallbackLanguage&quot;:-1,&quot;FallbackRankingModelID&quot;:&quot;&quot;,&quot;EnableStemming&quot;:true,&quot;EnablePhonetic&quot;:false,&quot;EnableNicknames&quot;:false,&quot;EnableInterleaving&quot;:false,&quot;EnableQueryRules&quot;:true,&quot;EnableOrderingHitHighlightedProperty&quot;:false,&quot;HitHighlightedMultivaluePropertyLimit&quot;:-1,&quot;IgnoreContextualScope&quot;:true,&quot;ScopeResultsToCurrentSite&quot;:false,&quot;TrimDuplicates&quot;:false,&quot;Properties&quot;:{&quot;TryCache&quot;:true,&quot;Scope&quot;:&quot;\&quot;https://cydcorllc.sharepoint.com/dev/dev_featuredvideosLibrary\&quot;&quot;,&quot;UpdateLinksForCatalogItems&quot;:true,&quot;EnableStacking&quot;:true,&quot;ListId&quot;:&quot;a3368248-1f0a-4b15-aef1-a461427756d1&quot;,&quot;ListItemId&quot;:21,&quot;FillIn&quot;:&quot;false&quot;},&quot;PropertiesJson&quot;:&quot;{\&quot;TryCache\&quot;:true,\&quot;Scope\&quot;:\&quot;\\\&quot;https://cydcorllc.sharepoint.com/dev/dev_featuredvideosLibrary\\\&quot;\&quot;,\&quot;UpdateLinksForCatalogItems\&quot;:true,\&quot;EnableStacking\&quot;:true,\&quot;ListId\&quot;:\&quot;a3368248-1f0a-4b15-aef1-a461427756d1\&quot;,\&quot;ListItemId\&quot;:21,\&quot;FillIn\&quot;:\&quot;false\&quot;}&quot;,&quot;ClientType&quot;:&quot;ContentSearchRegular&quot;,&quot;ClientFunction&quot;:&quot;&quot;,&quot;ClientFunctionDetails&quot;:&quot;&quot;,&quot;UpdateAjaxNavigate&quot;:true,&quot;SummaryLength&quot;:180,&quot;DesiredSnippetLength&quot;:90,&quot;PersonalizedQuery&quot;:false,&quot;FallbackRefinementFilters&quot;:null,&quot;IgnoreStaleServerQuery&quot;:false,&quot;RenderTemplateId&quot;:&quot;DefaultDataProvider&quot;,&quot;AlternateErrorMessage&quot;:null,&quot;Title&quot;:&quot;&quot;}" BypassResultTypes="True" ItemTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Item_PictureOnTop.js" GroupTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Group_Content.js" ResultsPerPage="2" SelectedPropertiesJson="[&quot;PublishingImage&quot;,&quot;PictureURL&quot;,&quot;PictureThumbnailURL&quot;,&quot;Path&quot;,&quot;Title&quot;,&quot;Description&quot;,&quot;SecondaryFileExtension&quot;,&quot;ContentTypeId&quot;]" HitHighlightedPropertiesJson="[&quot;Title&quot;,&quot;Path&quot;,&quot;Author&quot;,&quot;SectionNames&quot;,&quot;SiteDescription&quot;]" AvailableSortsJson="null" ShowBestBets="False" ShowPersonalFavorites="False" ShowDefinitions="False" ShowDidYouMean="False" PreloadedItemTemplateIdsJson="null" QueryGroupName="Default" RenderTemplateId="~sitecollection/_catalogs/masterpage/Display Templates/Content Web Parts/Control_Slideshow.js" StatesJson="{}" ServerIncludeScriptsJson="null" Title="Content Search" FrameType="None" SuppressWebPartChrome="False" Description="Content Search Web Part will allow you to show items that are results of a search query you specify. When you add it to the page, this Web Part will show recently modified items from the current site. You can change this setting to show items from another site or list by editing the Web Part and changing its search criteria.As new content is discovered by search, this Web Part will display an updated list of items each time the page is viewed." IsIncluded="True" ZoneID="wpz" PartOrder="20" FrameState="Normal" AllowRemove="True" AllowZoneChange="True" AllowMinimize="True" AllowConnect="True" AllowEdit="True" AllowHide="True" IsVisible="True" DetailLink="" HelpLink="" HelpMode="Modeless" Dir="Default" PartImageSmall="" MissingAssembly="Cannot import this Web Part." PartImageLarge="" IsIncludedFilter="" ExportControlledProperties="True" ConnectionID="00000000-0000-0000-0000-000000000000" ID="g_c2563e88_f034_48a9_b413_9bd490b6e3db" ChromeType="None" ExportMode="All" __MarkupType="vsattributemarkup" __WebPartId="{E5187230-B71E-48D0-9FD1-401A68D32B57}" WebPart="true" Height="" Width=""></spsswc:ContentBySearchWebPart>

<h1 class="section-headers"> Cydcor Social </h1><div class="ms-rtestate-read ms-rte-wpbox" ><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on">
   </div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on">
					Cydcor Social </div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on">
					goes here
</div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on">
					&nbsp;&nbsp; </div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div><div class="ms-rtestate-notify  ms-rtestate-read a3e3d4d0-d09a-4a4f-b4cc-36b046e4e3fd" unselectable="on"></div></div><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;div id=&quot;fb-root&quot;&gt;&lt;/div&gt;
&lt;script&gt;(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = &quot;//connect.facebook.net/en_US/sdk.js#xfbml=1&amp;version=v2.8&quot;;
  fjs.parentNode.insertBefore(js, fjs);
}(document, &#39;script&#39;, &#39;facebook-jssdk&#39;));&lt;/script&gt;

&lt;div class=&quot;fb-page&quot; data-href=&quot;https://www.facebook.com/CydcorLLC&quot; data-tabs=&quot;timeline&quot; data-width=&quot;290&quot; data-height=&quot;500&quot; data-small-header=&quot;true&quot; data-adapt-container-width=&quot;true&quot; data-hide-cover=&quot;true&quot; data-show-facepile=&quot;true&quot;&gt;&lt;blockquote cite=&quot;https://www.facebook.com/CydcorLLC&quot; class=&quot;fb-xfbml-parse-ignore&quot;&gt;&lt;a href=&quot;https://www.facebook.com/CydcorLLC&quot;&gt;Cydcor&lt;/a&gt;&lt;/blockquote&gt;&lt;/div&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_d6ba14e6_1b46_4ad4_9b8d_316b9fbd8c2a" __MarkupType="vsattributemarkup" __WebPartId="{250E9394-7061-4E56-980E-2D9435478D62}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<h1 class="section-headers"> Photos </h1><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;div style=&quot;width:300px;height:300px;text-align:left;margin:auto;&quot; &gt;&lt;object width=&quot;300&quot; height=&quot;300&quot; classid=&quot;clsid:d27cdb6e-ae6d-11cf-96b8-444553540000&quot;  codebase=&quot;http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0&quot;&gt; &lt;param name=&quot;flashvars&quot; value=&quot;offsite=true&amp;amp;lang=en-us&amp;amp;page_show_url=%2Fphotos%2Fcydcor%2Fshow&amp;amp;page_show_back_url=%2Fphotos%2Fcydcor%2F&amp;amp;user_id=47341270@N03&quot; /&gt; &lt;param name=&quot;allowFullScreen&quot; value=&quot;true&quot; /&gt; &lt;param name=&quot;src&quot; value=&quot;https://www.flickr.com/apps/slideshow/show.swf?v=71649&quot; /&gt; &lt;embed width=&quot;300&quot; height=&quot;300&quot; type=&quot;application/x-shockwave-flash&quot; src=&quot;https://www.flickr.com/apps/slideshow/show.swf?v=71649&quot; flashvars=&quot;offsite=true&amp;amp;lang=en-us&amp;amp;page_show_url=%2Fphotos%2Fcydcor%2Fshow&amp;amp;page_show_back_url=%2Fphotos%2Fcydcor%2F&amp;amp;user_id=47341270@N03&quot; allowFullScreen=&quot;true&quot; /&gt; &lt;/object&gt;&lt;br /&gt;&lt;/div&gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_820f9466_a9cd_435b_8d24_1af7351343c0" __MarkupType="vsattributemarkup" __WebPartId="{75AF0467-59E2-41D6-9B72-1E77F60A4F14}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<p>&nbsp;</p></div></div></td></tr><tr style="vertical-align&#58;top;"><td colspan="3"><div class="ms-rte-layoutszone-outer" style="width&#58;100%;"><div class="ms-rte-layoutszone-inner"><p style="text-align&#58;center;">


		&nbsp;</p><WebPartPages:ScriptEditorWebPart runat="server" Content="&lt;input type=button onClick=&quot;parent.open(&#39;https://www.dropbox.com/sh/m12inosadiueptg/AAB4IhWGczw6_t-2llyKHSHya?dl=0&#39;)&quot; value=&#39;DOWLOAD OUR VALUES&#39; &gt;

&amp;emsp;&amp;emsp;&amp;emsp;&amp;emsp;&amp;emsp;&amp;emsp;

&lt;input type=button onClick=&quot;parent.open(&#39;https://peopleservices1.typeform.com/to/cSvkY1&#39;)&quot; value=&#39;ENTRY FORM&#39; &gt;" Description="Allows authors to insert HTML snippets or scripts." Title="Script Editor" ChromeType="None" ID="g_fc69460c_278e_4c0f_a894_4a0d8f06975d" __MarkupType="vsattributemarkup" __WebPartId="{AB5F57C1-6289-4937-8802-062E620C04D3}" WebPart="true" __designer:IsClosed="false"></WebPartPages:ScriptEditorWebPart>

<p style="text-align&#58;center;">&nbsp;<a href="/dev/SitePages/dev_Home_Ph02.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/dev/SitePages/dev_People_Services_Ph02.aspx">					
People Services</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="/dev/SitePages/dev_Salesforce_Ph02.aspx">					
SalesForce</a> </p>	</div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>

<br></div></div></td></tr></tbody></table>
<span id="layoutsData" style="display&#58;none;">true,true,3</span></div></SharePoint:EmbeddedFormField>
	<WebPartPages:WebPartZone runat="server" ID="Bottom" CssClass="ms-hide" Title="loc:Bottom"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
	

</asp:Content>
