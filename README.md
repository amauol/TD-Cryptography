# Reproduction des algorithmes de chiffrement simplifiés 📚

## 📋 Description

Ce projet/TD consiste en une suite de **chiffrements en C** réimplémentant les chiffrements les plus répandus (RSA,...). L'objectif est de comprendre en profondeur :

- 🧠 La logique des chiffrements
- 📂 Les opérations d'échange de clé
- 🔧 Les appels système bas niveau (read, write, open, close, brk/sbrk)
- 💾 La manipulation de structures de données (listes chaînées)

### 🎯 Objectifs pédagogiques

- Comprendre l'implémentation réelle de `malloc()`, `free()`, `printf()`, `fopen()`, etc.
- Maîtriser la gestion de buffers pour optimiser les I/O
- Développer une bibliothèque réutilisable et modulaire
- Approfondir la programmation système en C
- 
## ⚠️ Limitations connues

- Pas de support des formats complexes dans `mini_printf()` (seulement `%s`, `%d`)
- Allocateur mémoire basique (pas de coalescence des blocs libres)
- Pas de gestion multi-threading (pas thread-safe)
- Modes de fichiers limités ('r', 'w', 'a')

## 🛠️ Améliorations futures

- [ ] Implémentation de `mini_malloc()` et `mini_realloc()`
- [ ] Support complet du formatage dans `mini_printf()`
- [ ] Coalescence des blocs mémoire libres
- [ ] Ajout de `mini_fprintf()` et `mini_fscanf()`
- [ ] Tests unitaires automatisés
- [ ] Gestion des modes binaires pour les fichiers
- [ ] Optimisation de l'allocateur (Best Fit, Buddy System)

## 📚 Ressources

- Pages Wikipedia des divers chiffrements
- Entraide entre étudiants
- Cours de cryptographie

## 👤 Auteur

[@amauol](https://github.com/amauol)

Projet réalisé dans le cadre du module **Criptographie** à l'INSA Centre Val de Loire.

