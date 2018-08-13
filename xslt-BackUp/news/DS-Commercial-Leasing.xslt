<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="/">
		<section class="canhcam-boxes-5">
			<div class="container">
				<h2 class="kusto-title">
					<xsl:value-of select="ZoneTitle"></xsl:value-of>
				</h2>
				<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="Zone" mode="Content">
		<xsl:choose>
			<xsl:when test="position()=1">
				<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
			</xsl:when>
			<xsl:when test="position()=2">
				
				<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews1">
		<div class="row item" id="com-1">
			<div class="col-lg-6">
				<div class="img">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img class="d-lg-none d-xl-block">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="text"> 
					<h4><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h4>
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<a class="btn viewmore">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>VIEW MORE
						</a>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews2">
		<div class="row item" id="com-2">
			<div class="col-lg-6 order-lg-2">
				<div class="img">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img class="d-lg-none d-xl-block">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6 order-lg-1">
				<div class="text"> 
					<h4><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h4>
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<a class="btn viewmore">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>VIEW MORE
						</a>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>