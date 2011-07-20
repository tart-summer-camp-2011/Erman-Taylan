<?php
/**
 * Created by JetBrains PhpStorm.
 * User: erman
 * Date: 7/1/11
 * Time: 12:17 PM
 * To change this template use File | Settings | File Templates.
 */

// neden abstract class? çünkü, çünkü sadece parent class olarak kullanacağız, obje instantiate etmeyeceğiz...

abstract class SoldierAbstract
{
    protected $_attackPower;

    protected $_currentLife;

    function __construct()
    {
        $this->_currentLife = 100;
    }
    
    public function getAttackPower()
    {
        
    }

    public function getCurrentLife()
    {
        
    }
}