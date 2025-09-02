# Installation de GLPI sur une VM Debian

## Prérequis

- Installez une machine virtuelle sous Debian.
- Installez SSH sur la VM :
	```bash
	su -
	apt update && apt upgrade
	apt install ssh
	apt update && apt upgrade
	```
- Connectez-vous à la VM en SSH depuis votre machine physique pour faciliter les copier/coller.

## Procédure d'installation

1. **Connexion SSH à la VM**
	 ```bash
	 ssh login@adresse_ip
	 ```
2. **Passer en mode super utilisateur**
	 ```bash
	 su -
	 ```
3. **Créer le script d'installation**
	 - Créez un fichier `.sh` :
		 ```bash
		 nano nomdudocument.sh
		 ```
	 - Copiez le contenu du document `rootscriptglpi - update` dans ce fichier (clic droit pour coller).
	 - Personnalisez les 5 variables en haut du fichier selon vos besoins.
	 - Enregistrez avec `Ctrl + X`.

4. **Vérifier la création du fichier**
	 ```bash
	 ls
	 ```

5. **Rendre le script exécutable**
	 ```bash
	 chmod +x nomdudocument.sh
	 ```

6. **Exécuter le script**
	 ```bash
	 ./nomdudocument.sh
	 ```
	 Suivez les instructions affichées par le script.

7. **Vérification de l'installation**
	 - Ouvrez l'adresse IP de votre VM dans un navigateur web.
	 - La page GLPI doit s'afficher.

8. **Finaliser l'installation via l'interface web**
	 - Terminez la configuration de GLPI dans votre navigateur.

9. **Sécurisation post-installation**
	 - Supprimez le fichier d'installation :
		 ```bash
		 rm /var/www/glpi/install/install.php
		 ```

---

**Remarque :** Après l'ouverture de GLPI et l'affichage du tableau de bord, la suppression du fichier `install.php` est obligatoire pour sécuriser votre installation.
