function saveGuid(guid){
  localStorage.setItem("guid", guid);
}

function getGuid(){
  return localStorage.getItem("guid");
}

$.post("http://localhost:3000/events", { event: { url: location.href, user_id: getGuid() } }, function( data ) {
  saveGuid(data.user_id);
})

