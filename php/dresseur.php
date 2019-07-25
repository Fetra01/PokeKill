<?php
class dresseur
{
  private INT $id_user;
  private STRING $nameDresseur;
  private STRING $namePokemon;

  public function__construct(string $name,string $pokemon)
  {
    $this->nameDresseur=$name;
    $this->namePokemon=$pokemon;
  }

  public function getNameDresseur()
  {
    return $this->nameDresseur;
  }

  public function setNameDresseur(string $name)
  {
    $this->nameDresseur=$name;
  }

  public function getNamePokemon(){
    return $this->$namePokemon;
  }

  public function setNamePokemon(string $pokemon){
    $this->namePokemon=$pokemon;
  }

}
?>
