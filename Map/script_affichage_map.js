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

   
    var ic_base_neut = L.icon({ //icone des bases aériennes neutre
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/base_neutral.png'
    })

    var ic_base_red = L.icon({ //icone des bases aériennes red
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/base_red.png'
    })


    var ic_base_blue = L.icon({ //icone des bases aériennes blue
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/base_blue.png'
    })

        // Affichage des aeroport avec un filtre sur la coalition et assignation d'un marker en fonction
    var calqueGeoJson = L.geoJSON(aeroport, {
    onEachFeature: function (feature, item) {
        var lat = feature.geometry.coordinates[1];
        var lon = feature.geometry.coordinates[0];
        var popupContent;
        var marker;
        switch(feature.properties.Coalition){
            case "Neutral":
                marker = L.marker([lat,lon], {icon: ic_base_neut}).addTo(map);
                popupContent = '<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>'
                break;
            case "Red" :
                marker = L.marker([lat,lon], {icon: ic_base_red}).addTo(map);
                popupContent = '<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>'
                break; 
            case "Blue" :
            marker = L.marker([lat,lon], {icon: ic_base_blue}).addTo(map);
            popupContent = '<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>'
                break;           
        }
    marker.bindPopup(popupContent);
    }
    });   


    //// Affichage de l'ensemble des calques et gestion de l'affichage

    var overlayMaps = {
        "Airport": calqueGeoJson
        
    };

    var baseMaps = {
        "Base Map": calquePrincipal.addTo(map)
    }
    L.control.layers(baseMaps, overlayMaps).addTo(map);


}

