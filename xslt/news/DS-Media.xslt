<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-news-3">
			 <div class="container">
			<!--Title-->
				<h2 class="kusto-title">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="container news-item">
					<xsl:if test="count(/NewsList/News) > 0">
							<!--Call News Child-->
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</xsl:if>
				</div>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!-- item 1 -->
		<xsl:if test="position() = 1 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>

		</xsl:if>
		<xsl:if test="position() = 1 ">
			<div class="col-lg-6 top-list">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="img">
							<img class="img-fluid" >
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<h3><xsl:value-of select="Title"></xsl:value-of></h3>
							<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<!-- item 2,3 -->

		<xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 part-list"&gt;</xsl:text>
		</xsl:if>

		<xsl:if test="position() = 2">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure class="row">
					<div class="col-md-4">
						<div class="img">
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
					</div>
					<figcaption class="col-md-8">
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>

		<xsl:if test="position() = 3">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure class="row">
					<div class="col-md-4">
						<div class="img">
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
					</div>
					<figcaption class="col-md-8">
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>

		<xsl:if test="position() = 4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure class="row">
					<div class="col-md-4">
						<div class="img">
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
					</div>
					<figcaption class="col-md-8">
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
						<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
					</figcaption>
				</figure>
			</a>
		</xsl:if>

		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;&lt;/div&gt;</xsl:text>
		</xsl:if>


		
		<!-- item 5,6,7... -->
		<xsl:if test="position() = 5 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="row other-list"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() > 4 ">
			<div class="col-sm-6 col-lg-4">
				<a class="item">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="img">
							<img class="img-fluid">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption>
							<h3><xsl:value-of select="Title"></xsl:value-of></h3>
							<p><xsl:value-of select="BriefContent"></xsl:value-of>.</p>
							<time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 10 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		</xsl:if>
		<!-- item last -->
	</xsl:template>

</xsl:stylesheet>