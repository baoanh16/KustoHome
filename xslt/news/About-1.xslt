<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-about-1" bg-img="/Data/Sites/1/media/about_bg_3.png">
					<!-- <xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute> -->
					<article class="about-list">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</article>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="canhcam-about-2" bg-img="/Data/Sites/1/media/about_bg_4.png">
					<!-- <xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute> -->
					<article class="about-list">
						<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
					</article>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="canhcam-about-3" bg-img="/Data/Sites/1/media/about_bg_7.png">
					<!-- <xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute> -->
					<article class="about-list">
						<div class="about-list__nav">
							<div class="container">
								<div class="greenland-slick-nav owl-carousel owl-theme list-items" id="sync2">
									<xsl:apply-templates select="News" mode="ZoneNews3Nav"></xsl:apply-templates>
								</div>
							</div>
						</div>
						<div class="about-list__content">
							<div class="container">
								<div class="content-list owl-carousel owl-theme list-items" id="sync1">
									<xsl:apply-templates select="News" mode="ZoneNews3Content"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>
			<xsl:otherwise>

				<xsl:if test="position()=4">
					<xsl:text disable-output-escaping="yes">&lt;section class="canhcam-about-4" &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;article class="about-list" &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;div class="container" &gt;</xsl:text>
				</xsl:if>

				<xsl:if test="(position() mod 2) = 0">
					<xsl:text disable-output-escaping="yes">&lt;div class="row top-list" &gt;</xsl:text>
				</xsl:if>
				<xsl:if test="(position() mod 2) = 1 ">
					<xsl:text disable-output-escaping="yes">&lt;div class="row part-list" bg-img="/Data/Sites/1/media/about_bg_2.png" &gt;</xsl:text>
				</xsl:if>
				<div class="col-12">
					<h2 class="greenland-title title-center">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<xsl:apply-templates select="News" mode="ZoneNewsOther"></xsl:apply-templates>
				<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>

				<xsl:if test="position()=last()">
					<xsl:text disable-output-escaping="yes">&lt;/div &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;/article &gt;</xsl:text>
					<xsl:text disable-output-escaping="yes">&lt;/section &gt;</xsl:text>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="News" mode="ZoneNews1">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 order-lg-1">
					<div class="greenland-img text-center text-lg-left">
						<img class="img-fluid">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
				</div>
				<div class="col-lg-6 mt-3 mt-lg-0">
					<div class="content">
						<span class="text-mute text-title text-center text-lg-left">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</span>
						<h2 class="greenland-title text-center text-lg-left">
							<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="greenland-title title-center">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 info">
					<div class="people-img">
						<img src="./img/about_director.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<div class="people-des text-center" bg-img="/Data/Sites/1/media/people_bg.png">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
				<div class="col-lg-8 mt-3 mt-lg-3">
					<div class="content">

						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3Nav">
		<div class="item">
			<h5>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h5>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3Content">

		<div class="item text-center">
			<h2>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h2>
			<h3>
				<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<p class="text-title">

				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
			<div class="item-img">
				<img class="img-fluid" src="./img/about_1.png" alt="">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNewsOther">

		<div class="col-md-6 col-12">
			<figure class="text-center">
				<img class="img-fluid" src="./img/about_icon_1.png" alt="alt">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>