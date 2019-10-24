<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                
                <p style='padding: 70px;'>
                Dear <xsl:value-of select="information/author/name"/>,
                <br/>
                <br/>
                Your paper under title <xsl:value-of select="information/author/bookTitle"/> that was register under nr ID <xsl:value-of select="information/author/bookId"/> was successfully uploaded to a DepCoS-RELCOMEX conference.
                You can check that the file is correctly uploaded by following this link: http://thegoodbook.com/<xsl:value-of select="information/author/bookId"/>
                <br/>
                Thanks for submitting to DepCoS-RELCOMEX 201x. Until the deadline, you
                can still update your information or transmit a revised file. 
                <br/>
                <br/>
                Best regards,
                <br/>
                DepCoS-RELCOMEX chairs. 
                </p>

</body>
</html>
</xsl:template>
</xsl:stylesheet>