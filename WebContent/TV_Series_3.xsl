<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">

		<html>
			<head>
				<title>TV Series 3</title>
				<link rel="icon" href="images/tv_favicon.ico" type="image/x-icon" />
			</head>

			<body bgcolor="#53CFCF">
				<br />
				<font color="white">
					<h1 align="center">XML File Overview</h1>
				</font>
				<br />
				<br />

				<xsl:apply-templates />
			</body>
		</html>
	</xsl:template>
	
	
	

	<xsl:template match="show">
		<h2>
			<font color="blue">
				(
				<xsl:value-of select="@id" />
				)
				<xsl:value-of select="name" />
			</font>
		</h2>
		<p>
			<xsl:apply-templates select="age/@class" />
		</p>
		<p>
			<xsl:apply-templates select="rating" />
		</p>
		<p>
			<xsl:apply-templates select="aired/@seasons" />
		</p>
		<p>
			<xsl:apply-templates select="aired" />
		</p>
		<p>
			<xsl:apply-templates select="desc" />
		</p>
		<br />
	</xsl:template>
	
	
	
	
	
	

	<xsl:template match="age/@class">
		<strong>
			Age Cert:
			<em>
				<xsl:value-of select="." />
			</em>
		</strong>
	</xsl:template>
	
	
	
	

	<xsl:template match="rating">
		<strong>
			Rating:
			<xsl:value-of select="." />
			/10
		</strong>
	</xsl:template>
	
	
	
	

	<xsl:template match="aired/@seasons">
		<strong>
			Seasons:
			<xsl:value-of select="." />
		</strong>
	</xsl:template>





	<xsl:template match="aired">
		<strong>
			Aired:
			<xsl:value-of select="." />
		</strong>
	</xsl:template>
	
	
	
	

	<xsl:template match="desc">
		<table>
			<tr>
				<td width="600">
					<xsl:value-of select="." />
				</td>
			</tr>
		</table>
	</xsl:template>
	
</xsl:stylesheet>