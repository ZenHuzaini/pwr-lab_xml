<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Student Information</h2>
        <table border="1">
          <tr bgcolor="blue">
            <th style="text-align:left">name</th>
            <th style="text-align:left">home address</th>
            <th style="text-align:left">phone number</th>
            <th style="text-align:left">job</th>
            <th style="text-align:left">sex</th>
          </tr>
          <xsl:for-each select="information/student">
            <tr>
              <td>
                <xsl:value-of select="name"/>
              </td>
              <td>
                <xsl:value-of select="homeAdress"/>
              </td>
              <td>
                <xsl:value-of select="phoneNumber"/>
              </td>
              <td>
                <xsl:value-of select="job"/>
              </td>
              <td>
                <xsl:value-of select="sex"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

