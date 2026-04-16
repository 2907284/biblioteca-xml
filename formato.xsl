<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
<body>

<h1>Índice de libros</h1>

<table border="1">
<tr>
<th>Título</th>
<th>Autor</th>
</tr>

<xsl:for-each select="biblioteca/libro">
<tr>
<td>
<a href="#{@id}">
<xsl:value-of select="titulo"/>
</a>
</td>
<td>
<xsl:value-of select="autor"/>
</td>
</tr>
</xsl:for-each>

</table>

<hr/>

<h2>Detalles</h2>

<xsl:for-each select="biblioteca/libro">
<div id="{@id}" style="margin-bottom:30px;">
<h3><xsl:value-of select="titulo"/></h3>
<p><strong>Autor:</strong> <xsl:value-of select="autor"/></p>
<p><strong>Año:</strong> <xsl:value-of select="anio"/></p>
<p><strong>Páginas:</strong> <xsl:value-of select="paginas"/></p>
<p><strong>Sinopsis:</strong> <xsl:value-of select="sinopsis"/></p>
</div>
</xsl:for-each>

</body>
</html>

</xsl:template>

</xsl:stylesheet>