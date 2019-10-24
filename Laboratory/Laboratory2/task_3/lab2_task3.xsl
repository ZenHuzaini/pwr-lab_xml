<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                table {
                border-collapse: collapse;
                border-spacing: 0;
                width: 100%;
                border: 1px solid #ddd;
                align: center
                }

                th, td {
                text-align: left;
                padding: 8px;
                }

                tr:nth-child(even){background-color: #f2f2f2}
                </style>
            </head>

            <body>

                <h2>PWR Organization</h2>
                <hr/>
                <table>
                    <tr>
                        <td>
                            <img src="{university/faculty/department/dean/image}" width="200" height="200" alt=""/>
                        </td>
                        <td>
                            <xsl:value-of select="university/faculty/department/dean/name"/>
                            <hr/>
                            <br/>
                            <xsl:value-of select="university/faculty/department/dean/description"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <img src="{university/faculty/department/deanOne/image}" width="200" height="200" alt=""/>
                        </td>
                        <td>
                            <xsl:value-of select="university/faculty/department/deanOne/name"/>
                            <hr/>
                            <br/>
                            <xsl:value-of select="university/faculty/department/deanOne/description"/>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <img src="{university/faculty/department/secretary/image}" width="200" height="200" alt=""/>
                        </td>
                        <td>
                            <xsl:value-of select="university/faculty/department/secretary/name"/>
                            <hr/>
                            <br/>
                            <xsl:value-of select="university/faculty/department/secretary/description"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="{university/faculty/department/secretaryOne/image}" width="200" height="200" alt=""/>
                        </td>
                        <td>
                            <xsl:value-of select="university/faculty/department/secretaryOne/name"/>
                            <hr/>
                            <br/>
                            <xsl:value-of select="university/faculty/department/secretaryOne/description"/>
                        </td>
                    </tr>

                </table>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>