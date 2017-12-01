<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">

		<html>
			<head>
				<title>TV Series 2</title>
				<link rel="icon" href="images/tv_favicon.ico" type="image/x-icon" />
				<style>
					img
					{
					border-style: groove;
					}
				</style>
			</head>

			<body bgcolor="#B2CCCC">

				<h1 align="center">Shows created by Joss Whedon:</h1>
				<table align="center">
					<tr>
						<xsl:for-each select="tv_series/show">
							<xsl:if test="contains(creator, 'Joss Whedon')">
								<td>
									<img width="180" height="270">
										<xsl:attribute name="src"><xsl:value-of
											select="image/@src" /></xsl:attribute>
									</img>
								</td>
							</xsl:if>
						</xsl:for-each>
					</tr>
				</table>
				<br />
				<br />

				<h1 align="center">Shows featuring James Spader:</h1>
				<table align="center">
					<tr>
						<xsl:for-each select="tv_series/show">
							<xsl:if test="contains(cast, 'James Spader')">
								<td>
									<img width="180" height="270">
										<xsl:attribute name="src"><xsl:value-of
											select="image/@src" /></xsl:attribute>
									</img>
								</td>
							</xsl:if>
						</xsl:for-each>
					</tr>
				</table>
				<br />
				<br />

				<h1 align="center">Shows with only one season:</h1>
				<table align="center">
					<tr>
						<xsl:for-each select="tv_series/show">
							<xsl:if test="aired[@seasons='1']">
								<td>
									<img width="180" height="270">
										<xsl:attribute name="src"><xsl:value-of
											select="image/@src" /></xsl:attribute>
									</img>
								</td>
							</xsl:if>
						</xsl:for-each>
					</tr>
				</table>
				<br />
				<br />

				<h1 align="center">Shows with more than two seasons:</h1>
				<table align="center">
					<tr>
						<xsl:for-each select="tv_series/show">
							<xsl:if test="aired[@seasons&gt;'2']">
								<td>
									<img width="180" height="270">
										<xsl:attribute name="src"><xsl:value-of
											select="image/@src" /></xsl:attribute>
									</img>
								</td>
							</xsl:if>
						</xsl:for-each>
					</tr>
				</table>
				<br />
				<br />






				<table align="center" border="1">
					<tr>
						<th colspan="4" bgcolor="black">
							<font color="white" size="5">TV Show Info</font>
						</th>
					</tr>
					<tr align="center">
						<td>
							<th>Show Name</th>
						</td>
						<td>
							<th>Age Rating</th>
						</td>
						<td>
							<th>Seasons</th>
						</td>
						<td>
							<th>Ended?</th>
						</td>
					</tr>


					<xsl:for-each select="tv_series/show">
						<xsl:sort select="aired/@seasons" order="ascending"
							data-type="number" />
						<tr>
							<xsl:choose>
								<xsl:when test="contains(age/@class, 18)">
									<td width="175" bgcolor="#FF6666" align="center">
										<xsl:value-of select="name" />
									</td>
								</xsl:when>

								<xsl:when test="contains(age/@class, 15)">
									<td width="175" bgcolor="#33CCFF" align="center">
										<xsl:value-of select="name" />
									</td>
								</xsl:when>

								<xsl:otherwise>
									<td width="175" bgcolor="#66FF66" align="center">
										<xsl:value-of select="name" />
									</td>
								</xsl:otherwise>
							</xsl:choose>


							<td align="center">
								<xsl:value-of select="age/@class" />
							</td>

							<td align="center">
								<xsl:value-of select="aired/@seasons" />
							</td>


							<xsl:choose>
								<xsl:when test="string-length(aired) = 9">
									<td align="center">Yes</td>
								</xsl:when>
								<xsl:otherwise>
									<td align="center">No</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>


				<table align="center">
					<tr>
						<td width="15" bgcolor="#66FF66" />
						<td> - Safe For Most</td>
						<td width="15" bgcolor="#33CCFF" />
						<td> - Mature Themes</td>
						<td width="15" bgcolor="#FF6666" />
						<td>- Adult Content</td>
					</tr>
				</table>

				<br />
			</body>
		</html>




	</xsl:template>
</xsl:stylesheet>