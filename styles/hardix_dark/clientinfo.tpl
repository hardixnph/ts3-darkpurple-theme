<!--
TeamSpeak 3 Client Infoframe Template

Copyright (c) 2009-2022 TeamSpeak Systems GmbH
Autor: dante696 from TeamSpeak-Systems GmbH
Copyright (c) 2022 Hardix - fastguard x baroynetwork

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "config/styles/" for default theme or in a sub folder named like an available 
theme (e.g. "config/styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

Options (remove the "#" to enable):
#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%AVATAR_IMAGE_DONT_APPEND%%1
#%%STATUS_ICONS_DONT_APPEND%%1
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3
#%%CLIENT_SERVER_SHOW_MAX_BADGES%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_COUNTRY_IMAGE_SCALED
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_MYTEAMSPEAK_ID
CLIENT_TALK_POWER
CLIENT_MAX_DEPTH
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_VERSION_LONG
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_CHANNEL_GROUP_ID
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_SERVER_GROUP_ID
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
	table#info { 
		border-collapse: collapse;
		border-spacing: 0px;
	}

	table#list {
		border-collapse: collapse;
		border-spacing: 0px;
		margin-bottom: 10px;
	}

	td {
		padding: 0px 4px 0px 1px;
	}

	td.label {
		font-weight: bold;
		white-space: normal;
	}

	td.space {
		padding-top: 6px;
	}

	td.list {
	padding: 0px 1px 0px 8px;
	}

	.red {
	color: red;
	}

	.small {
		font-size: 7pt;
	}
</style>

<table class="InfoFrame_Table">
	<tr><td class="label" style="font-weight: bold">Username:</td><td><a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">
	%%CLIENT_NAME%%&nbsp;</a>
	<span class="InfoFrame_CustomNick" title="Custom Nickname" style="text-decoration: none; font-weight: bold; color: #907BEA">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>&nbsp;
		%%?CLIENT_COUNTRY_IMAGE_SCALED%%&nbsp;
		<span class="small" title="Client ID">(%%CLIENT_ID%%)</span>
		<tr><td class="label" style="font-weight: bold">Unique ID:</td><td>%%CLIENT_UNIQUE_ID%%</td></tr>
		<tr><td class="label" style="font-weight: bold">myTeamSpeak ID: </td><td>%%?CLIENT_MYTEAMSPEAK_ID%%</td></tr>
		<tr><td class="label" style="font-weight: bold">Database ID:</td><td>%%CLIENT_DATABASE_ID%%</td></tr>
		<tr><td class="label" style="font-weight: bold">Description:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
		<tr><td class="label" style="font-weight: bold">%%?TR_CLIENT_VOLUME_MODIFIER%%:</td><td class="Important" style="color: #907BEA">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
	<tr>
		<td class="label" style="font-weight: bold">Version:</td>
		<td>%%CLIENT_VERSION_SHORT%% %%CLIENT_VERSION_STATE%% on <img src="styles:/hardix_dark/media/%%CLIENT_PLATFORM%%.png" alt="" title="%%CLIENT_PLATFORM%%" /></td>
	</tr>
	<tr>
		<td class="label" style="font-weight: bold">Connections:</td>
		<td>%%CLIENT_TOTALCONNECTIONS%%</td>
	</tr>
	<tr>
		<td class="label" style="font-weight: bold">First Connected:</td>
		<td>%%CLIENT_CREATED%%</td>
	</tr>
	<tr>
		<td class="label" style="font-weight: bold">Last Connected:</td>
		<td>%%CLIENT_LASTCONNECTED%%</td>
	</tr>
	<tr>
		<td class="label" style="font-weight: bold">Online Since:</td>
		<td>%%CLIENT_CONNECTED_SINCE%%</td>
	</tr>
	<tr>
		<td class="label" style="font-weight: bold">Client Talk Power:</td>
		<td>%%CLIENT_TALK_POWER%%</td>
	</tr>
</table>
<br>
<!-- begin client badges table -->

%%??CLIENT_FLAG_BADGES%%<table class="InfoFrame_Table">
%%??CLIENT_FLAG_BADGES%%  <tr>
%%??CLIENT_FLAG_BADGES%%    <td colspan="%%CLIENT_FLAG_BADGES%%" class="Label Space-Top"><b>%%TR_CLIENT_BADGE_SHOWCASE%%:</b></td>
%%??CLIENT_FLAG_BADGES%%  </tr>
%%??CLIENT_FLAG_BADGES%%  <tr>
%%??CLIENT_FLAG_BADGES%%    <td class="Badge" title="<b>%%CLIENT_BADGE_NAME%%</b><br />%%CLIENT_BADGE_DESCRIPTION%%">%%CLIENT_BADGE_ICON_LARGE%%</td>
%%??CLIENT_FLAG_BADGES%%  </tr>
%%??CLIENT_FLAG_BADGES%%</table>
<br>
	<!-- begin permission info table -->

<table id="list">
<tr><td class="space label"><img src="gfx:hardix_dark/permission_server_groups.svg" height="16" width="16" alt="">&nbsp; <b>Server Groups:</b></td></tr>
<tr><td class="list">
	<div>&nbsp;&nbsp;&nbsp;%%CLIENT_SERVER_GROUP_ICON%%&nbsp; %%CLIENT_SERVER_GROUP_NAME%% (id: %%CLIENT_SERVER_GROUP_ID%%)</div>
</td></tr>
<tr><td class="space label"><img src="gfx:hardix_dark/permission_channel.svg" height="16" width="16" alt="">&nbsp; <b>Channel Group:</b></td></tr>
<tr><td class="list">
	<div>&nbsp;&nbsp;&nbsp;%%CLIENT_CHANNEL_GROUP_ICON%%&nbsp; %%CLIENT_CHANNEL_GROUP_NAME%% (id: %%CLIENT_CHANNEL_GROUP_ID%%)</div>
</td></tr>
<tr><td class="red"><br />*** Client requested Talk Power at <b>%%?CLIENT_TALK_REQUEST_TIME%%</b>.</td></tr>
<tr><td class="red">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
</table>

<!-- begin plugin info table -->

<table style="padding-top: 6px;">%%?PLUGIN_INFO_DATA%%</table>
