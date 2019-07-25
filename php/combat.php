<?php
    /**
     *
     */
    class combat{

      private string  $pokemon1;
      private string  $pokemon2;
      private string  $nameAttack;
      private int  $damage;


      function __construct($attaquant,$victim,$attack,$bobo)
      {
        $this->pokemon1=$attaquant;
        $this->pokemon2=$victim;
        $this->nameAttack=$attack;
        $this->damage=$bobo;
      }

      public function getPokemon1(){
        return $this->Pokemon1;
      }

      public function setPokemon1(string $attaquant){
        $this->pokemon1=$attaquant;
      }

      public function getPokemon2(){
        return $this->Pokemon2;
      }

      public function setPokemon2(string $victim){
        $this->pokemon2=$victim;
      }

      public function getNameAttack(){
        return $this->nameAttack;
      }

      public function setNameAttack(string $attack){
        $this->nameAttack=$attack;
      }

      public function getDamage(){
        return $this->damage;
      }

      public function setDamage(int $bobo){
        $this->damage=$bobo;
      }

    }

?>
