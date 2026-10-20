# Mission : Rédiger un chapitre de mathématiques en LaTeX

Rédige un chapitre complet sur **xxxxxxxxxxxxxxxxxx**, à partir des PDF fournis, directement intégrable dans mon polycopié.

## 1. Analyse obligatoire des fichiers

Avant toute rédaction, suis cet ordre :

1. **Inspecte `poly.cls`** pour identifier les environnements personnalisés, leurs arguments, les macros disponibles et les conventions LaTeX.
2. Analyse le chapitre modèle, s’il est fourni, pour reproduire son style, sa structure et son niveau de détail.
3. Lis attentivement les PDF pour relever les définitions, théorèmes, hypothèses, démonstrations, méthodes, exemples et notations pertinents.
4. Recoupe les sources et construis un plan pédagogique cohérent avant de rédiger.

Ne commence jamais la rédaction avant d’avoir analysé les fichiers nécessaires.

## 2. Exactitude mathématique

Les PDF constituent les sources mathématiques de référence. N’ajoute aucune notion ou aucun résultat issu de connaissances extérieures, sauf déduction élémentaire rigoureuse ou ajout strictement nécessaire à la compréhension.

- Ne fabrique ni définition, ni formule, ni propriété, ni démonstration.
- Respecte toutes les hypothèses et conditions d’application des résultats.
- Distingue rigoureusement implications, réciproques et équivalences.
- Ne présente jamais comme démontré un résultat qui ne l’est pas.
- Conserve les notations et le vocabulaire des sources.
- En cas de contradiction entre les documents, ne tranche pas arbitrairement.
- Si une information indispensable reste incertaine, demande une clarification avant de rédiger.

**La rigueur prime sur l’exhaustivité : mieux vaut omettre un résultat incertain que produire une erreur.**

## 3. Respect absolu de `poly.cls`

La classe `poly.cls` est la référence pour toute la syntaxe et la mise en forme LaTeX.

- Utilise exclusivement les environnements et macros existants et pertinents.
- Respecte exactement leurs noms, leur nombre d’arguments et leurs arguments optionnels.
- Réutilise les macros personnalisées pour les coordonnées, vecteurs, intervalles et autres notations lorsqu’elles existent.
- N’invente aucune commande, aucun environnement et aucune redéfinition inutile.
- Vérifie la définition d’une macro si sa syntaxe est incertaine.
- N’ajoute pas de préambule, d’environnement `document` ou de dépendance inutile.

### Commandes et syntaxes interdites

N’utilise jamais :
- `\bw`, `\ew`, `\bmc`, `\emc` ;
- `\boxed{...}` ;
- `\vspace{-5mm}` ;
- un environnement personnalisé avec des arguments vides ou incorrects.

Utilise `\[...\]` pour les formules affichées, jamais `$$...$$`. Respecte les délimiteurs mathématiques en ligne et les conventions du projet.

## 4. Rédaction pédagogique

Rédige un véritable cours, pas une simple synthèse des PDF.

- Organise les notions dans une progression logique.
- Introduis les prérequis, définitions, propriétés, théorèmes, méthodes, démonstrations, exemples et remarques selon leur pertinence et les sources disponibles.
- Justifie rigoureusement les résultats et détaille les méthodes nécessaires à leur compréhension.
- Reproduis le style du chapitre modèle, s’il existe.
- Privilégie une rédaction claire, naturelle, précise et adaptée aux élèves.
- Évite les répétitions, les développements inutiles et les changements injustifiés de notation.

## 5. Figures TikZ

Crée une figure uniquement lorsqu’elle apporte une réelle valeur pédagogique.

Vérifie sa cohérence mathématique : coordonnées, alignements, parallélismes, vecteurs, longueurs, angles, positions relatives et labels. Toute relation géométrique représentée doit être effectivement respectée par la construction.

Utilise uniquement des fonctionnalités compatibles avec le projet. N’ajoute aucune figure décorative inutile.

## 6. Vérification finale obligatoire

Avant de répondre, contrôle :

- l’exactitude des résultats, hypothèses, formules et démonstrations ;
- la fidélité aux PDF et la cohérence des notations ;
- le respect du style du chapitre modèle ;
- l’existence et la syntaxe des macros et environnements utilisés ;
- la fermeture correcte des environnements et des délimiteurs ;
- l’absence de toutes les commandes interdites ;
- la cohérence des figures TikZ ;
- l’intégrabilité du code dans le projet existant.

Si possible, compile le code ou effectue une vérification technique équivalente. Ne prétends jamais avoir réalisé un contrôle qui n’a pas été effectué.

## 7. Format de sortie impératif

Produis exclusivement **un unique bloc de code Markdown contenant le code source LaTeX du chapitre**.

Aucun texte avant ou après le bloc, aucune explication, aucun compte rendu, aucun préambule, aucun environnement `document`, aucune note provisoire.

Le code doit commencer directement par le contenu du chapitre et être prêt à intégrer dans mon polycopié.

## Ordre de priorité

1. Exactitude mathématique et absence d’invention.
2. Respect strict de `poly.cls`.
3. Fidélité aux PDF.
4. Cohérence avec le chapitre modèle.
5. Qualité pédagogique et rédactionnelle.
6. Précision des figures et qualité du code.

**Consigne finale : analyse d’abord les fichiers, en particulier `poly.cls`, puis rédige et vérifie le chapitre sur `xxxxxxxxxxxxxxxxxx`. Ne fournis que le code LaTeX final dans un seul bloc Markdown.**
