{
  "$GMObject":"",
  "%Name":"obj_player",
  "eventList":[
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":3,"eventType":2,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":1,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":78,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":72,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_nextRoom","path":"objects/obj_nextRoom/obj_nextRoom.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":82,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":68,"eventType":9,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"eventNum":0,"eventType":4,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"","%Name":"","collisionObjectId":null,"eventNum":7,"eventType":7,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_player",
  "overriddenProperties":[],
  "parent":{
    "name":"Objects",
    "path":"folders/Objects.yy",
  },
  "parentObjectId":null,
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
    {"$GMObjectProperty":"","%Name":"hAccelSpeed","filters":[],"listItems":[],"multiselect":false,"name":"hAccelSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1.5","varType":0,},
    {"$GMObjectProperty":"","%Name":"hDecelSpeed","filters":[],"listItems":[],"multiselect":false,"name":"hDecelSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
    {"$GMObjectProperty":"","%Name":"numJumps","filters":[],"listItems":[],"multiselect":false,"name":"numJumps","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"2","varType":0,},
    {"$GMObjectProperty":"","%Name":"jumpSpeed","filters":[],"listItems":[],"multiselect":false,"name":"jumpSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"12","varType":0,},
    {"$GMObjectProperty":"","%Name":"maxSpeed","filters":[],"listItems":[],"multiselect":false,"name":"maxSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"6","varType":0,},
    {"$GMObjectProperty":"","%Name":"maxFallingSpeed","filters":[],"listItems":[],"multiselect":false,"name":"maxFallingSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"14","varType":0,},
    {"$GMObjectProperty":"","%Name":"defaultGravity","filters":[],"listItems":[],"multiselect":false,"name":"defaultGravity","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0.5","varType":0,},
    {"$GMObjectProperty":"","%Name":"dashSpeed","filters":[],"listItems":[],"multiselect":false,"name":"dashSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"16","varType":0,},
    {"$GMObjectProperty":"","%Name":"framesDashing","filters":[],"listItems":[],"multiselect":false,"name":"framesDashing","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"","%Name":"dashCooldownFrames","filters":[],"listItems":[],"multiselect":false,"name":"dashCooldownFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
    {"$GMObjectProperty":"","%Name":"topBumpSpeed","filters":[],"listItems":[],"multiselect":false,"name":"topBumpSpeed","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"","%Name":"coyoteTimeFrames","filters":[],"listItems":[],"multiselect":false,"name":"coyoteTimeFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"","%Name":"slashCooldownOffsetFrames","filters":[],"listItems":[],"multiselect":false,"name":"slashCooldownOffsetFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
    {"$GMObjectProperty":"","%Name":"rangedAttackCooldownFrames","filters":[],"listItems":[],"multiselect":false,"name":"rangedAttackCooldownFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"30","varType":0,},
    {"$GMObjectProperty":"","%Name":"hp","filters":[],"listItems":[],"multiselect":false,"name":"hp","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"7","varType":0,},
    {"$GMObjectProperty":"","%Name":"iframeDurationFrames","filters":[],"listItems":[],"multiselect":false,"name":"iframeDurationFrames","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
    {"$GMObjectProperty":"","%Name":"startingHealth","filters":[],"listItems":[],"multiselect":false,"name":"startingHealth","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"7","varType":0,},
    {"$GMObjectProperty":"","%Name":"numHitsToCharge","filters":[],"listItems":[],"multiselect":false,"name":"numHitsToCharge","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"3","varType":0,},
    {"$GMObjectProperty":"","%Name":"framesPerCharge","filters":[],"listItems":[],"multiselect":false,"name":"framesPerCharge","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"60","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_playerPlaceholder",
    "path":"sprites/spr_playerPlaceholder/spr_playerPlaceholder.yy",
  },
  "spriteMaskId":{
    "name":"spr_playerPlaceholder",
    "path":"sprites/spr_playerPlaceholder/spr_playerPlaceholder.yy",
  },
  "visible":true,
}