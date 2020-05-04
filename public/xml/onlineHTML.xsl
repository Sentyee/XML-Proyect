<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
    xmlns:wb="http://www.worldbank.org" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <xsl:for-each select="/wb:data/wb:data">
            <tr>
                <td>
                    <xsl:value-of select="wb:date"/>
                </td>
                <td>
                    <xsl:value-of select="wb:value"/>
                </td>
            </tr>
        </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>