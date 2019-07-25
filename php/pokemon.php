<?php
  class pokemon{
    private  STRING $namePokemon;
    private  INT $vie;
    private  INT $force;
    private   $attack  = array('nameAttack' => 'damage');

    public function __construct($nom)
    {
      $this -> namePokemon = $nom;
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
