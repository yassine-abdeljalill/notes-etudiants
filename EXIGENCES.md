# Exigences de sécurité de l'application des notes

| # | Exigence : « Le système doit… » | Vérification | Étape du SDLC | Test |
|---|---|---|---|---|
| 1 | Le système doit protéger les recherches dans la base de données contre les injections SQL. | Test automatisé avec une entrée malveillante dans le champ de recherche. | Développement et tests | S1 |
| 2 | Le système doit exiger une identification valide avant toute modification d'une note. | Vérifier qu'une demande sans jeton d'identification est refusée. | Développement et tests | S2 |
| 3 | Le système doit interdire aux étudiants de modifier les notes. | Vérifier qu'un étudiant identifié reçoit une réponse de refus lorsqu'il tente de modifier une note. | Développement et tests | S3 |
| 4 | Le système doit autoriser un enseignant à modifier uniquement les notes des étudiants de son propre module. | Vérifier qu'un enseignant ne peut pas modifier une note appartenant à un autre module. | Développement et tests | S4 |
| 5 | Le système doit accepter uniquement les notes numériques comprises entre 0 et 20. | Tester une note supérieure à 20 et une valeur contenant du texte ou du code SQL. | Développement et tests | S5 |
| 6 | Le système doit permettre à un enseignant identifié de modifier la note d'un étudiant de son module. | Vérifier qu'une modification autorisée réussit et que la nouvelle note est enregistrée. | Développement et tests | S6 |
| 7 | Le système doit empêcher l'affichage de détails techniques internes lorsqu'une erreur survient. | Provoquer une erreur de base de données et vérifier que la réponse ne révèle pas de détails techniques. | Développement et tests | S7 |
