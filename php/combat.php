<?php
      class combat{

      private  $pokemon1;
      private  $pokemon2;

      function __construct($attaquant,$victim)
      {
        $this->pokemon1=$attaquant;
        $this->pokemon2=$victim;
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

      public function gainxp($xp){
          $this->xp=$xp+1;
          return $xp;
      }

      public function hit(Attack $attack,$victim)
      {

        $victim->health -= $this->damages;
        $this->gainXp();
        return $xp ;
        return $health;

      }

      public function die($health,$damage){
        if($this->$health <= 0){
          echo $this->victim ."died!!" ;
        }else{
          $health=$health-$damage;
          return $health;
      }
    }
  }
?>
