<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
	xmlns:n1="http://www.naver.com" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
<xsl:output method="html" version="1.0" encoding="euc-kr" omit-xml-declaration="no" indent="yes"/>
<xsl:template match="/">
	<HTML>
	<HEAD>
		<TITLE> 최근의 다양한 장학제도 </TITLE>
	</HEAD>
	<BODY>
		<BR/>
		<P align="center"><B><font color="#FABC04" size="10"> 최근의 다양한 장학제도 리스트 </font></B></P>
		<BR/>
		<TABLE align="center" BORDER="0" cellpadding="5" cellspacing="2">
		<THEAD>
		<TR>
			<TH bgcolor="#F9CA3E"><font color="black"> 번호 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 장학금명 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 모집기간 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 선발인원 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 지원금액 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 선발대상 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 주최기관 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 기관분류 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 성적조건 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 거주조건 </font></TH>
			<TH bgcolor="#F9CA3E"><font color="black"> 중복수혜 </font></TH>
		</TR>
		</THEAD>
		<TBODY>
			<xsl:apply-templates select="/n1:장학상품/n1:장학금">
				<xsl:sort order="descending" select="n1:모집기간" data-type="number"/>
			</xsl:apply-templates>

		</TBODY>
		</TABLE>
	</BODY>
	</HTML>
</xsl:template>

<xsl:template match="/n1:장학상품/n1:장학금">
	<TR>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:number format="1"/></p></TD>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:value-of select="n1:장학금명"/></p></TD>
	<TD bgcolor="#DEE3EF"><p align="center"><xsl:value-of select="n1:모집기간"/></p></TD>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:value-of select="n1:선발인원"/></p></TD>
	<TD bgcolor="#DEE3EF"><p align="center"><xsl:value-of select="n1:지원금액"/></p></TD>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:value-of select="n1:선발대상"/></p></TD>
	<TD bgcolor="#DEE3EF"><p align="center"><xsl:value-of select="n1:주최기관"/></p></TD>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:value-of select="n1:기관분류"/></p></TD>
	<TD bgcolor="#DEE3EF"><p align="center"><xsl:value-of select="n1:성적조건"/></p></TD>
	<TD bgcolor="#FCF5E2"><p align="center"><xsl:value-of select="n1:거주조건"/></p></TD>
	<TD bgcolor="#DEE3EF"><p align="center"><xsl:value-of select="n1:중복수혜"/></p></TD>
	</TR>
</xsl:template>
</xsl:stylesheet>