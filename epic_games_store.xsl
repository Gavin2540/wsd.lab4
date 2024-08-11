<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Epic Games Store</title>
            </head>
            <body>
                <h1>Epic Games Store: Game List</h1>
                <table border="1">
                    <tr>
                        <th>Game ID</th>
                        <th>Title</th>
                        <th>Release Date</th>
                        <th>Platform</th>
                        <th>Players</th>
                        <th>Publisher</th>
                        <th>Playtime (Hours)</th>
                    </tr>
                    <xsl:for-each select="EpicGamesStore/Game">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="Title"/></td>
                            <td><xsl:value-of select="ReleaseDate"/></td>
                            <td><xsl:value-of select="Platform"/></td>
                            <td><xsl:value-of select="Players"/></td>
                            <td><xsl:value-of select="Publisher"/></td>
                            <td><xsl:value-of select="Playtime"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
