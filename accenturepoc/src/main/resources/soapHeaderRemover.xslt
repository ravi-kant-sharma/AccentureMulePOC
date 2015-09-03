<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:a="http://rp.baml.com/data/GePaymentsRequestV001">
	<xsl:template match="/">
	 <BankResponse>
		<accounts>
			<xsl:for-each select="//a:Account">
				<account>
					<accountNumber>
						<xsl:value-of select="a:AccountNumber" />
					</accountNumber>
					<accountLevel>
						<xsl:value-of select="a:AccountIdLevel" />
					</accountLevel>
					<accountType>
						<xsl:value-of select="a:AccountIdType" />
					</accountType>
				</account>
			</xsl:for-each>
		</accounts>
	</BankResponse>
	</xsl:template>
</xsl:stylesheet>