let map;
let geocoder;
let marker = []; // マーカーを複数表示させたいので、配列化
let infoWindow = []; // 吹き出しを複数表示させたいので、配列化
const spots = gon.spots; // コントローラーで定義したインスタンス変数を変数に代入

function initMap() {
  // geocoderを初期化
  geocoder = new google.maps.Geocoder();
  // mapの初期位置設定
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat:34.985137, lng:135.757452 },
    zoom: 15,
  });
}

function codeAddress() {
  // 入力を取得
  let inputAddress = document.getElementById("address").value;
  // geocodingしたあとmapを移動
}
