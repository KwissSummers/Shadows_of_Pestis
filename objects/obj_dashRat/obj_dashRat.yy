{
  "$GMObject":"",
  "%Name":"obj_dashRat",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_solidBlock","path":"objects/obj_solidBlock/obj_solidBlock.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_dashRat",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"gravityEnabled","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"setStartingRoamAreas","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"iframeDurationFrames","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"30",},
  ],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":{
    "name":"obj_enemy",
    "path":"objects/obj_enemy/obj_enemy.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"","%Name":"agroDistance","filters":[],"listItems":[],"multiselect":false,"name":"agroDistance","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"150","varType":0,},
    {"$GMObjectProperty":"","%Name":"dashDistance","filters":[],"listItems":[],"multiselect":false,"name":"dashDistance","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"75","varType":0,},
    {"$GMObjectProperty":"","%Name":"windUpFrames","filters":[],"listItems":[],"multiselect":false,"name":"windUpFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
    {"$GMObjectProperty":"","%Name":"endlagFrames","filters":[],"listItems":[],"multiselect":false,"name":"endlagFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"90","varType":0,},
    {"$GMObjectProperty":"","%Name":"roamSpeed","filters":[],"listItems":[],"multiselect":false,"name":"roamSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"4","varType":0,},
    {"$GMObjectProperty":"","%Name":"dashSpeed","filters":[],"listItems":[],"multiselect":false,"name":"dashSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"8","varType":0,},
    {"$GMObjectProperty":"","%Name":"verticalLaunchSpeed","filters":[],"listItems":[],"multiselect":false,"name":"verticalLaunchSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"","%Name":"damage","filters":[],"listItems":[],"multiselect":false,"name":"damage","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"","%Name":"a","filters":[],"listItems":[],"multiselect":false,"name":"a","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"False","varType":3,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_foursRat",
    "path":"sprites/spr_foursRat/spr_foursRat.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}