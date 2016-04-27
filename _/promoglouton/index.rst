Promoglouton
------------

Aide notre ami promoteur a manger tous les arbres du terrain zinzin. C'est un vrai glouton ce promoteur !
Attention a ne pas te faire attraper pour les habitants zinzins qui se promènent dans le quartier. Ils sont
fous ces habitants zinzins, mais il ne sont pas bien malins, il font juste se promener.
Guide le promoteur glouton, fait vite, et ce sera **10 points pour chaque arbre avalé**.

**comportement "pillules"** a adapter selon possibilité les redessiner en phantomes.

:version pillule=?:
    Tu te demandes où sont les élus lulus ? Ils sont pas là la pour t'aider. Ils ont vendu le terrain pour avoir
    des sous et c'est tout. En fait certains ne connaissaient même pas le terrain, alors...
    Oublie les, tu ne peux pas compter sur eux. Aide simplement le promoteur glouton à manger le maximum d'arbres.

:version pillule=elus:

    Heureusement le promoteur glouton a des amis à la mairie. Il a demandé a quatre élus lulus de rester au
    quatre coins du quartier pour pour maintenir l'ordre. Chaque fois que promoglouton encontre un élus lulus
    celui-ci fais un discours qui hypnothyse tous les habitants. Pendant ce temps tu peux faire ce que tu veux
    et même avaler des habitants ! Mais attention, les habitants, quand ils se reveillent redeviennent méchants.
    Alors cours vite.


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

