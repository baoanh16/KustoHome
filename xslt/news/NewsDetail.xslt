<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="canhcam-news-details-1">
        <article class="container">
          <div class="row">
            <div class="col-lg-8">
              <div class="news-read">
                <h1>
                  <xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
                  <xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
                </h1>
                <time>
                  <xsl:text> </xsl:text>
                  <xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
                </time>
                <p class="lead"><xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of></p>
                <p><strong><xsl:value-of select="Title"></xsl:value-of></strong></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <figure><img class="img-fluid" src="">
                  <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                  </xsl:attribute>
                  <figcaption>
                    <xsl:attribute name="alt">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                  </figcaption>
                </figure>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <figure><img class="img-fluid" src="">
                  <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                  </xsl:attribute>
                  <figcaption>
                    <xsl:attribute name="alt">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                  </figcaption>
                </figure>
                <p> <strong><xsl:value-of select="Title"></xsl:value-of></strong></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <figure><img class="img-fluid" src="">
                  <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                  </xsl:attribute>
                  <figcaption>
                    <xsl:attribute name="alt">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                  </figcaption>
                </figure>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p>
                <div class="card">
                  <div class="card-body"> 
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of></p><br>
                    <p><xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    <a href="tel:0938480888">
                    <xsl:attribute name="href">
                      <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                      <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </a><span>or visit </span><a href="#">
                    <xsl:attribute name="href">
                      <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                      <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                      <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    </a></p>
                  </div>
                </div>
                <div class="social-networks nav">
                  <div class="nav-item">
                    <div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a></div>
                  </div>
                  <div class="nav-item"><a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text" data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a></div>
                  <div class="nav-item">
                    <div class="g-plusone" data-size="tall"></div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4">
              <div class="othernews">
                <h2><xsl:value-of select="Title"></xsl:value-of></h2>
                <div class="lists">
                  <xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
                </div>
              </div>
              <div class="ads">
              <a href="#">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                  <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                  </xsl:attribute>
                  <xsl:attribute name="alt">
                    <xsl:value-of select="Title"></xsl:value-of>
                  </xsl:attribute>
                </img>

              </a>
              </div>
            </div>
          </div>
        </article>
      </section>
  </xsl:template>
  <xsl:template match="NewsOther">
		<div class="lists">
      <a class="item" href="#">
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
            <xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of></h3>
            <time><xsl:value-of select="CreatedDate"></xsl:value-of></time>
          </figcaption>
        </figure>
      </a>
    </div>
			
	</xsl:template>


</xsl:stylesheet>