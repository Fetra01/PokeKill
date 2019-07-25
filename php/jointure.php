<?php
  class jointure{
    private $pokemonChose;
    private $pokemonStat;
    private $user;

    public function __construct(string $chosePokemon, array $statPokemon,string $name )
    {
      $this -> pokemonChose = $chosePokemon;
      $this -> pokemonStat = $statPokemon;
      $this -> user = $name;
    }

    //le Users

    public function getUser()
    {
      return $this -> user;
    }
    public function setUser()
    {
      // code...
    }



    // choisir Pokemon
    public function getPokemonChose()
    {
      return $this -> pokemonChose;
    }
    public function setPokemonChose()
    {
      // code...
    }

    //Les caractéristiques du Pokemon
    public function getPokemonStat()
    {
      return $this -> pokemonStat;
    }
    public function setPokemonStat()
    {
      // code...
    }
}




?>
