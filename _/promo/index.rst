Promoglouton
------------

Aide notre ami promoteur a manger tous les arbres. C'est un vrai glouton. Attention a ne pas te faire attraper pour
les habitants
zinzins qui surveille la quartier !

..  raw:: html

    <div id="shim">
        for font face
    </div>
    <style type="text/css">

        @font-face {
            font-family: 'BDCartoonShoutRegular';
            src: url('../../_static/BD_Cartoon_Shout-webfont.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }

        #pacman {
            // height:450px;
            width:342px;
            margin:20px auto;
        }

        #shim {
            font-family: BDCartoonShoutRegular;
            position:absolute;
            visibility:hidden
        }

        h1 {
            font-family: BDCartoonShoutRegular;
            text-align:center;
        }

        /* body { width:342px; margin:0px auto; font-family:sans-serif; } */
        /* a { text-decoration:none; } */
    </style>


    <div id="pacman">
        <!-- pacman zone -->
    </div>

    <script src="../../_static/pacman/pacman.js"></script>
    <script src="../../_static/modernizr-1.5.min.js"></script>
    <script>

        var el = document.getElementById("pacman");

        if (        Modernizr.canvas
                && Modernizr.localstorage
                && Modernizr.audio
                && (Modernizr.audio.ogg || Modernizr.audio.mp3)) {
            window.setTimeout(function () {
                PACMAN.init(el, "../../_static/promoglouton/");
            }, 0);
        } else {
            el.innerHTML = "Désolé, mais tu n'as pas un navigateur récent<br /><small>" +
                            "(firefox 3.6+, Chrome 4+, Opera 10+ and Safari 4+)</small>";
        }
    </script>

