<?php
  class Pokemon{
    public  $namePokemon;
    public   $health;
    public   $strength;
    public   $attack  = array('nameAttack' => 'damage');

   public function __construct()
    {
      //$this->namePokemon = $name;
    }

    public function getNamePok()
    {
      return $this ->namePokemon;
    }
    public function setNamePok($name)
    {
      $this ->namePokemon = $name;
    }

    // Vie du Pokemon

    public function getVie()
    {
      return $this ->health;
    }
    public function setVie($Health){
      $this->health=$Health;
    }

    // Force du pokemon
    public function getForce()
    {
      return $this ->strength;
    }

    public function setForce($Strength){
      $this->strength=$Strength;
    }
    // Attaque du Pokemon

    public function getAttack()
    {
      return $this ->attack;
    }

    public function setAttack($attack){
      $this->Attack=$attack;
    }
  }
?>
