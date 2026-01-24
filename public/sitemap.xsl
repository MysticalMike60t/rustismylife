
<xsl:stylesheet version="2.0"
    xmlns:html="http://www.w3.org/TR/REC-html40"
    xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Rust is my Life - XML Sitemap</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style type="text/css">
                    :root {
                    --primary: #ff5f1b;
                    }
                    body {
                    font-family: Helvetica, Arial, sans-serif;
                    font-size: 13px;
                    color: #ccc;
                    background: rgb(25,25,25);
                    }
                    table {
                    border: none;
                    border-collapse: collapse;
                    }
                    #sitemap tr:nth-child(odd) td {
                    background-color: rgba(25,25,25) !important;
                    }
                    #sitemap tbody tr:hover td {
                    background-color: rgba(35,35,35);
                    }
                    #sitemap tbody tr:hover td, #sitemap tbody tr:hover td a {
                    color: white;
                    }
                    tr:hover td {
                    background: rgb(35,35,35);
                    }
                    #content {
                    margin: 0 auto;
                    width: 1000px;
                    }
                    .expl {
                    margin: 18px 3px;
                    line-height: 1.2em;
                    }
                    .expl a {
                    color: var(--primary);
                    font-weight: 600;
                    }
                    .expl a:visited {
                    color: var(--primary);
                    }
                    a {
                    color: var(--primary);
                    text-decoration: none;
                    }
                    a:visited {
                    color: var(--primary);
                    }
                    a:hover {
                    color: var(--primary);
                    text-decoration: underline;
                    }
                    td {
                    font-size:11px;
                    }
                    th {
                    text-align:left;
                    padding-right:30px;
                    font-size:11px;
                    }
                    thead th {
                    border-bottom: 1px solid #ccc;
                    }
                </style>
            </head>
            <body>
                <div id="content">
                    <h1>Rust is my Life - XML Sitemap</h1>
                    <xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &gt; 0">
                        <p class="expl"> This XML Sitemap Index file contains <xsl:value-of
                                select="count(sitemap:sitemapindex/sitemap:sitemap)" /> sitemaps. </p>
				<table
                            id="sitemap" cellpadding="3">
                            <thead>
                                <tr>
                                    <th width="75%">Sitemap</th>
                                    <th width="25%">Last Modified</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
                                    <xsl:variable name="sitemapURL">
                                        <xsl:value-of select="sitemap:loc" />
                                    </xsl:variable>
						<tr>
                                        <td>
                                            <a href="{$sitemapURL}">
                                                <xsl:value-of select="sitemap:loc" />
                                            </a>
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </xsl:if>
                    <xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &lt; 1">
                        <p class="expl"> This XML Sitemap contains <xsl:value-of
                                select="count(sitemap:urlset/sitemap:url)" /> URLs. </p>
				<table
                            id="sitemap" cellpadding="3">
                            <thead>
                                <tr>
                                    <th width="80%">URL</th>
                                    <th width="5%">Images</th>
                                    <th title="Last Modification Time" width="15%">Last Mod.</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:variable name="lower" select="'abcdefghijklmnopqrstuvwxyz'" />
                                <xsl:variable name="upper" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />
                                <xsl:for-each select="sitemap:urlset/sitemap:url">
                                    <tr>
                                        <td>
                                            <xsl:variable name="itemURL">
                                                <xsl:value-of select="sitemap:loc" />
                                            </xsl:variable>
                                            <a href="{$itemURL}">
                                                <xsl:value-of select="sitemap:loc" />
                                            </a>
                                        </td>
                                        <td>
                                            <xsl:value-of select="count(image:image)" />
                                        </td>
                                        <td>
                                            <xsl:value-of
                                                select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,5)),concat(' ', substring(sitemap:lastmod,20,6)))" />
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </xsl:if>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>