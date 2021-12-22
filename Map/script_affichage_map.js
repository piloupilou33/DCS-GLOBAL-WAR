console.log('script_affichage_map.js');

function init() {


    // Affichage de la map de base

    const CentreMap = {
        latitude: 33.89157,
        longitude: 35.49870,
    }

    const ZoomLevel = 7;


    var map = L.map('map').setView([CentreMap.latitude,CentreMap.longitude], ZoomLevel);

    var calqueTopo = L.tileLayer('https://api.maptiler.com/maps/topo/{z}/{x}/{y}.png?key=ONO9gSCTjyyqeDhRldrV', {
    attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a> <a href="https://www.maptiler.com/copyright/ ">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright ">&copy; OpenStreetMap contributors</a>',
    });

    var calqueSatellite = L.tileLayer('https://api.maptiler.com/maps/hybrid/{z}/{x}/{y}.jpg?key=ONO9gSCTjyyqeDhRldrV', {
        attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a> <a href="https://www.maptiler.com/copyright/ ">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright ">&copy; OpenStreetMap contributors</a>',
    });

    var calqueSimple = L.tileLayer('https://api.maptiler.com/maps/pastel/{z}/{x}/{y}.png?key=ONO9gSCTjyyqeDhRldrV', {
        attribution: '<a href="https://www.maptiler.com/copyright/" target="_blank">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright" target="_blank">&copy; OpenStreetMap contributors</a> <a href="https://www.maptiler.com/copyright/ ">&copy; MapTiler</a> <a href="https://www.openstreetmap.org/copyright ">&copy; OpenStreetMap contributors</a>',
    });
    //******************************************************************************//
    //******************************************************************************//
    ///// Enregistrement des icones perso
    //******************************************************************************//
    //******************************************************************************//
    var ic_base_neut = L.icon({ //icone des bases aériennes neutre
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/baseNeutral.png'
    })

    var ic_base_red = L.icon({ //icone des bases aériennes red
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/baseRed.png'
    })


    var ic_base_blue = L.icon({ //icone des bases aériennes blue
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/baseBlue.png'
    })

    var ic_gnd_unit_blue = L.icon({ //icone des ground unit blue
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/gnd_unit_blue.png'
    })

    var ic_gnd_unit_red = L.icon({ //icone des ground unit red
        iconSize: [15,15],
        popupAnchor : [0,-15],
        iconUrl: 'Map/Icones/gnd_unit_red.png'
    })
        //******************************************************************************//
        //******************************************************************************//
        // Affichage des aeroport sur la coalition et assignation d'un marker en fonction//
        //******************************************************************************//
        //******************************************************************************//
    var calqueAirportNeutral = L.geoJSON(aeroportNeutral, {
    onEachFeature: function (feature, item) {
        item.setIcon(ic_base_neut);
        item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>')
    }
    }).addTo(map);   

    var calqueAirportBlue = L.geoJSON(aeroportBlue, {
        onEachFeature: function (feature, item) {
            item.setIcon(ic_base_blue);
            item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>')
        }
        }).addTo(map);   

    var calqueAirportRed = L.geoJSON(aeroportRed, {
        onEachFeature: function (feature, item) {
            item.setIcon(ic_base_red);
            item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>')
        }
        }).addTo(map);
        
        //******************************************************************************//
        //******************************************************************************// 
        // Clustering des marker unit
        //******************************************************************************//
        //******************************************************************************//
    var markersclusterBlue = L.markerClusterGroup({
        iconCreateFunction: function(cluster) {
        var childCount = cluster.getChildCount();
            return L.divIcon({className: 'gndUnitBlue', html: '<div><span>' + childCount + '</span></div>'});
        }
    });
    var markersclusterRed = L.markerClusterGroup({
        iconCreateFunction: function(cluster) {
        var childCount = cluster.getChildCount();
            return L.divIcon({className: 'gndUnitRed', html: '<div><span>' + childCount + '</span></div>'});
        }
    });

        // Affichage des ground unit et assignation d'un marker en fonction
    var calqueUnitBlue = L.geoJSON(unitsBlue, {
        onEachFeature: function (feature, item) {
            item.setIcon(ic_gnd_unit_blue);
            item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>')
            
        }
        });  

    var calqueUnitRed = L.geoJSON(unitsRed, {
        onEachFeature: function (feature, item) {
            item.setIcon(ic_gnd_unit_red);
            item.bindPopup('<pre>'+JSON.stringify(feature.properties,null,' ').replace(/[\{\}",]/g,'')+'</pre>')
        }
        });  


        markersclusterBlue.addLayer(calqueUnitBlue)
        markersclusterRed.addLayer(calqueUnitRed)
    //// Affichage de l'ensemble des calques et gestion de l'affichage

    var overlayMaps = {
        "Neutral Airport": calqueAirportNeutral,
        "Blue Airport": calqueAirportBlue,
        "Red Airport": calqueAirportRed,
        "Ground Unit Red":markersclusterRed,
        "Ground Unit Blue":markersclusterBlue
        
        
    };

    var baseMaps = {
        "Base Map": calqueTopo.addTo(map),
        "Vue satellite": calqueSatellite.addTo(map),
        "Vue simple": calqueSimple.addTo(map)
    }
    
    L.control.layers(baseMaps,'').addTo(map);
    L.control.layers('',overlayMaps).addTo(map);
    // map.addLayer(markerscluster);


}

