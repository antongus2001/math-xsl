<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <title>XSL</title>
        <script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
        <script id="MathJax-script" src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
      </head>
      <body>
        <h4 id="author" title="GossJS" style="display: none">Mosienko Anton P4109</h4>
        <math xmlns="http://www.w3.org/1998/Math/MathML" display="block">
            <xsl:apply-templates/>
        </math>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="строка">
    <mrow>
      <xsl:apply-templates/>
    </mrow>
  </xsl:template>

  <xsl:template match="корень">
    <msqrt>
      <xsl:apply-templates/>
    </msqrt>
  </xsl:template>

  <xsl:template match="дробь">
    <mfrac>
      <xsl:apply-templates/>
    </mfrac>
  </xsl:template>

  <xsl:template match="низверх">
    <munderover>
      <xsl:apply-templates/>
    </munderover>
  </xsl:template>

  <xsl:template match="верх">
    <msup>
      <xsl:apply-templates/>
    </msup>
  </xsl:template>

  <xsl:template match="низ">
    <msub>
      <xsl:apply-templates/>
    </msub>
  </xsl:template>

  <xsl:template match="операнд">
    <mi><xsl:value-of select="."/></mi>
  </xsl:template>

  <xsl:template match="оператор">
    <mo><xsl:value-of select="."/></mo>
  </xsl:template>

  <xsl:template match="число">
    <mn><xsl:value-of select="."/></mn>
  </xsl:template>
</xsl:stylesheet>