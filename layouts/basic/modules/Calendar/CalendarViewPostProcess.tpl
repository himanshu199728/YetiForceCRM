{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
* ("License"); You may not use this file except in compliance with the License
* The Original Code is:  vtiger CRM Open Source
* The Initial Developer of the Original Code is vtiger.
* Portions created by vtiger are Copyright (C) vtiger.
* All Rights Reserved.
* Contributor(s): YetiForce.com
********************************************************************************/
-->*}
{strip}
<div class="siteBarRight calendarRightPanel" id="rightPanel">
	<div class="btn btn-block toggleSiteBarRightButton" title="{vtranslate('LBL_RIGHT_PANEL_SHOW_HIDE', $MODULE)}">
		<span class="glyphicon glyphicon-chevron-right"></span>
	</div>
	<div class="siteBarContent paddingTop10">
		<div class="panel panel-default refreshHeader hide">
			<div class="panel-heading quickWidgetHeader calendarRightPanel clearfix">
				<div class="col-xs-12">
					<div class="pull-left ">
						{vtranslate('LBL_MODIFIED', $MODULE)}
					</div>
					<div class="pull-right">
						<a href="javascript:void(0);" name="drefresh" class="btn btn-default btn-xs refreshCalendar cursorPointer">
							<span class="glyphicon glyphicon-refresh icon-white" hspace="0" border="0" title="{vtranslate('LBL_REFRESH')}" alt="{vtranslate('LBL_REFRESH')}"></span>
						</a>
					</div>
				</div> 
			</div>			
		</div>
		{foreach item=SIDEBARWIDGET key=index from=$QUICK_LINKS['SIDEBARWIDGETRIGHT']}
			<div class="panel panel-default quickWidget">
				<div class="panel-heading quickWidgetHeader calendarRightPanel clearfix">
					<h4 class="panel-title col-xs-7 paddingLRZero pull-left" title="{vtranslate($SIDEBARWIDGET->getLabel(), $MODULE)}">
						{vtranslate($SIDEBARWIDGET->getLabel(), $MODULE)}
					</h4>
					<div class="pull-right">
						<button class="selectAllBtn btn btn-primary btn-xs">
							<p class="selectAll hide">{vtranslate('LBL_SELECT_ALL', $MODULE)}</p>
							<p class="deselectAll">{vtranslate('LBL_DESELECT_ALL', $MODULE)}</p>
						</button>
					</div>
				</div>
				<div class="widgetContainer panel-collapse collapse" id="{$MODULE}_sideBar_{Vtiger_Util_Helper::replaceSpaceWithUnderScores($SIDEBARWIDGET->getLabel())}" data-url="{$SIDEBARWIDGET->getUrl()}">
					<div class="panel-body">
						
					</div>
				</div>
			</div>
		{/foreach}
	</div>
</div>
</div>
</div>
</div>
<script type="text/javascript">
	jQuery(document).ready(function () {
		Calendar_CalendarView_Js.registerWidget();
	});
</script>
{/strip}
