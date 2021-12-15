console.log('script_affichage_map.js');

function init() {


    // Affichage de la map de base

    const CentreMap = {
        latitude: 33.89157,
        longitude: 35.49870,
    }

    const ZoomLevel = 7;


    var map = L.map('map').setView([CentreMap.latitude,CentreMap.longitude], ZoomLevel);

    var calquePrincipal = L.tileLayer('https://api.maptiler.com/maps/topo/{z}/{x}/{y}.png?key=ONO9gSCTjyyqeDhRldrV', {
    attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a> <a href="https://www.maptiler.com/copyright/ ">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright ">&copy; OpenStreetMap contributors</a>',
    });

    ///// Enregistrement des icones perso

   
    var ic_base = L.icon({ //icone des bases aériennes
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/base.png'
    })

    ///// Récupération des données géo des bases à partir du fichier geoJSON
    var calqueGeoJson = L.geoJSON(aeroport2, {
        onEachFeature: function (feature, item) {
            item.setIcon(ic_base); //on ajoute l'icone personnalisé 
            item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}"]/g,'')+'</pre>'); // génération des popup avec les infos du fichier json

        }
       }).addTo(map);
    


    //// Affichage de l'ensemble des calques et gestion de l'affichage

    var overlayMaps = {
        "Airport": calqueGeoJson
        
    };

    var baseMaps = {
        "Base Map": calquePrincipal.addTo(map)
    }
    L.control.layers(baseMaps, overlayMaps).addTo(map);


}

