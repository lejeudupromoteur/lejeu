Quiz script tests
=================

.. raw::   html

    <script src="../../_static/quiz/quiz.js"  type="text/javascript"></script>
    <div class="lueckentext-quiz" lang="fr">
        <p>Dormir est un verbe du <strong>troisième</strong> groupe.</p>
    </div>

Listes de catégories
--------------------

..  raw::   html

    <div class="zuordnungs-quiz" lang="fr">
    <table>
    <tr>
    <td>MAJ</td>
    <td><img src="../../_static/quizscript/images/Selection_759.jpg" alt="Poire" /></td>
    <td><img src="../../_static/quizscript/images/Selection_760.jpg" alt="Poire" /></td>
    <td><img src="../../_static/quizscript/images/Selection_761.jpg" alt="Poire" /></td>
    </tr>
    <tr>
    <td>min</td>
    <td>a</td>
    <td>b</td>
    <td>c</td>
    </tr>
    </table>
    </div>


La solution ci-dessous ne marche pas car la structure générée ne va pas


..  rst-class:: zuordnungs-quiz

    ========== ========= ========
        a          b           c
        e          f        g
    ========== ========= ========

Autre essai, ne marche pas non plus

..  rst-class:: zuordnungs-quiz

    test par


    ..  list-table::
        :class: zuordnungs-quiz

        *
            - a
            - b
            - c
        *
            - d
            - e
            - f
