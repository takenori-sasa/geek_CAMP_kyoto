// DOM element where the Timeline will be attached
var container = document.getElementById("visualization");

// Create a DataSet (allows two way data-binding)
const spots = gon.spots;
var itemset = [];
for (let i = 0; i < spots.length; i++) {
  itemset.push({
    id: spots[i].id,
    content: spots[i].title,
    start: new Date(spots[i].taken_at),
    image:spots[i].image
  });
}
var items = new vis.DataSet(itemset);
// Configuration for the Timeline
var options = {};

// Create a Timeline
var timeline = new vis.Timeline(container, items, options);
