<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">

		<html>

			<head>
				<title>TV Series</title>
				<link rel="icon" href="images/tv_favicon.ico" type="image/x-icon" />
				<style>
					ul{
					list-style-type: circle;
					}

					img{
					border-style: groove;
					}
				</style>
			</head>

			<body bgcolor="#E6FFFF">
				<xsl:for-each select="tv_series/show">
					<xsl:sort select="name" order="ascending" data-type="text" />

					<table width="900" align="center">
						<tr bgcolor="black">
							<th colspan="3" align="center">
								<font color="#E6FFFF" size="6">
									<xsl:value-of select="name" />
								</font>
							</th>
						</tr>
						<tr>
							<td>
								<br />
							</td>
						</tr>

						<tr>
							<strong>
								<td width="300" align="right">
									Age:
									<xsl:value-of select="age/@class" />
								</td>
								<td width="300" align="center">
									Rating:
									<xsl:value-of select="rating" />
								</td>

								<xsl:choose>
									<xsl:when test="string-length(aired) = 9">
										<td width="300">
											Aired:
											<font color="red">
												<xsl:value-of select="aired" />
											</font>
										</td>
									</xsl:when>

									<xsl:otherwise>
										<td width="300">
											Aired:
											<font color="blue">
												<xsl:value-of select="aired" />
											</font>
										</td>
									</xsl:otherwise>
								</xsl:choose>
							</strong>
						</tr>
						<tr>
							<td>
								<br />
							</td>
						</tr>
					</table>



					<table width="900" align="center">
						<tr>
							<td rowspan="2" width="200" align="center">
								<img width="180" height="270">
									<xsl:attribute name="src"><xsl:value-of
										select="image/@src" /></xsl:attribute>
								</img>
							</td>
							<td colspan="2">
								<xsl:value-of select="desc" />
								<br />
								<br />
							</td>
						</tr>
						<tr>
							<td width="200">
								<xsl:for-each select="genres/genre">
									<ul>
										<li>
											<xsl:value-of select="." />
										</li>
									</ul>
								</xsl:for-each>
							</td>
							<td width="200">
								<ul>
									<xsl:for-each select="cast/actor">
										<li>
											<xsl:value-of select="." />
										</li>
									</xsl:for-each>
								</ul>
							</td>
						</tr>

						<tr align="right">
							<td colspan="3">
								<em>
									Created by:
									<xsl:value-of select="creator" />
								</em>
							</td>
						</tr>

					</table>
					<br />
					<br />
					<br />
					<br />
				</xsl:for-each>
			</body>


		</html>


	</xsl:template>
</xsl:stylesheet>