<?xml version="1.0" encoding="UTF-8"?>
<!-- BootstrapMenu Customization for Footer -->
<!-- Breadcrumb.xslt from http://dnnddrmenutemplates.codeplex.com/ -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:param name="CSSClass">footerlink</xsl:param>
  <xsl:param name="separator"></xsl:param>
  <xsl:template match="/*">
    <xsl:apply-templates select="root" />
  </xsl:template>
  <xsl:template match="root">
    <ul class="{$CSSClass}">
      <xsl:apply-templates select="//node[@breadcrumb=1]" />
    </ul>
  </xsl:template>
  <xsl:template match="node">
    <li>
      <xsl:if test="position() != 1">
        <xsl:value-of select="$separator" disable-output-escaping="yes" />
      </xsl:if>
      <xsl:choose>
        <xsl:when test="@enabled = 1">
          <a href="{@url}">
            <xsl:value-of select="@text" />
          </a>
        </xsl:when>
        <xsl:otherwise>
          <a href="{@url}">
            <xsl:value-of select="@text" />
          </a>U+00A0U+00B7U+00A0
        </xsl:otherwise>
      </xsl:choose>
    </li>
  </xsl:template>
</xsl:stylesheet>
