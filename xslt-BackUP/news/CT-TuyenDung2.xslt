<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin News-->
  <xsl:template match="/">
	  <section class="canhcam-boxes-7">
        <article class="container">
          <div class="row">
            <div class="col-lg-8 vacancie-detail">
              <div class="text">
                <h2><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h2>
              </div>
              <div class="text row">
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-web"></span>
                    <p>Country</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-account"></span>
                    <p>Function Sales</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-map-marker"></span>
                    <p>Location</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-briefcase"></span>
                    <p>Job Category</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-star"></span>
                    <p>Job Type</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-currency-usd"></span>
                    <p>Salary</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-school"></span>
                    <p>Experience</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-calendar-today"></span>
                    <p>Exp Date</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of></p>
                  </div>
                </div>
                <div class="item col-lg-6">
                  <div class="title"><span class="mdi mdi-tag"></span>
                    <p>Eligibility</p>
                  </div>
                  <div class="content">
                    <p><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></p>
                  </div>
                </div>
              </div>
              <div class="text">
                <h3>Job Description</h3>
                <ul>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                </ul>
              </div>
              <div class="text">
                <h3>Job Requirements</h3>
                <ul>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                </ul>
                <h3 class="benefit">Benefits</h3>
                <ul class="benefit">
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                  <li><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></li>
                </ul>
              </div><a class="btn" href="#">APPLY NOW</a>
            </div>
            <div class="col-lg-4 other">
              <div class="text">
                <h2>Other Vacancie</h2>
                  <xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
              </div>
            </div>
          </div>
        </article>
      </section>
	</xsl:template>
  <xsl:template match="News">
    <a class="item" href="#">
      <xsl:attribute name="href">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:attribute name="target">
        <xsl:value-of select="Target"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="/NewsList/ViewMore" disable-output-escaping="yes"></xsl:value-of>
      <h3><xsl:value-of select="/NewsDetail/Title"></xsl:value-of></h3>
      <div class="add">
        <p><xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of></p>
        <p><xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of></p>
      </div>
    </a>
  </xsl:template>




</xsl:stylesheet>