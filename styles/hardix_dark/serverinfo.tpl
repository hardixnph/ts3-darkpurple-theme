<!--
TeamSpeak 3 Server Infoframe Template (EN)

Copyright (c) 2009-2022 TeamSpeak Systems GmbH
Autor: dante696 from TeamSpeak-Systems GmbH
Copyright (c) 2022 Hardix - fastguard x baroynetwork
 
The replaceable variables are embedded in "%%" like %%SERVER_NAME%%. At this time you can also use 
%%?SERVER_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Replacable variables for server:
SERVER_NAME
SERVER_WELCOMEMESSAGE
SERVER_HOSTMESSAGE
SERVER_ID
SERVER_UNIQUE_ID
SERVER_VERSION
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_ICON_SCALED
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
SERVER_REFRESH_ICON

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
    white-space: nowrap;
  }
  td.space {
    padding-top: 6px;
  }
  td.list {
    padding: 0px 1px 0px 8px;
  }
  .active {
    color: green;
    text-decoration: underline;
  }
  .inactive {
    color: gray;
    text-decoration: underline;
  }
  .red {
    color: red;
  }
</style>

  <table class="InfoFrame_Table">
  <tr><td class="Label">Server Name:</td><td>%%SERVER_ICON_SCALED%%
    &nbsp;
    <a href="channelid://0" class="TextMessage_ServerLink">%%SERVER_NAME%%</a></td></tr>
  <tr><td class="label">Server Nicknames:</td><td><b>%%?SERVER_NICKNAMES%%<b></td></tr>
  <tr><td class="label">Version:</td><td>%%SERVER_VERSION_SHORT%% on <img src="styles:/hardix_dark/media/%%SERVER_PLATFORM%%.png" alt="" title="%%SERVER_PLATFORM%%" /></td></tr>
  <tr>
    <td class="label">%%TR_SERVER_ADDRESS%%:</td>
    <td>
		%%SERVER_ADDRESS%%
		:%%?SERVER_PORT%%
	  </td>
	</tr>
  <tr><td class="label">License:</td><td>%%SERVER_LICENSE%%</td></tr>
  <tr><td class="label">Uptime:</td><td>%%SERVER_UPTIME%%</td></tr>
	<hr>
	<tr><td class="Label">Server UUID:</td><td>%%SERVER_UNIQUE_ID%%</td></tr>
	<tr><td class="Label">ID:</td><td>%%SERVER_ID%%</td></tr>
	<hr>
  <tr><td class="label">Current Channels:</td><td>%%SERVER_CHANNELS_ONLINE%%</td></tr>
  <tr title="Total Client Connections: %%SERVER_CLIENT_CONNECTIONS%%">
    <td class="label">Current Clients:</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% %%?SERVER_NO_RESERVED_SLOTS%%</td>
    <td>%%SERVER_CLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%% (<span class="red">-%%?SERVER_RESERVED_SLOTS%% reserved</span>)</td>
  </tr>
  <tr title="Total ServerQuery Connections: %%SERVER_QUERY_CLIENT_CONNECTIONS%%">
    <td class="label">Current Queries:</td>
    <td>%%SERVER_QUERYCLIENTS_ONLINE%% / %%SERVER_MAXCLIENTS%%</td>
  </tr>
  %%?PLUGIN_INFO_DATA%%
	<tr><td class="Label">%%TR_SERVER_CLIENT_CONNECTIONS%%:</td><td>%%SERVER_CLIENT_CONNECTIONS%%</td></tr>
	<tr><td class="Label">Total Query Connections:</td><td>%%SERVER_QUERY_CLIENT_CONNECTIONS%%</td></tr>
</table>
<br>
<table id="list">
  <tr><td class="space">
    <img src="iconpath:REFRESH" alt="">
    &nbsp;
    <a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">Refresh</a>
    <a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">Refresh</a>
  </td></tr>
</table>
