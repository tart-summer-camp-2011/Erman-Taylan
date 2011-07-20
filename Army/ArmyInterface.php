<?php
/**
 * Created by JetBrains PhpStorm.
 * User: erman
 * Date: 7/1/11
 * Time: 12:13 PM
 * To change this template use File | Settings | File Templates.
 */
 
interface ArmyInterface
{
    public function setAttackPower($value);

    public function isSoldierDied($sergent);

    public function fight($sergent);
}