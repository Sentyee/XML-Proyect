<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
                xmlns:wb="http://www.worldbank.org"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <AllData>
            <xsl:apply-templates select="wb:data/wb:data"/>
        </AllData>
    </xsl:template>
    <xsl:template match="wb:data/wb:data">
        <Data>
            <Date>
                <xsl:value-of select="wb:date"/>
            </Date>
            <Value>
                <xsl:value-of select="wb:value"/>
            </Value>
        </Data>
    </xsl:template>

</xsl:stylesheet>