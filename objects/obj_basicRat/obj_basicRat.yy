{
  "$GMObject":"",
  "%Name":"obj_basicRat",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_solidBlock","path":"objects/obj_solidBlock/obj_solidBlock.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_basicRat",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"gravityEnabled","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"setStartingRoamAreas","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"hasContactDamage","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"True",},
    {"$GMOverriddenProperty":"","%Name":"","name":"","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"propertyId":{"name":"knockbackSpeed","path":"objects/obj_enemy/obj_enemy.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"15",},
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
    {"$GMObjectProperty":"","%Name":"roamSpeed","filters":[],"listItems":[],"multiselect":false,"name":"roamSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":0,},
    {"$GMObjectProperty":"","%Name":"agroDistance","filters":[],"listItems":[],"multiselect":false,"name":"agroDistance","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"200","varType":0,},
    {"$GMObjectProperty":"","%Name":"slashDistance","filters":[],"listItems":[],"multiselect":false,"name":"slashDistance","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"20","varType":0,},
    {"$GMObjectProperty":"","%Name":"windUpFrames","filters":[],"listItems":[],"multiselect":false,"name":"windUpFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"30","varType":0,},
    {"$GMObjectProperty":"","%Name":"endlagFrames","filters":[],"listItems":[],"multiselect":false,"name":"endlagFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"30","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_walkingRat",
    "path":"sprites/spr_walkingRat/spr_walkingRat.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}