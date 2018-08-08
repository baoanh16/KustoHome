<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="canhcam-news-3">
        <div class="container">
          <h2 class="kusto-title"><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
          </h2>
          <div class="container news-item">
            <div class="row">
              <div class="col-lg-6 top-list"><a class="item">
                  <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                  <figure>
                    <div class="img">
                      <img>
                        <xsl:attribute name="src">
                          <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                          <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                      </img>
                    </div>
                    <figcaption>
                      <h3>
                        <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
                      </h3>
                      <time>
                        <xsl:value-of select="CreatedDate"></xsl:value-of>
                      </time>
                    </figcaption>
                  </figure>
                  </a>
                </div>
              <div class="col-lg-6 part-list"><a class="item" href="#">
                  <figure class="row">
                    <div class="col-md-4">
                      <div class="img"><img class="img-fluid" src="./img/media/m-2.jpg" alt="alt"></div>
                    </div>
                    <figcaption class="col-md-8">
                      <h3>Kusto Group aims to turn its firms into S-E Asian leaders</h3>
                      <time>12/12/2017</time>
                    </figcaption>
                  </figure></a><a class="item" href="#">
                  <figure class="row">
                    <div class="col-md-4">
                      <div class="img"><img class="img-fluid" src="./img/media/m-3.jpg" alt="alt"></div>
                    </div>
                    <figcaption class="col-md-8">
                      <h3>Alexander Pirogov: “Kusto Logistics is a company that stands by its word”</h3>
                      <time>12/12/2017</time>
                    </figcaption>
                  </figure></a><a class="item" href="#">
                  <figure class="row">
                    <div class="col-md-4">
                      <div class="img"><img class="img-fluid" src="./img/media/m-4.jpg" alt="alt"></div>
                    </div>
                    <figcaption class="col-md-8">
                      <h3>Kusto Home, Coteccons sign deal on Diamond Island apartments</h3>
                      <time>12/12/2017</time>
                    </figcaption>
                  </figure></a></div>
            </div>
            <div class="row other-list">
              <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
            </div>
          </div>
        </div>
      </section>
  </xsl:template>
  <xsl:template match="NewsOther">
    <div class="col-sm-6 col-lg-4">
      <a class="item">
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        <figure>
          <div class="img"><img class="img-fluid" alt="alt">
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
          </img>
          </div>
          <figcaption>
            <h3><xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of></h3>
            <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
            </p>
            <time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
          </figcaption>
        </figure>
      </a>
    </div>
  </xsl:template>

</xsl:stylesheet>