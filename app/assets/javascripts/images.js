function ready(){
  var $grid = $('#grid').masonry({
    itemSelector: '.grid-item',
    percentPosition: true,
    columnWidth: '.grid-sizer'
  });

  // layout Isotope after each image loads
  $grid.imagesLoaded().progress( function() {
    $grid.masonry();
  });

  $('.tags').select2({
    tags: true,
    tokenSeparators: [',', ' '],
    maximumSelectionLength: 5
  });
}


$(function(){
  ready();
});

$(document).on('turbolinks:load', function(){
  ready();
});