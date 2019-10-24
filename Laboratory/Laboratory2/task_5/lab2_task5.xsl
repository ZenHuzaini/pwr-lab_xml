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
                }

                th, td {
                text-align: left;
                padding: 8px;
                }

                tr:nth-child(even){background-color: #f2f2f2}
            </style>
        </head>

            <body>
                <a href="{rss/channel/image/link}"><img src="{rss/channel/image/url}" alt="{rss/channel/image/title}" width="150" height="30" /></a>
                <h1>
                    <xsl:value-of select="rss/channel/title"/>
                </h1>
                <p>
                    Description : <xsl:value-of select="rss/channel/description"/>
                    <br/>
                    Last Build Date : <xsl:value-of select="rss/channel/lastBuildDate"/>
                    <br/>
                    Update Period : <xsl:value-of select="rss/channel/syupdatePeriod"/>
                    <br/>
                    Update Frequency : <xsl:value-of select="rss/channel/syupdateFrequency"/>
                </p>

                <div style="overflow-x:auto;">
                <table border="1" width="100%">
                    <tr style="background-color:orange">
                        <td>title</td>
                        <td>link</td>
                        <td>comments</td>
                        <td>pubDate</td>
                        <td>category</td>
                        <td>creator</td>
                        <td>details</td>

                    </tr>



                    <xsl:for-each select="rss/channel/item">
                        <tr>
                            <td>
                                <xsl:value-of select="title"/>
                            </td>
                            <td>
                                <a href="{link}"><xsl:value-of select="link"/></a>
                            </td>
                            <td>
                                <xsl:value-of select="comments"/>
                            </td>
                            <td>
                                <xsl:value-of select="pubDate"/>
                            </td>

                            <td>
                                <xsl:for-each select="category">
                                    <xsl:value-of select="text()"/>
                                    <br/>
                                    <hr/>
                                </xsl:for-each>
                            </td>
                            <td>
                                <xsl:value-of select="dccreator"/>
                            </td>
                            <td>
                            <xsl:value-of select="/@isPermalink"/>
                            <hr/>
                            comment rss: <xsl:value-of select="wfwcommentRss"/>
                            <hr/>
                            Description: <xsl:value-of select="description"/>
                            <hr/>
                            comment: <xsl:value-of select="slashcomments"/>

                            </td>


                        </tr>
                    </xsl:for-each>
                </table>
                </div>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>