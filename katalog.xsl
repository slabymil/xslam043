<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	 <xsl:template match="/">
        <html>
            <body>        
                <h2>Katalog notebooků</h2>             
                <table border="1">
                	<tr bgcolor="#9acd32">
                		<th style="text-align:center">Výrobce</th>
                		<th style="text-align:center">Typ</th>
                		<th style="text-align:center">Barva</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook">
                		<tr>
                			<td><xsl:value-of select="Vyrobce"/></td>
                			<td><xsl:value-of select="Typ"/></td>
                			<td><xsl:value-of select="Barva"/></td>
                		</tr>
                	</xsl:for-each>
                </table>
                <h2>Prodej</h2>
                <table border="1">
                	<tr bgcolor="4dfa7f">
                		<th style="text-align:center">Cena</th>
                		<th style="text-align:center">Alza</th>
                		<th style="text-align:center">Mall</th>
                		<th style="text-align:center">CZC.cz</th>
                		<th style="text-align:center">Datart</th>
                		<th style="text-align:center">Mironet</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook/Prodej">
                		<tr>
                			<td><xsl:value-of select="Cena"/> Kč</td>
                			<td><xsl:value-of select="Alza"/></td>
                			<td><xsl:value-of select="Mall"/></td>
                			<td><xsl:value-of select="CZC.cz"/></td>
                			<td><xsl:value-of select="Datart"/></td>
                			<td><xsl:value-of select="Mironet"/></td>
						</tr>
                	</xsl:for-each>
                </table>
                <h2>Displej</h2>
                <table border="1">
                	<tr bgcolor="5fre61">
                		<th style="text-align:center">TypPanelu</th>
                		<th style="text-align:center">Úhlopříčka</th>
                		<th style="text-align:center">Rozlišení</th>
                		<th style="text-align:center">TypDispleje</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook/Displej">
                		<tr>
                			<td><xsl:value-of select="TypPanelu"/></td>
                			<td><xsl:value-of select="Uhlopricka"/></td>
                			<td><xsl:value-of select="Rozliseni"/></td>
                			<td><xsl:value-of select="TypDispleje"/></td>
						</tr>
                	</xsl:for-each>
                </table>
                <h2>Rozměry</h2>
                <table border="1">
                	<tr bgcolor="541684">
                		<th style="text-align:left">Rozměry</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook">
                		<tr>
                			<td><xsl:value-of select="Rozmery/@Výška"/>mm x <xsl:value-of select="Rozmery/@Šířka"/>mm x <xsl:value-of select="Rozmery/@Hloubka"/>mm 
                		</td>
                	</tr>
                </xsl:for-each>
            </table>
            <h2>Hmotnost</h2>
            <table border="1">
            	<tr bgcolor="4afb5z">
            		<th style="text-align:left">Hmotnost</th>
            	</tr>
            	<xsl:for-each select="katalog/notebook">
            		<tr>
            			<td><xsl:value-of select="Hmotnost/@Hmotnost"/> g</td>
            		</tr>
            	</xsl:for-each>
            </table>
            <h2>Baterie</h2>
            <table border="1">
            	<tr bgcolor="4afb5z">
            		<th style="text-align:left">Baterie</th>
            	</tr>
            	<xsl:for-each select="katalog/notebook">
            		<tr>
            			<td><xsl:value-of select="Baterie/@Kapacita"/> wH</td>
            		</tr>
            	</xsl:for-each>
            </table>
             <h2>Výkon</h2>
                <table border="1">
                	<tr bgcolor="1ght6d">
                		<th style="text-align:center">FrekvenceProcesoru</th>
                		<th style="text-align:center">PočetJader</th>
                		<th style="text-align:center">TypProcesoru</th>
                		<th style="text-align:center">PaměťRAM</th>
                		<th style="text-align:center">TypPamětí</th>
                		<th style="text-align:center">Harddisk</th>
                		<th style="text-align:center">TypHDD</th>
                		<th style="text-align:center">GrafickáKarta</th>
                		<th style="text-align:center">TypGrafiky</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook/Vykon">
                		<tr>
                			<td><xsl:value-of select="FrekvenceProcesoru"/> mHz</td>
                			<td><xsl:value-of select="PocetJader"/></td>
                			<td><xsl:value-of select="TypProcesoru"/></td>
                			<td><xsl:value-of select="PametRAM"/> GB</td>
                			<td><xsl:value-of select="TypPameti"/></td>
                			<td><xsl:value-of select="Harddisk"/> GB</td>
                			<td><xsl:value-of select="TypHDD"/></td>
                			<td><xsl:value-of select="GrafickaKarta"/> GB</td>
                			<td><xsl:value-of select="TypGrafiky"/></td>
						</tr>
                	</xsl:for-each>
                </table>
                <h2>Výstupy</h2>
                <table border="1">
                	<tr bgcolor="5acb154">
                		<th style="text-align:center">USB2.0</th>
                		<th style="text-align:center">USB3.0</th>
                		<th style="text-align:center">HDMI</th>
                		<th style="text-align:center">DVI</th>
                		<th style="text-align:center">VGA</th>
                		<th style="text-align:center">Jack3.5mm</th>
                		<th style="text-align:center">LAN</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook/Vystupy">
                		<tr>
                			<td><xsl:value-of select="USB2.0"/></td>
                			<td><xsl:value-of select="USB3.0"/></td>
                			<td><xsl:value-of select="HDMI"/></td>
                			<td><xsl:value-of select="DVI"/></td>
                			<td><xsl:value-of select="VGA"/></td>
                			<td><xsl:value-of select="Jack3.5mm"/></td>
                			<td><xsl:value-of select="LAN"/></td>
						</tr>
                	</xsl:for-each>
                </table>
                <h2>Výbava</h2>
                <table border="1">
                	<tr bgcolor="5acb154">
                		<th style="text-align:center">Wifi</th>
                		<th style="text-align:center">Bluetooth</th>
                		<th style="text-align:center">OS</th>
                		<th style="text-align:center">PodsvicenáKlávesnice</th>
                		<th style="text-align:center">ČtečkaKaret</th>
                		<th style="text-align:center">NumerickáKlávesnice</th>
                		<th style="text-align:center">OptickáMechanika</th>
                		<th style="text-align:center">ČtečkaOtiskuPrstu</th>
                		<th style="text-align:center">DotykovýDisplej</th>
                	</tr>
                	<xsl:for-each select="katalog/notebook/Vybava">
                		<tr>
                			<td><xsl:value-of select="Wifi"/></td>
                			<td><xsl:value-of select="Bluetooth"/></td>
                			<td><xsl:value-of select="OperacniSystem"/></td>
                			<td><xsl:value-of select="PodsvicenaKlavesnice"/></td>
                			<td><xsl:value-of select="CteckaKaret"/></td>
                			<td><xsl:value-of select="NumerickaKlavesnice"/></td>
                			<td><xsl:value-of select="OptickaMechanika"/></td>
                			<td><xsl:value-of select="CteckaOtiskuPrstu"/></td>
                			<td><xsl:value-of select="DotykovyDisplej"/></td>
						</tr>
                	</xsl:for-each>
                </table>
                <h2>Operační systém</h2>
            	<table border="1">
            	<tr bgcolor="487461">
            		<th style="text-align:left">OS</th>
            	</tr>
            	<xsl:for-each select="katalog/notebook">
            		<tr>
            			<td><xsl:value-of select="OS/@TypOS"/> <xsl:value-of select="OS/@VerzeOS"/></td>
            		</tr>
            	</xsl:for-each>
            </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>


