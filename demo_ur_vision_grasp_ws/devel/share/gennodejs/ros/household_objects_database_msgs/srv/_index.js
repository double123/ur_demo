
"use strict";

let SaveScan = require('./SaveScan.js')
let GetModelList = require('./GetModelList.js')
let GetModelDescription = require('./GetModelDescription.js')
let GetModelScans = require('./GetModelScans.js')
let TranslateRecognitionId = require('./TranslateRecognitionId.js')
let GetModelMesh = require('./GetModelMesh.js')

module.exports = {
  SaveScan: SaveScan,
  GetModelList: GetModelList,
  GetModelDescription: GetModelDescription,
  GetModelScans: GetModelScans,
  TranslateRecognitionId: TranslateRecognitionId,
  GetModelMesh: GetModelMesh,
};
