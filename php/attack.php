<?php
class attack{

    private string $nameAttack;
    private int $damage;

    public function__construct(string $attack int $bobo){
      $this->$nameAttack=$attack;
      $this->$damage=$bobo;
    }
//name for attack string

    public function getNameAttack(){
      return $this->nameAttack;
    }

    public function setNameAttack(string $attack){
      $this->nameAttack=$attack;
    }

//damege integer

    public function getDamage(){
      return $this->damage;
    }

    public function setDamage(int $number){
      $this->damage=$number;
    }

}
?>
