# 🧹 purge.sh – Script de purge automatique d’un dossier temporaire

Ce script Bash est conçu pour **supprimer régulièrement le contenu d’un dossier temporaire** (par défaut `/tmp/test`) tout en **journalisant chaque opération** dans un fichier de log `/var/log/purge.log`.

---

## 🛠️ Fonctionnalités

- Vérifie si le dossier `/tmp/test` existe
- Liste les fichiers qui vont être supprimés
- Calcule la taille du dossier avant suppression
- Supprime récursivement tous les fichiers et sous-dossiers
- Recrée le dossier vide
- Enregistre toutes les opérations dans un fichier de log

---

## 📝 Exemple de log généré (`/var/log/purge.log`)

```
Suppression des fichiers de /tmp/test à date : sam. 29 mars 2025 01:56:25 CET
Fichiers supprimés
/tmp/test/fichier1
/tmp/test/fichier2
Taille supprimée 4,0K
Dossier /tmp/test recréé
```

---

## 📅 Automatisation avec `cron`

Le script peut être exécuté automatiquement via **`cron`**. Exemple de tâche planifiée pour lancer le script tous les jours à 2h du matin :

```bash
0 2 * * * /usr/local/bin/purge.sh
```

> Assurez-vous que le script est exécutable et que les droits sont suffisants pour écrire dans `/var/log`.

---

## ⚠️ Prérequis

- Le script doit être placé dans un dossier accessible, ex : `/usr/local/bin/purge.sh`
- Le fichier de log `/var/log/purge.log` doit être accessible en écriture (souvent nécessite `sudo`)
- Le cron doit être actif (`sudo systemctl start cron`)

---

## 📂 Arborescence

```
/usr/local/bin/purge.sh         # Script principal
/var/log/purge.log              # Log des suppressions
/tmp/test/                      # Dossier temporaire à purger
```

---

## ✍️ Auteur

[sekhmet0208] – Mars 2025
