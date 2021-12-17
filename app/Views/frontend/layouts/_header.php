<div id="header">
    <div id="headerContent">

        <script type="text/javascript">
            var prevId = 1;
            var prevParent = null;
            var wheel;

            function showMenu() {
                var menu = document.getElementById("menuResp");
                var mask = document.getElementById("darkMask");
                var lang = document.getElementById("langListResp");

                if (menu.style.right == "0px") {
                    menu.style.right = "-100%";
                    mask.style.opacity = "0";
                    setTimeout(function() {
                        mask.style.display = "none";
                    }, 300);
                    document.body.className = null;
                    lang.style.display = "none";
                } else {
                    menu.style.right = "0px";
                    mask.style.display = "block";
                    setTimeout(function() {
                        mask.style.opacity = "0.5";
                    }, 0);
                    document.body.className = "stop-scrolling";
                }
            }

            function showSubMenu(id, parent) {
                var menu = document.getElementById(id);
                var prev = document.getElementById(prevId);
                var arr = parent.getElementsByClassName("menuItemArrow")[0];
                var prevArr = null;

                if (prevParent != null) {
                    prevArr = prevParent.getElementsByClassName("menuItemArrow")[0];
                }

                if (getComputedStyle(menu).height == "0px") {
                    prev.style.transition = "all 0.3s";
                    prev.style.height = "0px";
                    prevId = id;
                    prevParent = parent;
                    menu.style.transition = "all 0.3s";
                    menu.style.height = menu.scrollHeight + "px";

                    if (prevArr != null) {
                        prevArr.style.transform = "rotate(0deg)";
                    }

                    arr.style.transform = "rotate(180deg)";
                } else {
                    menu.style.transition = "all 0.3s";
                    menu.style.height = "0px";
                    arr.style.transform = "rotate(0deg)";
                }
            }

            function showLangResp() {
                var menu = document.getElementById("langListResp");

                if (menu.style.display == "block") {
                    menu.style.display = "none";
                } else {
                    menu.style.display = "block";
                }
            }
        </script>
        <script>
            function showLang() {
                var menu = document.getElementById("langList");

                if (menu.style.display == "block") {
                    menu.style.display = "none";
                } else {
                    menu.style.display = "block";
                }
            }

            function hideLang() {
                var menu = document.getElementById("langList");
                menu.style.display = "none";
            }
        </script>
        <div id="menuIcon" onmousedown="showMenu()">
            <div class="menuIconLine"></div>
            <div class="menuIconLine"></div>
            <div class="menuIconLine"></div>
        </div>

        <div id="headerLogo">
            <a id="headerInstance_hlLogo" href="<?= base_url() ?>"><img src="<?= base_url("/assets/images/logo.png") ?>" alt="" style="border-width:0px;"></a>
        </div>

        <div id="headerStadaLogo">
            <a href="https://www.stada.com/" target="_blank">
                <img src="<?= base_url("/assets/images/Stada-logo.jpg") ?>">
            </a>
        </div>

        <div id="headerLang">
            <div onmousedown="showLang()">
                <?php if (current_language() == "en") : ?>
                    <span class="lang">
                        <img id="headerInstance_imgLang" src="<?= base_url("/assets/images/en-GB.svg") ?>" style="border-width:0px;">
                        <span id="headerInstance_lblLang">EN</span>
                    </span>
                <?php else : ?>
                    <span class="lang">
                        <img id="headerInstance_imgLang" src="<?= base_url("/assets/images/vi-vn.svg") ?>" style="border-width:0px;">
                        <span id="headerInstance_lblLang">VI</span>
                    </span>
                <?php endif ?>
            </div>
            <div id="langList">
                <?php if (current_language() != "en") : ?>
                    <a href="<?= base_url("lang/en") ?>">
                        <div class="langListItem">
                            <img src="<?= base_url("/assets/images/en-GB.svg") ?>" width="20">
                            EN
                        </div>
                    </a>
                <?php endif ?>


                <?php if (current_language() != "vi") : ?>
                    <a href="<?= base_url("lang/vi") ?>">
                        <div class="langListItem">
                            <img src="<?= base_url("/assets/images/vi-vn.svg") ?>" width="20">
                            VI
                        </div>
                    </a>
                <?php endif ?>
            </div>
        </div>

        <div id="headerSearch">
            <form class="search  flex  align-center" action="/search" method="get">
                <input class="search__input  f6  fw4  ph4  mr3  bg-white  ba  bc-light-silver  br-pill" type="search" name="t" placeholder="Search" style="min-width: 300px; min-height: 50px;outline: none;border-radius: 100px;padding: 0px 30px;vertical-align: middle;display: inline-block;border: 1px solid gray;">
                <button class="btn  btn-search  pa0  bg-transparent  bn" type="button" style="background: transparent;border: 0;vertical-align: middle;">
                    <img src="<?= base_url("/assets/images/ui-search.svg") ?>" alt="Search">
                </button>
            </form>
        </div>

        <div class="cleaner"></div>
    </div>
</div>



<div id="menu">
    <div id="menuContent">
        <ul id="uppermenu">
            <?php foreach ($list_menu as $row) : ?>
                <li>
                    <a href="<?= $row->link ?>"><?= $row->{pick_language($row, 'name_')}  ?></a>
                </li>
            <?php endforeach ?>
        </ul>
        <div class="cleaner"></div>
    </div>

    <?= view_cell("\App\Libraries\HeaderWidget::submenu") ?>


</div>


<div id="menuResp">
    <div id="menuRespHeader">
        <div id="langMenuResp" onmousedown="showLangResp()">
            <?php if (current_language() == "en") : ?>
                <span class="lang">
                    <img id="menuRespInstance_imgLang" src="<?= base_url("/assets/images/en-GB.svg") ?>" style="border-width:0px;">
                    <span id="menuRespInstance_lblLang">EN</span>
                </span>
            <?php else : ?>
                <span class="lang">
                    <img id="menuRespInstance_imgLang" src="<?= base_url("/assets/images/vi-vn.svg") ?>" style="border-width:0px;">
                    <span id="menuRespInstance_lblLang">VI</span>
                </span>
            <?php endif ?>
        </div>
        <div class="cleaner"></div>

        <div id="langListResp">
            <?php if (current_language() != "en") : ?>
                <a href="<?= base_url("lang/en") ?>">
                    <div class="langItem">
                        <img src="<?= base_url("/assets/images/en-GB.svg") ?>">
                        EN
                    </div>
                </a>
            <?php endif ?>

            <?php if (current_language() != "vi") : ?>
                <a href="<?= base_url("lang/vi") ?>">
                    <div class="langItem">
                        <img src="<?= base_url("/assets/images/vi-vn.svg") ?>">
                        VI
                    </div>
                </a>
            <?php endif ?>



        </div>

        <div id="closeMenu" onmousedown="showMenu()">
            <div class="closeMenuLine1"></div>
            <div class="closeMenuLine2"></div>
        </div>
    </div>
    <?php $key = 0; ?>
    <?php foreach ($list_menu as $row) : ?>

        <?php $key++ ?>
        <div class="menuRespItem" onmousedown="showSubMenu('<?= $key ?>', this)">
            <a href="<?= $row->link ?>"><?= $row->{pick_language($row, 'name_')}  ?></a>
            <div class="menuItemArrow">
                <?php if (!empty($row->child)) : ?>
                    <span id="menuRespInstance_rptMenu_ctl01_lblArrow">▾</span>
                <?php endif ?>
            </div>
        </div>
        <div id="<?= $key ?>" class="subMenuResp">

            <?php foreach ($row->child as $row2) : ?>
                <div class="menuRespSubitem">
                    <a href="<?= $row2->link ?>" class="nav-top-link"><?= $row2->{pick_language($row2, 'name_')}  ?></a>
                </div>
            <?php endforeach ?>
        </div>
    <?php endforeach ?>
</div>

<div id="darkMask" onmousedown="showMenu()">

</div>