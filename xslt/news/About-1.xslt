<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	


	<xsl:template match="/">
		<!--Begin nav-->
		 <!-- data-spy="scroll" data-target="#kusto-spy" data-offset="0" -->
		<div class="wrapper">
			<section class="canhcam-nav-1 d-none d-lg-block">
				<div class="container">
					<ul class="nav justify-content-center nav-pills" id="kusto-spy">
						<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
					</ul>
				</div>
			</section>
			<!--End nav-->
			<!--Begin content-->
			<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
			<!--End content-->
		</div>
	</xsl:template>

	<xsl:template match="Zone" mode="Nav">
		<li class="nav-item">
			<a class="nav-link">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!--Match Id-->
				<xsl:attribute name="href">
					<xsl:text>#kusto-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-boxes-2" id="kusto-about-1">
					<div class="container">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="canhcam-boxes-3" id="kusto-about-2">
					<div class="container" bg-img="/Data/Sites/1/skins/default/img/about/a-2.jpg">
						<h2 class="kusto-title">Vision - Mission</h2>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>

			<xsl:when test="position()=3">
				<section class="canhcam-boxes-4" id="kusto-about-3">
					<div class="container">
						<h2 class="kusto-title">Awards</h2>
						<div class="owl-carousel owl-theme scroll">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>

			<xsl:when test="position()=4">
				<section class="canhcam-testimonials-1" id="kusto-about-4">
					<div class="container">
						<h2 class="kusto-title scroll">Our People</h2>
						<p class="sub-title scroll">Kusto Home has built a team of experienced professionals who have demonstrated complementary financial and managerial skills over several economic and investment cycles in Vietnam.</p>
						<div class="row scroll">
							<div class="col">
								<div class="testimonial-slider owl-carousel">
									<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	


	<xsl:template match="News" mode="ZoneNews1">
		<h2 class="kusto-title">
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</h2>
		<div class="row">
			<div class="col-lg-6 scroll animated fadeInUp delay-2s">
				<div class="img"  bg-img="/Data/Sites/1/News/57/a-1.jpg">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6 scroll animated fadeInUp delay-2s">
				<div class="text"> 
					<p class="bold">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-lg-6 scroll">
			<div class="img">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
			<div class="text">
				<h4><xsl:value-of select="Title"></xsl:value-of></h4>
				<p><xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of></p>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>


	<xsl:template match="News" mode="ZoneNews3">
		<div class="item">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
			</img>
			<div class="content">
				<h3>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<a class="btn readmore">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					READ MORE
				</a>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews4">
		<a class="fancybox">
			<xsl:attribute name="href">
				<xsl:text>#fancytext</xsl:text>
				<xsl:value-of select="position()" />
			</xsl:attribute>
			<figure class="item">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
				<figcaption>
					<h4>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
				</figcaption>
			</figure>
			<div class="fancy" style="display: none">
				<xsl:attribute name="id">
					<xsl:text>fancytext</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<div class="fancy-img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="fctext">
					<h4>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
					<p class="fancy-info">
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</a>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
</xsl:stylesheet>