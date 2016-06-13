function ready(){
  var $grid = $('#grid').masonry({
    itemSelector: '.grid-item',
    percentPosition: true,
    columnWidth: '.grid-sizer'
  });

  // layout Isotope after each image loads
  $grid.imagesLoaded().progress( function() {
    $grid.masonry();

    $grid.magnificPopup({
      delegate: 'a.link-img',
      type: 'image',
      tLoading: 'Loading image #%curr%...',
      gallery: {
        enabled: true,
        navigateByImgClick: true
      },
      image: {
        titleSrc: function(item) {
          return item.el.attr('title');
        }
      }
    });
  });
}


$(function(){
  ready();
});

$(document).on('turbolinks:load', function(){
  ready();
});