<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>

    <head>

        <style>
body {
    font-family: Arial;
    background-color: #f4f6f8;
    padding: 20px;
}

h1 {
    color: #333;
}

table {
    border-collapse: collapse;
    width: 60%;
    margin-bottom: 30px;
}

th {
    background-color: #007acc;
    color: white;
}

td, th {
    padding: 10px;
    border: 1px solid #ccc;
}

div {
    background-color: white;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 8px;
}
</style>
    </head>
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