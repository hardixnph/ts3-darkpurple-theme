<!--
TeamSpeak 3 Client Tooltip Template

Copyright (c) 2009-2022 TeamSpeak Systems GmbH
Autor: dante696 from TeamSpeak-Systems GmbH
Copyright (c) 2022 Hardix - fastguard x baroynetwork

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can also use
%%?CLIENT_NAME%% (note the question mark), which is a tiny "if"- query. Use it, to remove the whole
line, if a variable is empty or just "0".

Templates must be placed in in a sub folder named like the theme (e.g. "styles/example/").
-->

<style type="text/css">
    table {
        border-collapse: collapse;
        border-spacing: 0;
    }

    td {
        padding: 0 4px 0 1px;
        white-space: nowrap;
    }

    td.noborder {
        padding: 0;
    }

    td.label {
        font-weight: bold;
    }

    td.avatar {
        padding: 0 8px 0 0;
    }

    .Highlight {
        color: #5B34C9;
        font-weight: bold;
    }

    .Important {
        color: #6639E7;
    }
</style>

<table>
    <tr>
        <td class="noborder avatar">%%?CLIENT_AVATAR%%</td>
        <td class="noborder">
            <table width="300">
                <tr>
                    <td class="label">%%TR_CLIENT_NAME%%:</td>
                    <td>
                        <span class="Highlight">%%CLIENT_NAME%%</span> (%%CLIENT_ID%%)
                    </td>
                </tr>
                <tr><td class="label">%%TR_CLIENT_DESCRIPTION%%:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
				<tr><td class="label">Version:</td><td>%%CLIENT_VERSION_SHORT%% %%CLIENT_VERSION_STATE%% on <img src="styles:/hardix_dark/media/%%CLIENT_PLATFORM%%.png" alt="" title="%%CLIENT_PLATFORM%%" /></td></tr>
                <tr>
                    <td class="label">%%TR_CLIENT_CONNECTED_SINCE%%:</td>
                    <td>%%CLIENT_CONNECTED_SINCE%%</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
