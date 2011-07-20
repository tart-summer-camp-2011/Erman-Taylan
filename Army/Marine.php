<?php
/**
 * Created by JetBrains PhpStorm.
 * User: erman
 * Date: 7/1/11
 * Time: 12:12 PM
 * To change this template use File | Settings | File Templates.
 */
 
class Marine extends SoldierAbstract implements ArmyInterface, NavyInterface
{
    public function setAttackPower($value)
    {
        $this->_attackPower = $value + 1;
    }

    public function isSoldierDied($sergent)
    {
        if($this->_currentLife < 0) {
            echo "asker olmus";
            echo " - ";
            echo $this->_currentLife;
        }
        else if($this->_currentLife < 30) {
            echo "can cekisiyor";
            echo " - ";
            echo $this->_currentLife;
        }
        else {
            echo "durumu iyi";
            echo " - ";
            echo $this->_currentLife;
        }
    }

    public function fight($marine)
    {
        $this->_currentLife = $this->_currentLife - 10;
    }
}