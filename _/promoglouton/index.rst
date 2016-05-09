Promoglouton
------------


..  raw:: html

    <!--
    <img id="map-image" src="../../_static/promoglouton/images/promoglouton.png" />

        <img id="scream" width="220" height="277" src="../../_static/promoglouton/images/promoglouton.png" alt="The Scream">

        <canvas id="myCanvas" width="240" height="297" style="border:1px solid #d3d3d3;">
            Your browser does not support the HTML5 canvas tag.
        </canvas>

        <script>
        window.onload = function() {
            var c = document.getElementById("myCanvas");
            var ctx = c.getContext("2d");
            var img = document.getElementById("scream");
            ctx.drawImage(img, 20, 20, 50,30);
        }

    </script>
    -->





..  raw:: html


    <div id="promoglouton-zone">

        <div id="shim">
            for font face
        </div>
        <img id="tree-image" src="../../_static/promoglouton/images/tree.gif" />
        <style type="text/css">

            @font-face {
                font-family: 'BDCartoonShoutRegular';
                src: url('../../_static/BD_Cartoon_Shout-webfont.ttf') format('truetype');
                font-weight: normal;
                font-style: normal;
            }

            #pacman {
                // height:450px;
                width:684px;
                margin:20px auto;
                background-image: url("../../_static/promoglouton/images/level3.jpg")
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

        <script src="../../_static/promoglouton/pacman.js"></script>
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
    </div>


Aide notre ami promoteur a manger tous les arbres du terrain zinzin. C'est un vrai glouton ce promoteur !
Attention a ne pas te faire attraper pour les habitants zinzins. Heurseument ils ne sont pas bien malins
les habitants zinzins, ils ne te cherche pas mais font juste se promener dans le quartier. Le promoteur
a demander à 4 élus lulus de rester aux quatres coins du quartier. Si tu discute avec eux tu pourras
enfumer les élus, en tout cas pendant un certains temps.

Aide le promoteur glouton a bien gagner sa vie. Comme il est tres malin il en a trois !


======================== ==========
  Action                 Récompense
======================== ==========
arbre avalé              10 points
rencontre avec un élu    xxx points
habitant enfumé avalé    xxx points
======================== ==========

:version pillule=elus:
<
    Heureusement le promoteur glouton a des amis à la mairie. Il a demandé a quatre élus lulus de rester au
    quatre coins du quartier pour pour maintenir l'ordre. Chaque fois que promoglouton encontre un élus lulus
    celui-ci fais un discours qui hypnothyse tous les habitants. Pendant ce temps tu peux faire ce que tu veux
    et même avaler des habitants ! Mais attention, les habitants, quand ils se reveillent redeviennent méchants.
    Alors cours vite.
