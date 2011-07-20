<?php
/**
 * Created by JetBrains PhpStorm.
 * User: erman
 * Date: 7/1/11
 * Time: 12:15 PM
 * To change this template use File | Settings | File Templates.
 */

    include 'Soldier.php';
    include 'autoload.php';

    $sergent = new Sergent();
    $sergent->setAttackPower(5);

    $marine = new Marine();
    $marine->setAttackPower(10);

    // objeleri dump edelim

    print_r($sergent);

    echo "<br />";

    print_r($marine);

    echo "<hr>";

    // instanceof kullanımı

    var_dump($sergent instanceof Sergent);

    echo "-";

    var_dump($sergent instanceof ArmyInterface);

    echo "-";

    $sergent2 = new Sergent();

    var_dump($sergent2 instanceof NavyInterface);

    echo "-";

    echo "<hr>";

    // asker oldu mu?

    $isDied = new Sergent();

    echo $isDied->isSoldierDied($isDied);

    echo "<hr>";

    // askerler savassinlar bakalim

    $sergentWhoWillFight = new Sergent();

    echo $sergentWhoWillFight->fight($sergentWhoWillFight);

    echo $sergentWhoWillFight->isSoldierDied($sergentWhoWillFight);
        
    

    
