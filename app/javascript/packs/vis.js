const gcards = gon.cards;
const gedges = gon.edges;

var nodeset = [];
for (let i = 0; i < gcards.length; i++) {
  nodeset.push({id: gcards[i].id, label: gcards[i].title})
}
var nodes = new vis.DataSet(nodeset);
var edgeset=[]
for (let i = 0; i < gedges.length; i++) {
    edgeset.push({from: gedges[i].parent_id, to: gedges[i].child_id})

}
var edges = new vis.DataSet(edgeset)
var container = document.getElementById("network");
var data = {
  nodes: nodes,
  edges: edges,
};
var options = {};
var network = new vis.Network(container, data, options);
