<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <xsl:template match="/">

    [

    <xsl:for-each select="aplikace">
      {"nazev":"<xsl:value-of select="nazev"/>",}
    </xsl:for-each>

    <xsl:for-each select="aplikace/uzivatel/osobni_udaje">
      <xsl:sort select="prijmeni"/>
      {
      "jmeno":"<xsl:value-of select="jmeno"/>",
      "prijmeni":"<xsl:value-of select="prijmeni"/>",
      "vyska_cm":"<xsl:value-of select="vyska_cm"/>",
      "vaha_kg":"<xsl:value-of select="vaha_kg"/>",
      "dat_nar":"<xsl:value-of select="dat_nar"/>",
      "sedave_zamestnani":"<xsl:value-of select="sedave_zamestnani"/>",
      "vysoky_tk":"<xsl:value-of select="vysoky_tk"/>",
      },
      <xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>

    <xsl:for-each select="aplikace/uzivatel/hlavni_oddil/trener">
      <xsl:sort select="prijmeni"/>
      {
      "nickname":"<xsl:value-of select="nickname"/>",
      "jmeno":"<xsl:value-of select="jmeno"/>",
      "prijmeni":"<xsl:value-of select="prijmeni"/>",
      "vek":"<xsl:value-of select="vek"/>",
      "zeme_pusobeni":"<xsl:value-of select="zeme_pusobeni"/>",
      },
      <xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>

    <xsl:for-each select="aplikace/uzivatel/hlavni_oddil/trener/vzdelani">
      <xsl:sort select="skola"/>
      {
      "stupen":"<xsl:value-of select="stupen"/>",
      "skola":"<xsl:value-of select="skola"/>",
      "fakulta":"<xsl:value-of select="fakulta"/>",
      "rok_ukonceni":"<xsl:value-of select="rok_ukonceni"/>",
      "praxe_v_oboru_roky":"<xsl:value-of select="praxe_v_oboru_roky"/>",
      },
      <xsl:if test="position() != last()">,</xsl:if>
    </xsl:for-each>

    ]

  </xsl:template>
</xsl:stylesheet>
