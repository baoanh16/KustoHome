<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-boxes-7">
			<article class="container">
				<div class="row">
					<div class="col-lg-8 vacancie-detail">
						<div class="text">
							<h2>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							</h2>
						</div>
						<div class="text row">
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<a class="btn"> APPLY NOW
						</a>
					</div>
					<div class="col-lg-4 other">
						<div class="text">
							<h2>Other Vacancie</h2>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</article>
      </section>
	</xsl:template>

	<xsl:template match="News">
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>



	<xsl:template match="NewsOther">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
			</h3>
			<div class="add">
				<p>
					<xsl:value-of select="CreatedDate"></xsl:value-of>
				</p>
				<p>
					<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</p>
			</div>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>