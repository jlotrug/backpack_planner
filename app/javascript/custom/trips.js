document.addEventListener("DOMContentLoaded", function(){

  let token = document.querySelector('input[name = authenticity_token]').value
  let submit = document.querySelector('form.new_trip')


  submit.addEventListener('submit', function(e){
    e.preventDefault();
    let name = document.querySelector('form.new_trip input#name')
    let user_id = document.querySelector('form.new_trip input#user_id')
    let configObject = {
      method: "POST",
      headers:{
        "Content-Type": 'application/json',
        "Accept": 'application/json'
      },
      body:JSON.stringify({
        authenticity_token: token,
        trip:{
          authenticity_token: token,
        name: name.value,
        user_id: user_id.value
        }
      })
    }


    fetch('http://localhost:3000/trips', configObject).then(resp => {
      return resp.json()
    }).then(json =>{
      console.log(json)
      appendTrip(json)
      name.value =""
    })
  })
})


function appendTrip(trip){
  let trips = document.querySelector('div#trips')
  let li = document.createElement('li')
  let a = document.createElement('a')
  a.setAttribute('href', `http://localhost:3000/trips/${trip.id}`)
  a.innerHTML = trip.name
  li.appendChild(a)
  trips.appendChild(li)
}
