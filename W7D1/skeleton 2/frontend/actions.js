const selectLocation = function(city, jobs){
  return {
    type: "SWTCH_LOCATION",
    city,
    jobs
  };

};


export default selectLocation;

window.selectLocation = selectLocation;
