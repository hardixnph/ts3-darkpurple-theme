<!--
TeamSpeak 3 Channel Infoframe Template (EN)

Copyright (c) 2009-2022 TeamSpeak Systems GmbH
Autor: dante696 from TeamSpeak-Systems GmbH
Copyright (c) 2022 Hardix - fastguard x baroynetwork
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%20
#%%IMAGES_MAX_HEIGHT%%20

Replacable variables for channels:
CHANNEL_NAME
CHANNEL_NAME_PLAIN
CHANNEL_ID
CHANNEL_ICON
CHANNEL_ICON_SCALED
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_MODERATED_ICON
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
IMAGES_MAX_HEIGHT
OPEN_FILE_BROWSER
FILE_BROWSER_ICON
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
  .blue {
    color: blue;
  }
  .green {
    color: green;
  }
  .red {
    color: red;
  }
  .purple {
    color: #907BEA;
  }
  .small {
    font-size: 7pt;
  }
</style>

<table id="info">
    <td class="label" style="font-weight: bold">Name: </td>
    <td dir="LTR">
      <a href="channelid://%%CHANNEL_ID%%" class="TextMessage_ChannelLink" style="text-decoration: none; font-weight: bold; color: #5B34C9;">%%CHANNEL_ICON_SCALED%% %%CHANNEL_NAME%%</a>&nbsp;
    </td>
  <tr><td class="label" style="font-weight: bold">Full Name:</td><td>%%CHANNEL_NAME_PLAIN%%</td></tr>
  <tr><td class="label" style="font-weight: bold">Topic:</td><td>%%?CHANNEL_TOPIC%%</td></tr>
  <tr><td class="Label" style="font-weight: bold">Channel ID/Order:</td><td>%%CHANNEL_ID%% / %%CHANNEL_ORDER%%</td></tr>
  <tr>
    <td class="label" style="font-weight: bold">Codec:</td>
    <td>
      %%CHANNEL_CODEC%%
      &nbsp;<img src="styles:/hardix_dark/media/encrypted_12x12.png" alt="%%?CHANNEL_VOICE_DATA_ENCRYPTED_FLAG%%" />
    </td>
  </tr>
  <tr>
    <td class="label" style="font-weight: bold">Codec Quality:</td>
    <td>%%CHANNEL_CODEC_QUALITY%% (estimated bitrate: %%CHANNEL_CODEC_BITRATE%%/s)</td>
  </tr>
  <tr><td class="label" style="font-weight: bold">Type:</td><td class="blue">%%?CHANNEL_FLAGS%%</td></tr>
  <tr><td class="label" style="font-weight: bold">Current Clients:</td><td>%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
  <tr><td class="label" style="font-weight: bold">Needed Talk Power:</td><td class="purple" style="color: #907BEA;"><img src="iconpath:MODERATED" height="16" width="16" alt="" title="Request Talk Power to be able to talk in this Channel." />&nbsp;&nbsp;%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
  <tr>
    <td class="label" style="font-weight: bold">Subscription Status:</td>
    <td>%%CHANNEL_SUBSCRIPTION%%</td>
  </tr>
  <tr><td>
      %%FILE_BROWSER_ICON%%
      &nbsp;
      <a class="Active" href="%%?OPEN_FILE_BROWSER%%">%%?TR_OPEN_FILE_BROWSER%%</a>
    </td></tr>
  </table>
  <br>
  %%?PLUGIN_INFO_DATA%%
</table>
<p style="margin-top: 4px; color:darkRed;">Channel will be deleted in %%?TEMP_CHANNEL_TIME_TO_DELETE%%.</p>

<table id="list" width=100%>
  <tr><td class="space label" style="font-weight: bold"><img src="gfx:hardix_dark/change_nickname.svg" height="16" width="16" alt=""> Description:</td></tr><tr><td class="list"><br />%%?CHANNEL_DESCRIPTION%%</td></tr>
</table>
