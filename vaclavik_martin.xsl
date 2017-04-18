<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : vaclavik_martin.xsl
    Created on : 16. dubna 2017, 9:46
    Author     : Shorty
    Description:
        Purpose of transformation follows.
-->
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="text"/>
	<xsl:template match="RDO">
            {
            "Uzivatelske ucty": [<xsl:for-each select="settings">
                {
                "Username":"<xsl:value-of select="@username" />",
                    "Resolution":"<xsl:value-of select="zobrazeni/display/rozliseni"/>",
                    "Mode":"<xsl:value-of select="zobrazeni/display/mode"/>",
                    "Color-blind mode":"<xsl:value-of select="zobrazeni/display/colorblind-mode/@enabled"/>",
                    "VSync":"<xsl:value-of select="zobrazeni/display/vsync/@enabled"/>",
                    "Screen-saver":"<xsl:value-of select="zobrazeni/display/screen-saver/@enabled"/>",
                 
                    "Texture":"<xsl:value-of select="zobrazeni/texture-quality"/>",
                    "Shadows":"<xsl:value-of select="zobrazeni/shadow-quality"/>",
                    "Terrain":"<xsl:value-of select="zobrazeni/terrain-quality"/>",
                    "Water":"<xsl:value-of select="zobrazeni/water-quality"/>",
                    "Foliage":"<xsl:value-of select="zobrazeni/foliage-quality"/>",
                    "View distance":"<xsl:value-of select="zobrazeni/view-distance"/>",
                    "AA":"<xsl:value-of select="zobrazeni/anti-aliasing"/>",
                    "Motion blur":"<xsl:value-of select="zobrazeni/motion-blur/@enabled"/>",
                    "Depth of field":"<xsl:value-of select="zobrazeni/depth-of-field/@enabled"/>"
                }<xsl:if test="position() != last()">,</xsl:if> 
                </xsl:for-each>
             ]
            }
	</xsl:template>
</xsl:stylesheet>