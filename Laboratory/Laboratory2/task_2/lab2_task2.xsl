<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

            <body>

                <h2>Salem Access Television</h2>

                <table border="1">
                    <tr style="background-color:yellow">
                        <th rowspan="2">Channel</th>
                        <th rowspan="2">Banner</th>
                        <th rowspan="2">Date</th>
                        <th colspan="3">Program Slot</th>
                    </tr>
                    <tr style="background-color:orange">
                        <td>time</td>
                        <td>title</td>
                        <td>Description</td>
                    </tr>



                    <xsl:for-each select="TVSCHEDULE/CHANNEL/DAY/PROGRAMSLOT">
                        <tr>
                            <td>
                                <xsl:value-of select="../../../CHANNEL/@CHAN"/>
                            </td>
                            <td>
                                <xsl:value-of select="../../BANNER"/>
                            </td>
                            <td>
                                <xsl:value-of select="../DATE"/>
                            </td>
                            <td>
                                <xsl:value-of select="TIME"/>
                            </td>
                            <td>
                                <xsl:value-of select="TITLE"/>
                            </td>
                            <td>
                                <xsl:value-of select="DESCRIPTION"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>