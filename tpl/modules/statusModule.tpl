<script src="js/modules/statusModule2.js"></script>

<h2><abbr title="World in M&aacute;quina's Eyes">Welcome To Our World!</abbr></h2>
<p>This is the status page, where all relevant live statistics
    of the fountain and related software will be represented. These
    statistics are refreshed in real-time as the server finds out about
    changes, so what you're seeing here is a true reflection of the
    state of things, as far as the Webfront is concerned. Not to say that
    things couldn't seem fine here yet still be broken, though.</p>
<div class="well">
    <div class="row">
        <div class="span3">
            <dl class="dl-horizontal">
                <dt>Valve States</dt>
                <dd>
                    <div style="position: relative; height: 192px; width: 256px; background-image: url('img/fountainsmall.jpg'); border: 1px solid #CBB;">
                        <div id="innerFountainStatusTmpOffset" style="position: relative; top: -12px;">
                            <div id="innerFountainStatusVOffset" style="position: relative; left: 8px;">
                                <!-- Fountain status display (pay no attention to the hacky bitmasking behind the curtain) -->
                                <span class="label" style="position: absolute; left: 65px; top: 14px;" data-bind="css: {'label-info': (valveState() & 1) && !(restrictState() & 1), 'label-warning': restrictState() & 1}">V1</span>
                                <span class="label" style="position: absolute; left: 46px; top: 31px;" data-bind="css: {'label-info': (valveState() & 2) && !(restrictState() & 2), 'label-warning': restrictState() & 2}">V2</span>
                                <span class="label" style="position: absolute; left: 33px; top: 50px;" data-bind="css: {'label-info': (valveState() & 4) && !(restrictState() & 4), 'label-warning': restrictState() & 4}">V3</span>
                                <span class="label" style="position: absolute; left: 23px; top: 70px;" data-bind="css: {'label-info': (valveState() & 8) && !(restrictState() & 8), 'label-warning': restrictState() & 8}">V4</span>
                                <span class="label" style="position: absolute; left: 17px; top: 90px;" data-bind="css: {'label-info': (valveState() & 16) && !(restrictState() & 16), 'label-warning': restrictState() & 16}">V5</span>
                                <span class="label" style="position: absolute; left: 17px; top: 110px;" data-bind="css: {'label-info': (valveState() & 32) && !(restrictState() & 32), 'label-warning': restrictState() & 32}">V6</span>
                                <span class="label" style="position: absolute; left: 23px; top: 130px;" data-bind="css: {'label-info': (valveState() & 64) && !(restrictState() & 64), 'label-warning': restrictState() & 64}">V7</span>
                                <span class="label" style="position: absolute; left: 33px; top: 150px;" data-bind="css: {'label-info': (valveState() & 128) && !(restrictState() & 128), 'label-warning': restrictState() & 128}">V8</span>
                                <span class="label" style="position: absolute; left: 46px; top: 169px;" data-bind="css: {'label-info': (valveState() & 256) && !(restrictState() & 256), 'label-warning': restrictState() & 256}">V9</span>
                                <span class="label" style="position: absolute; left: 63px; top: 186px;" data-bind="css: {'label-info': (valveState() & 512) && !(restrictState() & 512), 'label-warning': restrictState() & 512}">V10</span>

                                <span class="label" style="position: absolute; left: 85px; top: 150px;" data-bind="css: {'label-info': (valveState() & 1024) && !(restrictState() & 1024), 'label-warning': restrictState() & 1024}">VC</span>
                                <span class="label" style="position: absolute; left: 80px; top: 168px;" data-bind="css: {'label-info': (valveState() & 2048) && !(restrictState() & 2048), 'label-warning': restrictState() & 2048}">VR</span>
                            </div>
                            <div id="innerFountainStatusHOffset" style="position: relative; top: 2px; left: -4px;">
                                <span class="label" style="position: absolute; left: 120px; top: 35px;" data-bind="css: {'label-info': (valveState() & 4096) && !(restrictState() & 4096), 'label-warning': restrictState() & 4096}">H1</span>
                                <span class="label" style="position: absolute; left: 145px; top: 40px;" data-bind="css: {'label-info': (valveState() & 8192) && !(restrictState() & 8192), 'label-warning': restrictState() & 8192}">H2</span>
                                <span class="label" style="position: absolute; left: 168px; top: 50px;" data-bind="css: {'label-info': (valveState() & 16384) && !(restrictState() & 16384), 'label-warning': restrictState() & 16384}">H3</span>
                                <span class="label" style="position: absolute; left: 183px; top: 67px;" data-bind="css: {'label-info': (valveState() & 32768) && !(restrictState() & 32768), 'label-warning': restrictState() & 32768}">H4</span>
                                <span class="label" style="position: absolute; left: 190px; top: 85px;" data-bind="css: {'label-info': (valveState() & 65536) && !(restrictState() & 65536), 'label-warning': restrictState() & 65536}">H5</span>
                                <span class="label" style="position: absolute; left: 185px; top: 103px;" data-bind="css: {'label-info': (valveState() & 131072) && !(restrictState() & 131072), 'label-warning': restrictState() & 131072}">H6</span>
                                <span class="label" style="position: absolute; left: 178px; top: 121px;" data-bind="css: {'label-info': (valveState() & 262144) && !(restrictState() & 262144), 'label-warning': restrictState() & 262144}">H7</span>
                                <span class="label" style="position: absolute; left: 168px; top: 138px;" data-bind="css: {'label-info': (valveState() & 524288) && !(restrictState() & 524288), 'label-warning': restrictState() & 524288}">H8</span>
                                <span class="label" style="position: absolute; left: 154px; top: 155px;" data-bind="css: {'label-info': (valveState() & 1048576) && !(restrictState() & 1048576), 'label-warning': restrictState() & 1048576}">H9</span>
                                <span class="label" style="position: absolute; left: 137px; top: 173px;" data-bind="css: {'label-info': (valveState() & 2097152) && !(restrictState() & 2097152), 'label-warning': restrictState() & 2097152}">H10</span>

                                <span class="label" style="position: absolute; left: 130px; top: 138px;" data-bind="css: {'label-info': (valveState() & 4194304) && !(restrictState() & 4194304), 'label-warning': restrictState() & 4194304}">HC</span>
                                <span class="label" style="position: absolute; left: 130px; top: 155px;" data-bind="css: {'label-info': (valveState() & 8388608) && !(restrictState() & 8388608), 'label-warning': restrictState() & 8388608}">HR</span>
                            </div>                        
                        </div>
                    </div>
                    <span class="label">Idle</span><span class="label label-info">Active</span><span class="label label-warning">Disabled</span>
                </dd>

                <br />

                <dt>Server State</dt>
                <dd>
                    <span class="label label-inverse" data-bind="text: fountainState"></span>
                </dd>




            </dl>

        </div>
        <div class="span8">


            <iframe id="forecast_embed" style="position: relative; left: 216px;" type="text/html" frameborder="0" height="245" width="100%"
                    src="http://forecast.io/embed/#lat=43.0208&lon=-89.3600&name=Madison"> </iframe>
            <!--
            <dl class="dl-horizontal" style="position: relative; left: 240px;">
                <dt>Weather in Madison:</dt>
                <dd><span id="weatherType">Loading</span> <span id="weatherTemp">weather...</span></dd>
          
                <script type="text/javascript">

                </script>

            </dl>-->

        </div>
    </div>
</div>


<!-- LMOC -->
<h3>Manual Override <span class="muted">(LMOC 2.0)</span></h3>
<div class="well">
    <p>
        This is a high-priority manual control for the valves.
        Enabling this will immediately invalidate outstanding API
        authorizations and the server will not grant new API access
        until manual intervention is disabled.
    </p>
    <p style="text-align:center;" data-bind="style: {'display': LMOC() ? 'none' : 'block'}">
        <a href="#" onclick="requestOverride();
                return false;" class="btn btn-warning">
            Enable Override
        </a>
    </p>

    <table class="table" data-bind="style: {'display': LMOC() ? 'table' : 'none'}">
        <tr>
            <th>Vertical</th>
            <td>
                <a href="#" onclick="toggleValve(1);
                return false;" class="btn">
                    V1
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(2);
                return false;" class="btn">
                    V2
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(4);
                return false;" class="btn">
                    V3
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(8);
                return false;" class="btn">
                    V4
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(16);
                return false;" class="btn">
                    V5
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(32);
                return false;" class="btn">
                    V6
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(64);
                return false;" class="btn">
                    V7
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(128);
                return false;" class="btn">
                    V8
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(256);
                return false;" class="btn">
                    V9
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(512);
                return false;" class="btn">
                    V10
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(1024);
                return false;" class="btn">
                    VC
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(2048);
                return false;" class="btn">
                    VR
                </a>
            </td>
        </tr>


        <tr>
            <th>Horizontal</th>
            <td>
                <a href="#" onclick="toggleValve(4096);
                return false;" class="btn">
                    H1
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(8192);
                return false;" class="btn">
                    H2
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(16384);
                return false;" class="btn">
                    H3
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(32768);
                return false;" class="btn">
                    H4
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(65536);
                return false;" class="btn">
                    H5
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(131072);
                return false;" class="btn">
                    H6
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(262144);
                return false;" class="btn">
                    H7
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(524288);
                return false;" class="btn">
                    H8
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(1048576);
                return false;" class="btn">
                    H9
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(2097152);
                return false;" class="btn">
                    H10
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(4194304);
                return false;" class="btn">
                    HC
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleValve(8388608);
                return false;" class="btn">
                    HR
                </a>
            </td>
        </tr>
    </table>
</div>


<!-- Restricted valves -->
<h3>Valve Restrictions</h3>
<div class="well">
    <p>
        Sometimes valves misbehave and need to be disabeld. If a
        valve is disabled here (indicated on the above status
        diagram), it will not be able to be actuated by the server
        in any manner (not even manual override). Click a valve name
        to toggle it between enabled and disabled.
    </p>
    <table class="table">
        <tr>
            <th>Vertical</th>
            <td>
                <a href="#" onclick="toggleRestrict(1);
                return false;" class="btn">
                    V1
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(2);
                return false;" class="btn">
                    V2
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(4);
                return false;" class="btn">
                    V3
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(8);
                return false;" class="btn">
                    V4
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(16);
                return false;" class="btn">
                    V5
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(32);
                return false;" class="btn">
                    V6
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(64);
                return false;" class="btn">
                    V7
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(128);
                return false;" class="btn">
                    V8
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(256);
                return false;" class="btn">
                    V9
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(512);
                return false;" class="btn">
                    V10
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(1024);
                return false;" class="btn">
                    VC
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(2048);
                return false;" class="btn">
                    VR
                </a>
            </td>
        </tr>


        <tr>
            <th>Horizontal</th>
            <td>
                <a href="#" onclick="toggleRestrict(4096);
                return false;" class="btn">
                    H1
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(8192);
                return false;" class="btn">
                    H2
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(16384);
                return false;" class="btn">
                    H3
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(32768);
                return false;" class="btn">
                    H4
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(65536);
                return false;" class="btn">
                    H5
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(131072);
                return false;" class="btn">
                    H6
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(262144);
                return false;" class="btn">
                    H7
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(524288);
                return false;" class="btn">
                    H8
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(1048576);
                return false;" class="btn">
                    H9
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(2097152);
                return false;" class="btn">
                    H10
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(4194304);
                return false;" class="btn">
                    HC
                </a>
            </td>
            <td>
                <a href="#" onclick="toggleRestrict(8388608);
                return false;" class="btn">
                    HR
                </a>
            </td>
        </tr>
    </table>
</div>