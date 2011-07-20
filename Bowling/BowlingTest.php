<?php
/**
 * Created by JetBrains PhpStorm.
 * User: erman
 * Date: 7/7/11
 * Time: 11:21 AM
 * To change this template use File | Settings | File Templates.
 */
 
class BowlingTest {

    /**
     * @return void
     */
    public function testSimpleGame()
    {
        $game = new Game();

        $game->addPin(7);

        $this->assertEqualsTo($game->getScore(), 7);
    }

    /**
     * @return void
     */
    public function testMaxPinGamerCanGetConditionStrike()
    {
        $game = new Game();
        
        $game->addPin(10);
        $game->addPin(4);
        $game->addPin(5);

        $this->assertEqualsTo($game->getScore(), 29);

    }

    /**
     * @return void
     */
    public function testMaxPinGamerCanGetConditionSpare()
    {
        $game = new Game();

        $game->addPin(4);
        $game->addPin(6);
        $game->addPin(5);
        $game->addPin(3);

        $this->assertEqualsTo($game->getScore(), 18);
    }

    /**
     * @return void
     */
    public function testMaxPinGamerCanGetConditionJustPoints()
    {
        $game = new Game();

        $game->addPin(3);
        $game->addPin(4);
        $game->addPin(5);
        $game->addPin(2);

        $this->assertEqualsTo($game->getScore(), 14);
    }

    /**
     * @return void
     */
    public function testGetPointAfterZeroPoint()
    {
        $game = new Game();

        $game->addPin(10);
        $game->addPin(0);
        $game->addPin(0);
        $game->addPin(3);
        $game->addPin(4);

        $this->assertEqualsTo($game->getScore(), 17);
    }

    /**
     * @return void
     */
    public function testGetPointAfterThreeStrike()
    {
        $game = new Game();

        $game->addPin(3);
        $game->addPin(4);
        $game->addPin(10);
        $game->addPin(10);
        $game->addPin(10);
        $game->addPin(10);
        $game->addPin(4);
        $game->addPin(3);

        $this->assertEqualsTo($game->getScore(), 118);
    }

    // exception'lar... yok 0 olamaz, string olamaz!!!!!!!!!!!!!!!!!!!!

    /**
     * @return closure
     */
    public function testIfGreaterThanTwelve()
    {
        try {
            $game = new Game();

            $game->addPin(12);
        }

        catch (InvalidArgumentException $expected) {
            return;
        }

        $this->fail('10dan buyuk olamazs');
    }

    /**
     * @return void
     */
    public function testIfPinIsNotInt()
    {
        try {
            $game = new Game();

            $game->addPin("erman");
        }

        catch {
            return;
        }

        $this->fail('pin degeri string vs olamaz');
    }

}