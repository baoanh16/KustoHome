<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-boxes-10">
			<article class="container">
				<div class="row residential-description">
					<div class="col-lg-8">
						<div class="text">
							<h1><xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							</h1>
							<p><xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="content">
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>

				<div class="row residential-gallery">
					<div class="col-12">
						<div class="owl-carousel">
							<xsl:apply-templates select="/NewsDetail/NewsImages"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</article>
		</section>

		<section class="canhcam-boxes-12">
			<article class="container">
				<h2 class="kusto-title">Related Projects</h2>
				<div class="owl-carousel owl-theme">
					<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
				</div>
			</article>
		</section>
	</xsl:template>


	
	<xsl:template match="NewsImages">
		<div class="item cover">
			<xsl:if test="position() = '1'">
				<xsl:attribute name="class">
					<xsl:text>item cover</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>

		<xsl:template match="NewsOther">
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
						<p class="year">
							<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<h3><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></h3>
					</div>
				</div>
			</a>
	</xsl:template>
</xsl:stylesheet>

		



<!-- 


	<xsl:template match="News">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<img src="./img/residential/r-1.jpg">
				</img>
				<div class="content">
					<p class="year">2018</p>
					<h3>diamond island</h3>
				</div>
			</div>
		</a>
	</xsl:template> -->