function embedHomePage(homePage) // Make sure to embed this on your control add-in
{    
    createIframe();
    
    // Find our IFrame
    var iFrameWebPage = document.getElementById('webPage');
    // Modify it's parameter    
    if (homePage == '')
        iFrameWebPage.src = 'https://tabrezajaz.com/'; 
    else
        iFrameWebPage.src = homePage;
    //webPage.src = 'https://bing.com/'; 
}
function createIframe()
{
    // Find a Place
    var placeholder = document.getElementById('controlAddIn');

    // Create Object 
    var iFrameWebPage = document.createElement('iframe');
    // Set its parameters
    iFrameWebPage.id = 'webPage';
    iFrameWebPage.height = '100%';
    iFrameWebPage.width = '100%';

    // Add object to place
    placeholder.appendChild(iFrameWebPage);
}

function embedMAP(latitude, longitude)
{
    createDiv();
    // alert(latitude);
    // alert(longitude);
    ///*
    if ((latitude !== '') && (longitude !=='')) {
        //alert('loadMapScenario');
        loadMapScenario(latitude,longitude);
    } else 
    {
        //alert('createDivWhenMapNotAvailable');
        createDivWhenMapNotAvailable();
        //document.getElementById('myMap').value = 'MAP not Available for this Customer as Longitude and Latitude is blank.';
    }
    //*/
    //loadMapScenario(latitude,longitude);
}

function createDivWhenMapNotAvailable()
{
    // Delete Object
    var myobj = document.getElementById('myMap');
    myobj.remove();
    // Find a Place
    var placeholder = document.getElementById('controlAddIn');
    // Create Div Object
    var mapDiv = document.createElement('h2');
    // Set its attributes
    mapDiv.id = 'myContent';
    //mapDiv.Type = 'text';
    mapDiv.style.backgroundColor = "red";
    mapDiv.style.width = "100%";
    mapDiv.style.height = "50px";
    mapDiv.value = 'MAP not Available for this Customer as Longitude and Latitude is blank.';
    // Add object to place    
    placeholder.appendChild(mapDiv);    
}

function createDiv()
{
    // Find a Place
    var placeholder = document.getElementById('controlAddIn');
    // Create Div Object
    var mapDiv = document.createElement('div');
    // Set its attributes
    mapDiv.id = 'myMap';
    mapDiv.style.backgroundColor = "red";
    mapDiv.style.width = "100%";
    mapDiv.style.height = "300px";
    // Add object to place
    placeholder.appendChild(mapDiv);
}

function loadMapScenario(latitude, longitude) {
    var map = new Microsoft.Maps.Map(document.getElementById('myMap'), {
        credentials: 'AkpNTJGnwTPbN8d7lRGMUeX7Q5_4nBX3UxN9W0V0qFZVxt31xKFbQZ2qsSTaN8Qk',
        mapTypeId: Microsoft.Maps.MapTypeId.road,
        zoom: 1
    });

    // var latitude = $('#<%=lbl_Latitude1.ClientID%>').html();
    // var longitude = $('#<%=lbl_Longitude1.ClientID%>').html();
    //alert(g);    

    // Create the infobox for the pushpin  
    var infobox = null;
    debugger;
    //declare addMarker function  
    //function addMarker(latitude, longitude, title, description, pid) {

    //latitude = 46.228500;// 28.6327;
    //longitude = 14.613200;// 77.2198;
    var marker = new Microsoft.Maps.Pushpin(new Microsoft.Maps.Location(latitude, longitude), { color: 'green' });
    //var marker = new Microsoft.Maps.Pushpin(new Microsoft.Maps.Location(28.6327, 77.2198), { color: 'green' });                                                        
    infobox = new Microsoft.Maps.Infobox(marker.getLocation(), {
        visible: false
    });
    var pid;
    var title;
    var description;
    marker.metadata = {
        id: pid,
        title: title,
        description: description
    };

    Microsoft.Maps.Events.addHandler(marker, 'mouseout', hideInfobox);
    Microsoft.Maps.Events.addHandler(marker, 'mouseover', showInfobox);

    infobox.setMap(map);
    map.entities.push(marker);
    marker.setOptions({ enableHoverStyle: true });


    function showInfobox(e) {
        if (e.target.metadata) {
            infobox.setOptions({
                location: e.target.getLocation(),
                title: e.target.metadata.title,
                description: e.target.metadata.description,
                visible: true
            });
        }
    }

    function hideInfobox(e) {
        infobox.setOptions({ visible: false });
    }
}