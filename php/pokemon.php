<?php
  class pokemon{
    private   $namePokemon;
    private   $health;
    private   $strength;
    private   $attack;

    public function __construct(string $nom,int $life,int $power,array $kick)
    {
      $this -> namePokemon = $nom;
      $this -> health = $life;
      $this -> strength = $power;
      $this -> attack = $kick;
    }

    public function getNamePok()
    {
      return $this -> namePokemon;
    }
    public function setNamePok(string $nompok)
    {
      $this -> namePokemon = $nompok
    }

    // Vie du Pokemon

    public function getVie()
    {
      return $this -> vie;
    }

    // Force du pokemon
    public function getForce()
    {
      return $this -> force;
    }

    // Attaque du Pokemon

    public function getAttack()
    {
      return $this -> attack;
    }
  }
?>
