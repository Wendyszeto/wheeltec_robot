
"use strict";

let GetAnnotationsData = require('./GetAnnotationsData.js')
let ResetDatabase = require('./ResetDatabase.js')
let SaveMap = require('./SaveMap.js')
let EditAnnotationsData = require('./EditAnnotationsData.js')
let RenameMap = require('./RenameMap.js')
let YAMLExport = require('./YAMLExport.js')
let ListWorlds = require('./ListWorlds.js')
let YAMLImport = require('./YAMLImport.js')
let DeleteAnnotations = require('./DeleteAnnotations.js')
let DeleteMap = require('./DeleteMap.js')
let ListMaps = require('./ListMaps.js')
let SaveAnnotationsData = require('./SaveAnnotationsData.js')
let SetKeyword = require('./SetKeyword.js')
let PublishMap = require('./PublishMap.js')
let PubAnnotationsData = require('./PubAnnotationsData.js')
let SetRelationship = require('./SetRelationship.js')
let GetAnnotations = require('./GetAnnotations.js')

module.exports = {
  GetAnnotationsData: GetAnnotationsData,
  ResetDatabase: ResetDatabase,
  SaveMap: SaveMap,
  EditAnnotationsData: EditAnnotationsData,
  RenameMap: RenameMap,
  YAMLExport: YAMLExport,
  ListWorlds: ListWorlds,
  YAMLImport: YAMLImport,
  DeleteAnnotations: DeleteAnnotations,
  DeleteMap: DeleteMap,
  ListMaps: ListMaps,
  SaveAnnotationsData: SaveAnnotationsData,
  SetKeyword: SetKeyword,
  PublishMap: PublishMap,
  PubAnnotationsData: PubAnnotationsData,
  SetRelationship: SetRelationship,
  GetAnnotations: GetAnnotations,
};
