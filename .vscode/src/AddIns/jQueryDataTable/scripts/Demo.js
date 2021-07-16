function Render(html){
    HTMLContainer.insertAdjacentHTML('beforeend',html);    
    $('#example').DataTable( {
        order: [[2, 'asc']],
        // scrollY: "500px", // one problem with this property this isn't auto grow or shrink so for autogrow or shrink please use style.css
        rowGroup: {
            dataSrc: 2
        }
    });

    // $('#example').DataTable( {
    //     "scrollY":        "200px",
    //     "scrollCollapse": true,
    //     "paging":         false
    // } );
}