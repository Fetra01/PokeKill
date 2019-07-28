<?php
    require_once('pokemon.php'); // require ma classe pokemon .............
    require_once('attack.php');
    require_once('combat.php');
    try{
        $base= new PDO('mysql:host=localhost;dbname=pokekill;charset=utf8','root','Adrar1112!',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
      }catch(Exception $e)   // on se con
        {
            die('erreur:').$e->getMessage();
        }
      //affiche un pokemon
      $user=$base->query('SELECT name,health,strength FROM pokemon WHERE  id_pokemon=1 ');//on selecte le pokemon
      $poke = $user->fetch();//on recoit la requete


      $pokes=new Pokemon($poke['name'],$poke['health'],$poke['strength']); // je cree mon pokemon avec les variables recu

          var_dump($pokes); // je teste ma variable
           echo 'Mon Pokemon est:' .$poke['name'].' a ' .$poke['health'].' de vie'.$poke['strength']. ' de force. '; // je l'affiche ;;;;;;;;

        echo "<br>";
        echo "<br>";

        //affiche attaque ------------------------------------------------
        //recuperation de la bdd
        $punch=$base->query('SELECT attack, damage FROM attack WHERE  id_attack=1 ');
          var_dump('lalala');
        $Poke = $punch->fetch();

      //l'appel de la class objet attack
      $poke1=new attack($Poke['attack'],$Poke['damage']);
      /*$poke1->setNameAttack($poke['attack']);
      $poke1->setDamage($poke['damage']);*/
      var_dump($poke1);
      echo $Poke['attack'], ' a ', $Poke['damage'];

      echo "<br>";
      echo "<br>";

        //deuxieme  idem que le premier ------------------------------------------------------------------------------
        $user=$base->query('SELECT name,health,strength FROM pokemon WHERE  id_pokemon=2 ');

        $poke = $user->fetch();
        $poke2=new Pokemon($poke['name'],$poke['health'],$poke['strength']);

            var_dump($poke2);
             echo 'Mon Pokemon est:' .$poke['name'].' a ' .$poke['health'].' de vie'.$poke['strength']. ' de force. ';

          echo "<br>";
          echo "<br>";

        $Combat = new combat($poke2,$poke);

        var_dump($Combat);
        function arene(){
          if($popke=$attaquant){
          
          }
        }


?>
