<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<article class="container">
          <h2 class="kusto-title">
		  	<xsl:value-of select="NewsList/ModuleTitle"></xsl:value-of>
		  </h2>
          <div class="owl-carousel owl-theme">
            	<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
          </div>
        </article>
	</xsl:template>


	<xsl:template match="News">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
				<div class="content">
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
					<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
				</div>
			</div>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>