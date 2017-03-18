$(function() {
  $("#submit_apartments").on("click", function() {
    var address = $("#apartment_address").val();
    console.log(address);
    $.ajax({
      type: "POST",
      url: "https://api.airbnb.com/v1/listings/create?client_id=3092nxybyb0otqw18e8nh5nty&locale=en-US&currency=USD",
      headers: {
        "X-Airbnb-OAuth-Token":"eaha4w70329x1gunxewxcdt5h",
        "Content-Type":"application/json"
      },
      data: {
        "room_type_category": "private_room",
        "property_type_id": 2,
        "bathrooms": 1,
        "person_capacity": 1,
        "beds": 1,
        "bedrooms": 1,
        "city": "Sunnyvale, California, US"
      },
      success: function() {
        console.log("Sucess");
      },
      error: function(xhr,err){
        console.log("Error!!!");
      }
    });
  }); 
})