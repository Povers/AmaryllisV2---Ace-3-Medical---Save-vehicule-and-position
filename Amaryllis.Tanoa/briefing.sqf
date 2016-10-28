waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

//player createDiarySubject ["changelog","Changelog"];
//player createDiarySubject ["reglesserveur","Règles"];
//player createDiarySubject ["policerules","Règles C.O.S"];
//player createDiarySubject ["safezones","Safe Zones"];
//player createDiarySubject ["civrules","Civilian Rules"];
//player createDiarySubject ["illegalitems","Activité Illegal"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Contrôles"];

/*  Example
    player createDiaryRecord ["", //Container
        [
            "", //Subsection
                "
                TEXT HERE<br/><br/>
                "
        ]
    ];
*/
    player createDiaryRecord["changelog",
        [
            "Changelog",
                "
                "
        ]
    ];
    

        player createDiaryRecord ["reglesserveur",
        [
            "Règles Générales", 
                "
RAPPEL: Vous êtes sur un Serveur RP ! Tout abus et HRP sera sanctionné.<br/><br/>

1. Tout freekill ou carkill sera sanctionné, vous voulez tuer quelqu'un ? Faites le lui savoir !<br/>
2. Tout suicide ou action allant à l'encontre du RP (envie de mourir, provocations pour mourir etc...) sera sanctionné, vous devez tenir à votre vie ! <br/>
3. Si vous observez un quelconque bug ou abus possible, plutôt que d'en profiter, reportez le rapidement à un ADMIN ! Si vous utilisez ce bug à vos raisons personnelles vous serez sanctionné.<br/>
4. Il est strictement interdit de parler en HRP lorsque vous êtes en jeu ! Tout mots ou discussion HRP sur le serveur sera sanctionnée d'un avertissement, voire plus.<br/>
5. Tout Gunfight n'ayant pas commencé par une interaction RP entre au moins un joueur de chaque camp sera considéré comme du Freekill, la discution est le début de toute action RP.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord["safezones",
        [
            "Safe Zones",
                "
Il n'existe pas de SafeZone ! Cependant, nous ne sommes pas ici pour dégouter d'autres joueurs !<br/><br/>
                    
Les braquages doivent être décents<br/>
Ne pas tout prendre d'un joueur dans le but de le dégouter<br/>
Pour les Forces Armées: Essayer d'attirer les gunfights en dehors des villes<br/>
Pour les civils: Ne rester pas à proximité d'un Gunfight!<br/><br/>
                "
        ]
    ];
                    
    
    player createDiaryRecord ["reglesserveur",
        [
            "Motifs de Ban", 
                "
AVERTISSEMENT! Vous serez bannis en cas de:.<br/><br/>
                
1. Hack Serveur<br/>
2. Cheat<br/>
3. Usebug / Duplication<br/>
4. Freekill<br/>
5. Plusieurs avertissements pour HRP<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Forces Armées", 
                "
Quelques éléments à savoir quant à la position des Forces en place.<br/><br/>
                
1. Les Civils sont soumis à l'autorité des Forces en place, si vous contestez ces forces, vous serez considérés comme une personne en marge de la société mise en place.<br/>
2. Les civils peuvent être arrêtés et fouillés par le C.O.S en place et ce à n'importe quel moment, attention à l'illégal!<br/>
3. Les Civils ou Rebelles contre le C.O.S seront considérés comme recherchés par celles-ci afin de démenteler leur réseau.<br/>
4. Suivre et embêter abusivement le C.O.S sur l'île peut être considéré comme du troll et est passible de sanctions Admins.<br/>
5. Tuer ou prendre en otage les Forces en place dans le seul et unique but de récupérer du stuff est interdit, vous devez avoir une bonne raison RP sous peine de sanctions.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Transport Maritime", 
                "
Les Bateaux ne sont pas des armes de guerre et doivent uniquement vous permettre de vous déplacer sur la mer.<br/><br/>
                
1. Il est interdit de pousser un bateau dans le but de tuer quelqu'un.<br/>
2. Il est interdit de foncer sur un plongeur dans l'eau afin de le tuer.<br/>
3. Il est interdit de se balader sur les routes de l'île avec son bateau :) <br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Transport Aérien", 
                "
Les avions et hélicoptères sont soumis à des restrictions dans le but de favoriser les transports terrestres.<br/><br/>
                
                
1. Le survol de toute zone sensible, base des Forces en Place, du Gouvernement, des banques, est strictement interdit, si besoin urgent, merci de contacter les Forces en place avant le survol.<br/>
2. Il est interdit de farmer en utilisant un hélicoptère ou un avion !<br/>
3. Il est fortement conseillé de régler votre CiBi sur la fréquence 30<br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Transport Terrestre", 
                "
Le transport terrestre est le moyen à privilégier si vous voulez avoir des interactions RP, mais plusieurs choses sont interdites et passibles de sanctions:<br/><br/>
                
1. Utiliser son véhicule pour écraser quelqu'un.<br/>
2. Utiliser les bugs de physique ARMA pour se cacher dans les textures de véhicules.<br/>
3. Foncer dans un autre véhicule dans le but de l'exploser.<br/>
4. Rentrer dans un véhicule dans le but de le voler à l'ouverture de celui-ci par le propriétaire situé à côté.<br/>
5. Voler un véhicule uniquement dans le but de le faire exploser.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Communication", 
                "
                La Communication se fait uniquement en jeu par le biais de Task Force Radio.<br/><br/>
                
1. Les canaux de communication écrits en jeu sont interdits.<br/>
2. Utiliser une fréquence radio que vous avez eu après un respawn est interdit.<br/>
3. Il est obligatoire d'être sur Task Force Radio Life lorsque vous êtes en jeu.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["reglesserveur",
        [
            "Nouvelle Vie", 
                "
Les Règles de Nouvelle vie s'appliquent à tout le monde et toutes les classes présentes.<br/><br/>
                
Ces règles sont soumises à des sanctions Admins sévères en cas de non-respect.<br/><br/>

1. Si vous êtes tués, vous ne pouvez revenir dans l'action.<br/>
2. Si vous êtes tués par quelqu'un et mort, vous êtes atteind d'amnésie et ne vous souvenez plus de ce qu'il s'est passé, il est impossible de prendre sa revanche.<br/>
3. Si vous vous suicidez pour éviter le RolePlay, alors vous serez sanctionné.<br/>
4. Si vous préférez mourir que de jouer l'action en tentant de sauver votre vie, alors vous serez sanctionné.<br/><br/>
                "
        ]
    ];

    player createDiaryRecord ["reglesserveur",
        [
            "Reste en Vie !", 
                "
Quoi qu'il arrive, la communication ainsi que votre vie sont les choses les plus importantes.<br/>
Quoi que l'on vous demande, votre vie doit passer avant tout.<br/>
Toute action doit être précédée de communication.<br/>
Les Admins et Modérateurs se réservent le droit de juger toute action.<br/><br/>
                "
        ]
    ];
    
// Blufor
    player createDiaryRecord ["policerules",
        [
            "La Banque Centrale",
                "
              
1. Les Hélicoptères sont interdits de survol de la Banque Centrale sauf autorisation exceptionnelle.<br/>
2. Aucun civil n'est toléré dans la banque fédérale, toute personne retrouvée dans la banque sera arrêtée.<br/>
3. En cas de vol de la Banque, le C.O.S devra s'organiser afin d'arrêter les braqueurs.<br/>
4. La Force Léthale est autorisée en cas de braquage de la Banque Centrale faite par des gens armés et dangereux.<br/>
5. Les Forces en place se doivent dans un premier temps d'évacuer tous les civils de la banque avant de tenter quelconque action.<br/>
6. Toute personne civile ne souhaitant pas être évacuée ou bloquant l'avancée des Forces Armées en place, sera considéré comme complice.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Zones Illégales", 
                "
1. Les Planques de Gangs ne sont pas illégales et l'ont ne peut être arrêté pour s'y trouver, en revanche utiliser des objets ou des moyens s'y trouvant est totalement interdit.<br/>
2. Les Forces Armées ne connaissent pas les différents points illégaux, alors faites attention de ne pas trop vous faire voir.<br/>
3. Si les Forces en place poursuivent quelqu'un, quelque soit votre camp, ne jouez pas au héro !<br/>
4. Il est strictement interdit hors filature de camper un point illégal en vue d'attendre une personne lambda.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Patrouilles", 
                "
1. Le C.O.S ont le devoir de patrouiller sur l'île afin de rechercher les activités illégales et arrêter les criminels.<br/>
2. Les Patrouilles sont organisées en interne et selon les moyens mis à disposition.<br/>
                <br/>
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Protocole de Sécurité", 
                "
1. Les Officiers organiseront en priorité des patrouilles dans les grandes villes.<br/>
2. Les Patrouilles peuvent se regrouper afin de contrer une éventuelle attaque terroriste, suite à laquelle ils reprendront des patrouilles classiques.<br/>
3. Les bâtiments gouvernementaux et/ou de Forces Armées sont interdits au public sans autorisation à rentrer.<br/>
4. Un civil quel qu'il soit peut à tout moment, s'il estime sa sécurité en danger, appeler le C.O.S afin de demander de l'aide.<br/>
5. Des civils provoquant des nuisances proche d'un bâtiment administratif pourra se voir rappelé à l'ordre et réprimandé.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Arrestations/Amendes",
                "
Une arrestation doit être effectuée uniquement si le C.O.S estime que la personne a été ou est dangereuse pour la société.<br/><br/>

1. Si une personne a payé son dû pour une infraction mineure, alors elle a payé sa dette envers la société.<br/>
2. Vous devez appliquer la procédure et énoncer le motif d'arrestation avant d'effectuer celle-ci.<br/>
3. Si une personne est recherchée, vous pouvez l'arrêter. Ne le tuez pas à moins que la situation dégénère et que votre dernier recours soit la force létale.<br/><br/>


Donner une amende est considéré comme un avertissement. Si quelqu'un a enfreint la loi mais n'a pas de casier et/ou n'a mis la vie de personne en danger, alors une amende suffira.<br/><br/>

1. Les amendes se devront d'être raisonnables.<br/>
2. Les amendes seront en fonction de la gravité du crime commis.<br/>
3. Refuser de payer une amende est un motif de garde à vue ou arrestation.<br/>
4. Donner une amende démesurée (Exemple: 100k€ pour un excès de vitesse) sera considéré comme illégitime et pourra vous faire renvoyer sur le champ du C.O.S.<br/><br/>
                
Une liste complète des amendes ainsi que des procédure est disponible sur le site du C.O.S, merci d'en tenir compte ou le cas échéant de demander à l'un de vos supérieur.<br/><br/>
                
                "
        ]
    ];
        
    player createDiaryRecord ["policerules",
        [
            "Armes", 
                "
Les armes sont interdites dans les ville, toute personne avec une arme visible à l'intérieur d'une ville peut se voir arrêté par le C.O.S.<br/><br/>

Certaines armes de poing sont autorisées pour les civils:<br/>
1. <br/>
2. <br/>
3. <br/>
4. <br/>
5. <br/><br/>

Il est nécessaire afin de se procurer une de ces armes, d'obtenir tout d'abord un permis de port d'arme. Toute autre arme sera considérée comme illégale.<br/><br/>

1. Toute autre arme sera considérée comme illégale et pourra être confisqué et le porteur de l'arme se verra recevoir une amende.<br/>
2. Une éventuelle dérogation pour certaines entreprises de sécurité peut-être mise en place sous accord du C.O.S et du Gouvernement, ces entreprises seront alors listées ainsi que leurs membres qui auront accès à des armes différentes.<br/><br/>
                "
        ]
    ];
    
    player createDiaryRecord ["policerules",
        [
            "Force Léthale",
                "
1. La Force Léthale est uniquement autorisée en cas de danger immédiat de votre vie, de celui d'un de vos collègue ou d'un civil.<br/>
2. Décharger votre arme sans raison et sans être en opération ou simulation est interdit et peut vous valoir une mise à pieds.<br/>
3. Une suspension pourra être appliquée si vous n'avez pas la maitrise totale de votre arme et êtes incompétents au tir.<br/><br/>
                "
        ]
    ];
    

    
// Illegal
    player createDiaryRecord ["illegalitems",
        [
            "Terroristes/Rebelles",
                "
Un Rebelle est une personne en marge de la société et la critiquant. Un terroriste est une personne organisant des actes, souvent armés, allant à l'encontre de l'état. Il est strictement interdit pour des rebelles ou terroristes de s'attaquer en permanence à chaque rencontre au C.O.S. N'attaquez pas sans raison ou des sanctions pourront être prises, à chaque attaque doit correspondre une raison RP VALABLE.<br/><br/>

1. La première étape pour devenir rebelle ou terroriste est la création d'un gang.<br/>
2. Un Rebelle peut très bien être pacifiste et non armé.<br/>
3. Votre RP doit être plus développé que de simplement vouloir braquer la banque centrale et de tirer sur des Officiers.<br/>
4. Une raison VALABLE doit être derrière toute attaque armée.<br/><br/>
                "
        ]
    ];
   
    player createDiaryRecord ["illegalitems",
        [
            "Véhicules Illégaux",
                "
Les Civils ont tous leurs véhicules à disposition dans les concessions et auprès des Concessions de Luxe, tout autre véhicule sera considéré comme illégal.<br/><br/>

                "
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Armes Illégales",
                "
Les Civils ont des autorisations et permis de port d'armes pour certaines armes de poing, toute autre arme sans autorisation ou dérogation gouvernementale (entreprises de sécurité par exemple) sera considérée comme illégale<br/><br/>

                "
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Ressources Illégales",
                "
Les biens suivants sont considérés comme illégaux:<br/><br/>
1. Tortue<br/>
2. Cocaïne<br/>
3. Heroïne<br/>
4. Cannabis<br/>
5. Marijuana<br/><br/>
                "
        ]
    ];

    
// Controles

    player createDiaryRecord ["controls",
        [
            "Contrôles",
                "
Y: Ouvrir Menu Life<br/>
U: Verouiller/Déverouiller sa voiture<br/>
T: Coffre du Véhicule<br/>
F: Sirène Sonore (Si C.O.S ou Médecins)<br/>
Shift Gauche + L: Sirène Lumineuse (Si C.O.S ou Médecins).<br/>
Shift Gauche + G: Donner un coup de crosse (Avec une arme)<br/>
Windows Gauche: Interactions principales (Ramasser des items/Interagir avec joueurs et véhicules).<br/>
Ctrl Gauche + Windows Gauche: Interactions personnelles (Interagir avec des objets ou soit même).<br/>
Shift Gauche + H: Ranger son arme<br/>
Ctrl Gauche + H: Ranger son arme<br/>
Shift Gauche + R: Menotter <br/>
                "
        ]
    ];

