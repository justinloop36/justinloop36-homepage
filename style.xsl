<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <title>My Chaotic Page</title>
    <style>
        body { background: #ff00ff; color: lime; font-family: 'Comic Sans MS', cursive; }
        .container { border: 5px dashed yellow; padding: 20px; width: 60%; margin: auto; }
        .gb { background: white; color: black; margin-top: 20px; padding: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h1><xsl:value-of select="homepage/header"/></h1>
        <marquee><xsl:value-of select="homepage/marquee"/></marquee>
        
        <xsl:for-each select="homepage/content/section">
            <h2><xsl:value-of select="@title"/></h2>
            <p><xsl:value-of select="."/></p>
        </xsl:for-each>

        <div class="gb">
            <h3>Guestbook</h3>
            <ul>
                <xsl:for-each select="homepage/guestbook/entry">
                    <li><b><xsl:value-of select="@name"/>: </b><xsl:value-of select="."/></li>
                </xsl:for-each>
            </ul>
            <form onsubmit="alert('Sorry! This is a static XML file. I cannot save your message.'); return false;">
                Name: <input type="text"/><br/>
                Msg: <input type="text"/><br/>
                <button type="submit">Sign!</button>
            </form>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
