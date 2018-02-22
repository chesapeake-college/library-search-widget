
<library-search-widget>
  <ul>
    <li><a href="#" onclick={ doTab } class={ active : is_onesearch }>OneSearch</a></li>
    <li><a href="#" onclick={ doTab } class={ active : is_catalog }>Catalog</a></li>
  </ul>

  <div if={ is_onesearch } class="tab">
    <form id="ebscohostCustomSearchBox" onsubmit="return ebscoHostSearchGo(this);" method="post">

      <input id="ebscohostwindow" type="hidden" value="0" name="ebscohostwindow">
      <input id="ebscohosturl" type="hidden" value="https://ccproxy.idm.oclc.org/login?url=https://search.ebscohost.com/login.aspx?direct=true&amp;site=eds-live&amp;scope=site&amp;type=0&amp;custid=s8994322&amp;groupid=main&amp;profid=eds&amp;mode=and&amp;lang=en&amp;authtype=ip,guest">
      <input id="ebscohostsearchsrc" type="hidden" value="db" name="ebscohostsearchsrc">
      <input id="ebscohostsearchmode" type="hidden" value="+" name="ebscohostsearchmode">
      <input id="ebscohostkeywords" type="hidden" name="ebscohostkeywords">
      <input class="searchfield" id="ebscohostsearchtext" type="text" value="Find scholarly articles, ebooks & more" size="55" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" name="ebscohostsearchtext">
      <input class="lrc_button" type="submit" value="Search">
      <div style="font-size:smaller;">
	        <input type="checkbox" checked="checked" id="chkFullText" name="chkFullText">
	        <label for="chkFullText" style="display:inline-block;">&nbsp;Full Text</label>
	        <input type="checkbox" id="chkPeerReviewed" name="chkPeerReviewed">
	        <label for="chkPeerReviewed" style="display:inline-block;">&nbsp;Peer Reviewed</label>
	        <input type="checkbox" id="chkCatalogOnly" name="chkCatalogOnly">
	        <label for"chkCatalogOnly" style="display:inline-block;">&nbsp;Catalog Only</label>
	    </div>

    </form>
    <p>
    	<a href="https://ccproxy.idm.oclc.org/login?url=https://search.ebscohost.com/login.aspx?direct=true&amp;site=eds-live&amp;scope=site&amp;type=1&amp;custid=s8994322&amp;groupid=main&amp;profid=eds&amp;mode=and&amp;lang=en&amp;authtype=ip,guest">+ Advanced Search</a>
    </p>
  </div>

  <div if={ is_catalog } class="tab">
    <form action="http://catalog.chesapeake.edu/view.aspx?" method="get" name="search" role="search">
      <!-- <label for="catalog-input" id="chescat-label">Find books, DVDs & more</label> -->
      <input class="searchfield" name="keyword" type="text" id="catalog-input" x-webkit-speech x-webkit-grammar="builtin:search" aria-labelledby="chescat-label" value="Find Books, DVDs, & More" onfocus="if(this.value==this.defaultValue)this.value='';" onblur="if(this.value=='')this.value=this.defaultValue;" />&nbsp;
      <input class="lrc_button" name="submit" type="submit" value="Search" title="Search for Books & Media" />&nbsp;
    </form>
    <p><a href="http://catalog.chesapeake.edu/search/default.aspx?type=Advanced">+ Advanced Search</a></p>
  </div>

  <script>
    this.is_catalog = false 
    this.is_onesearch = true

    doTab(e) {
      var tab = e.target.textContent.toString().toLowerCase()
      if (tab === 'catalog') {
        this.is_catalog = true
        this.is_onesearch = false
      } else {
        this.is_catalog = false
        this.is_onesearch = true
      }
    }
  </script>

  <style scoped>
    :scope ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
      border: 1px solid #3278E0;
      background-color: #eee;
      -webkit-border-radius: 4px 4px 0 0;
      -moz-border-radius: 4px 4px 0 0;
      border-radius: 4px 4px 0 0;
    }

    :scope div.tab {
      border: 1px solid brown;
      padding: 10px 12px;
      border: 1px solid #3278E0;
      border-top: none;
      -webkit-border-radius: 0 0 4px 4px;
      -moz-border-radius: 0 0 4px 4px;
      border-radius: 0 0 4px 4px;
    }

    :scope ul li {
      float: left;
    }

    :scope ul li a {
      display: inline-block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
      transition: 0.1s;
      font-size: 17px !important;
      font-weight: bold !important;
    }

    :scope ul li a:hover {
      background-color: deepskyblue;
      color: white !important;
      text-decoration: none !important;
    }

    :scope ul li a:focus, a.active {
      background-color: #3278E0;
      color: white !important;
    }

    :scope .lrc_button {
      -moz-box-shadow:inset 0px 1px 0px 0px #54a3f7;
      -webkit-box-shadow:inset 0px 1px 0px 0px #54a3f7;
      box-shadow:inset 0px 1px 0px 0px #54a3f7;
      background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #007dc1), color-stop(1, #0061a7));
      background:-moz-linear-gradient(top, #007dc1 5%, #0061a7 100%);
      background:-webkit-linear-gradient(top, #007dc1 5%, #0061a7 100%);
      background:-o-linear-gradient(top, #007dc1 5%, #0061a7 100%);
      background:-ms-linear-gradient(top, #007dc1 5%, #0061a7 100%);
      background:linear-gradient(to bottom, #007dc1 5%, #0061a7 100%);
      filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#007dc1', endColorstr='#0061a7',GradientType=0);
      background-color:#007dc1;
      -moz-border-radius:3px;
      -webkit-border-radius:3px;
      border-radius:3px;
      border:1px solid #124d77;
      display:inline-block;
      cursor:pointer;
      color:#ffffff;
      font-family:Arial;
      font-size:15px;
      padding:6px 24px;
      text-decoration:none;
      text-shadow:0px 1px 0px #154682;
    }
    :scope .lrc_button:hover {
      background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7), color-stop(1, #007dc1));
      background:-moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
      background:-webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
      background:-o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
      background:-ms-linear-gradient(top, #0061a7 5%, #007dc1 100%);
      background:linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
      filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7', endColorstr='#007dc1',GradientType=0);
      background-color:#0061a7;
    }
    :scope .lrc_button:active {
      position:relative;
      top:1px;
    }
    :scope .searchfield {
      width: 265px;
      font-family:Arial !important;
      font-size:15px !important;
      padding:6px 24px;
      border-radius:3px;
      text-decoration:none;
    }
  </style>

</library-search-widget>
