<?php

/*
 * Project: enlight-webfront
 * File: adminModule.php
 * Author: Alex Kersten
 * 
 * This module will handle administrative details of the Webfront. Not sure
 * quite what we want to be on this page but we'll see.
 */

class adminModule extends module {

    function __construct() {
        parent::__construct("<i class=\"icon-wrench\"></i> Admin", "adminModule");
    }

   /* function getInnerContent() {
        return '<h2>Policy Details</h2>
            <p>Manage API access and do other administrative things.</p>
            <h3>API Keys</h3>';
    }*/

}

?>
