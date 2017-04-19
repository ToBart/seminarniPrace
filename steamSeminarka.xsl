<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
  <h1>Steam App</h1>
   <h2>Accounts</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Steam ID</th>
        <th style="text-align:center">First name</th>
        <th style="text-align:center">Last name</th>
        <th style="text-align:center">Sex</th>
        <th style="text-align:center">Birthdate</th>
        <th style="text-align:center">Account name</th>
        <th style="text-align:center">Email</th>
        <th style="text-align:center">Mobile number</th>
        <th style="text-align:center">Country</th>
        <th style="text-align:center">Account level</th>
        <th style="text-align:center">Friends</th>
        <th style="text-align:center">Member since</th>
        <th style="text-align:center">VAC banned</th>
        <th style="text-align:center">Trade banned</th>
        <th style="text-align:center">Community ID</th>
      </tr>
    <xsl:for-each select="steamApp/steam_accounts/account">
      <tr>
        <td><xsl:value-of select="@id"/></td>
        <td><xsl:value-of select="first_name"/></td>
        <td><xsl:value-of select="last_name"/></td>
        <td><xsl:value-of select="sex"/></td>
        <td><xsl:value-of select="birthdate"/></td>
        <td><xsl:value-of select="account_name"/></td>
        <td><xsl:value-of select="email"/></td>
        <td><xsl:value-of select="mobile_number"/></td>
        <td><xsl:value-of select="country"/></td>
        <td><xsl:value-of select="account_level"/></td>
        <td><xsl:value-of select="friends"/></td>
        <td><xsl:value-of select="member_since"/></td>
        <td><xsl:value-of select="VAC_ban"/></td>
        <td><xsl:value-of select="trade_ban"/></td>
        <td><xsl:value-of select="community_ID"/></td>
      </tr>
    </xsl:for-each>
    </table>
   <h2>Games</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Name</th>
        <th style="text-align:center">Price</th>
        <th style="text-align:center">Genre</th>
        <th style="text-align:center">Number of DLCs</th>
        <th style="text-align:center">Rating (1-5)</th>
        <th style="text-align:center">Copies sold</th>
        <th style="text-align:center">Discount</th>
        <th style="text-align:center">Price after discount</th>
      </tr>
    <xsl:for-each select="steamApp/games/game">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/> €</td> 
        <td><xsl:value-of select="genre"/></td> 
        <td><xsl:value-of select="number_of_DLC"/></td>
        <td><xsl:value-of select="ratings"/></td>
        <td><xsl:value-of select="copies_sold"/></td>
        <td><xsl:value-of select="discount"/> %</td>
        <td><xsl:value-of select="sale_price"/> €</td>
      </tr>
    </xsl:for-each>
    </table>
  <h2>Languages of games</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Name</th>
        <th style="text-align:center" colspan="2">English</th>        
        <th style="text-align:center" colspan="2">German</th>        
        <th style="text-align:center" colspan="2">French</th>   
        <th style="text-align:center" colspan="2">Russian</th>       
        <th style="text-align:center" colspan="2">Czech</th>        
        <th style="text-align:center" colspan="2">Korean</th>
      </tr>
    <xsl:for-each select="steamApp/games/game">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="languages/English"/></td>
        <td><xsl:value-of select="languages/English/@type"/></td>
        <td><xsl:value-of select="languages/German"/></td>
        <td><xsl:value-of select="languages/German/@type"/></td>
        <td><xsl:value-of select="languages/French"/></td>
        <td><xsl:value-of select="languages/French/@type"/></td>
        <td><xsl:value-of select="languages/Russian"/></td>
        <td><xsl:value-of select="languages/Russian/@type"/></td>
        <td><xsl:value-of select="languages/Czech"/></td>
        <td><xsl:value-of select="languages/Czech/@type"/></td>
        <td><xsl:value-of select="languages/Korean"/></td>
        <td><xsl:value-of select="languages/Korean/@type"/></td>      
      </tr>
    </xsl:for-each>  
    </table>
    <h2>Sale</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Name</th>
        <th style="text-align:center">Standard price</th>
        <th style="text-align:center">Discount</th>
        <th style="text-align:center">Price after discount</th>
      </tr>
    <xsl:for-each select="steamApp/games/game">
    <xsl:if test="discount &gt; 0">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/> €</td> 
        <td><xsl:value-of select="discount"/> %</td>
        <td><xsl:value-of select="sale_price"/> €</td>     
      </tr>
    </xsl:if>
    </xsl:for-each>  
    </table>
    <h2>Steam Machines</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Name</th>
        <th style="text-align:center">Company</th>
        <th style="text-align:center">Price</th>
        <th style="text-align:center" colspan="4">Specifications</th>
      </tr>
    <xsl:for-each select="steamApp/steam_HW/steam_machines/steam_machine">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="company"/></td> 
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="specs/cpu"/></td>
        <td><xsl:value-of select="specs/memory"/></td>
        <td><xsl:value-of select="specs/hdd"/></td>
        <td><xsl:value-of select="specs/gpu"/></td>     
      </tr>
    </xsl:for-each>  
    </table>
    <h2>Steam Machines in store</h2>
    <table border="1">
      <tr bgcolor="#00cc00">
        <th style="text-align:center">Name</th>
        <th style="text-align:center">Company</th>
        <th style="text-align:center">Price</th>
        <th style="text-align:center">CPU</th>
        <th style="text-align:center">Memory</th>
        <th style="text-align:center">HDD</th>
        <th style="text-align:center">GPU</th>
      </tr>
    <xsl:for-each select="steamApp/steam_HW/steam_machines/steam_machine">
    <xsl:if test="not(price = 'coming soon')">
      <tr>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="company"/></td> 
        <td><xsl:value-of select="price"/></td>
        <td><xsl:value-of select="specs/cpu"/></td>
        <td><xsl:value-of select="specs/memory"/></td>
        <td><xsl:value-of select="specs/hdd"/></td>
        <td><xsl:value-of select="specs/gpu"/></td>      
      </tr>
    </xsl:if>
    </xsl:for-each>  
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

