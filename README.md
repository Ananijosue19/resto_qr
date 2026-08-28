# Resto QR

Resto QR est une application Flutter moderne conçue pour digitaliser l'expérience de restauration. Elle permet aux clients de commander directement depuis leur table via un QR code et aux restaurateurs de gérer les commandes et le menu en temps réel.

## Fonctionnalités principales

### Côté Client
- Consultation d'un menu interactif avec catégories.
- Recherche de plats en temps réel.
- Gestion d'un panier d'achat dynamique.
- Suivi de l'état de la commande.
- Affichage des prix en Franc CFA (CFA).

### Côté Administration
- Dashboard de suivi des indicateurs clés (CA, nombre de commandes).
- Gestion des commandes en temps réel (Préparation, Service, Paiement).
- Gestion de la disponibilité des produits au menu.
- Interface de connexion sécurisée.

## Technologies utilisées

- Flutter : Framework de développement multiplateforme.
- Provider : Gestion de l'état global de l'application.
- FVM (Flutter Version Management) : Gestion rigoureuse de la version du SDK Flutter.
- Remix Icon : Bibliothèque d'icônes pour une interface moderne.

## Installation et configuration

Ce projet utilise FVM pour assurer la cohérence de la version du SDK entre les développeurs.

### Prérequis
- Flutter installé sur votre machine.
- FVM configuré (optionnel mais recommandé).

### Étapes d'installation
1. Cloner le dépôt :
   ```bash
   git clone https://github.com/Ananijosue19/resto_qr.git
   cd resto_qr
   ```

2. Installer la version de Flutter spécifiée :
   ```bash
   fvm install
   ```

3. Récupérer les dépendances :
   ```bash
   fvm flutter pub get
   ```

4. Lancer l'application :
   ```bash
   fvm flutter run
   ```

## Structure du projet

- lib/core : Contient les modèles de données, les providers de logique métier et les utilitaires.
- lib/presentation : Contient l'interface utilisateur (écrans et widgets réutilisables).
- lib/routes : Gestion centralisée de la navigation.

## Gestion des versions

La version du SDK Flutter utilisée pour ce projet est définie dans le fichier `.fvmrc`. Veuillez toujours préfixer vos commandes flutter par `fvm` pour garantir la compatibilité.
