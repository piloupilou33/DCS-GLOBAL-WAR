console.log('script_affichage_map.js');

function init() {


    // Afficahge de la map de base

    const CentreMap = {
        latitude: 33.89157,
        longitude: 35.49870,
    }

    const ZoomLevel = 7;


    var map = L.map('map').setView([CentreMap.latitude,CentreMap.longitude], ZoomLevel);

    var calquePrincipal = L.tileLayer('https://api.maptiler.com/maps/pastel/{z}/{x}/{y}.png?key=ONO9gSCTjyyqeDhRldrV', {
    attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a> <a href="https://www.maptiler.com/copyright/ ">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright ">&copy; OpenStreetMap contributors</a>',
    });

    // Enregistrement des icones perso

   
    var ic_base = L.icon({ //icone des bases aériennes
        iconSize: [20,20],
        popupAnchor : [0,-20],
        iconUrl: 'Map/Icones/base.png'


    })

    // Récupération des données géo des bases à partir du fichier geoJSON
    var baseSyrie = L.geoJSON(aeroport,{
        pointToLayer : function (feature, latlng){
        return L.marker(latlng, {
            icon: ic_base
        });
    },


    // todo / l'objectif est d'ajouter la popup d'information automatiquement avec les données dans le fichier JSON

        // oneachFeature: (feature = {}, layer) => {
        //     const {properties = {} } = feature;
        //     const { Name } = properties;

        //     if ( !Name ) return;

        //     layer.bindPopup('<p>${Name}</p>');
        // }
    }
    )


    // Affichage de l'ensemble des calques et gestion de l'affichage

    var tousLesCalques = L.layerGroup([calquePrincipal, baseSyrie]);
    tousLesCalques.addTo(map);

    var controlClaques = L.control.layers({},{},{collapsed:false}).addTo(map);
    controlClaques.addBaseLayer(calquePrincipal, 'Fond de carte');
    controlClaques.addBaseLayer(baseSyrie, 'Base');









}

