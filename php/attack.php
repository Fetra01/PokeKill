<?php


class attack{

    public $nameAttack;
    public $damage;

  public function __construct(string $attack, int $lose){
    $this->nameAttack=$attack;
    $this ->damage = $lose;
  }
//name for attack string

    public function getNameAttack(){
      return $this->nameAttack;
    }

    public function setNameAttack($attack){
      $this->nameAttack= $attack;
    }

//damege integer

    public function getDamage(){
      return $this-> damage;
    }

    public function setDamage($number){
      $this->damage= $number;
    }

}
?>
