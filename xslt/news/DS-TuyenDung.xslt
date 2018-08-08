<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
	<section class="canhcam-boxes-11">
		<div class="container">
			<h2 class="kusto-title"><xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of></h2>
			<div class="row mb-2">
				<div class="col">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
								<th scope="col">Job Title</th>
								<th scope="col">Location</th>
								<th scope="col">Employment</th>
								<th scope="col">Date</th>
								</tr>
							</thead>
							<tbody>
								<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	</xsl:template>


	<xsl:template match="News">
		<tr>
			<th scope="row">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</th>
			<td><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></td>
			<td><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></td>
			<td><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></td>
		</tr>
	</xsl:template>
	

</xsl:stylesheet>
