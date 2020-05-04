<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
                xmlns:x="https://www.victor.com"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="x">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <!-- Latest compiled and minified CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"/>

                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"/>

                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"/>
                <title>AFR (Spain)</title>
            </head>
            <body>
                <div class="container">
                    <table class="table table-responsive table-striped my-table">
                        <thead>
                            <tr>
                                <th>Year</th>
                                <th>Adolescent fertility rate</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//x:AllData/x:Data">
                                <tr>
                                    <td>
                                        <xsl:value-of select="x:Date"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="x:Value"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
