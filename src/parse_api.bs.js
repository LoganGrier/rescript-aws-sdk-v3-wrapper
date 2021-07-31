// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Fs = require("fs");
var Json = require("./json.bs.js");
var Curry = require("rescript/lib/js/curry.js");
var Caml_array = require("rescript/lib/js/caml_array.js");
var Belt_Result = require("rescript/lib/js/belt_Result.js");
var Caml_exceptions = require("rescript/lib/js/caml_exceptions.js");

function symbolName(str) {
  return Caml_array.get(str.split("#"), 1);
}

function symbolNamespace(str) {
  return Caml_array.get(str.split("#"), 0);
}

function fallback(value, parse1, parse2) {
  var parsed = Curry._1(parse1, value);
  if (parsed.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: {
              TAG: /* Primary */0,
              _0: parsed._0
            }
          };
  }
  var error = parsed._0;
  if (error.TAG !== /* WrongType */1) {
    return {
            TAG: /* Error */1,
            _0: error
          };
  }
  var parsed$1 = Curry._1(parse2, value);
  if (parsed$1.TAG === /* Ok */0) {
    return {
            TAG: /* Ok */0,
            _0: {
              TAG: /* Secondary */1,
              _0: parsed$1._0
            }
          };
  } else {
    return {
            TAG: /* Error */1,
            _0: parsed$1._0
          };
  }
}

var UnknownTrait = /* @__PURE__ */Caml_exceptions.create("Parse_api.UnknownTrait");

function extractTargetSpec(target) {
  return Json.Decode.parseString(Json.Decode.field(Json.Decode.parseObject(target), "target"));
}

function parseServiceTrait(traitResult) {
  var value = Json.Decode.parseObject(traitResult);
  var sdkId_ = Json.Decode.parseString(Json.Decode.field(value, "sdkId"));
  var arnNamespace_ = Json.Decode.parseString(Json.Decode.field(value, "arnNamespace"));
  var cloudFormationName_ = Json.Decode.parseString(Json.Decode.field(value, "cloudFormationName"));
  var cloudTrailEventSource_ = Json.Decode.parseString(Json.Decode.field(value, "cloudTrailEventSource"));
  var endpointPrefix_ = Json.Decode.parseString(Json.Decode.field(value, "endpointPrefix"));
  return Json.ResultHelpers.map5(sdkId_, arnNamespace_, cloudFormationName_, cloudTrailEventSource_, endpointPrefix_, (function (sdkId, arnNamespace, cloudFormationName, cloudTrailEventSource, endpointPrefix) {
                return {
                        TAG: /* ServiceTrait */3,
                        _0: {
                          sdkId: sdkId,
                          arnNamespace: arnNamespace,
                          cloudFormationName: cloudFormationName,
                          cloudTrailEventSource: cloudTrailEventSource,
                          endpointPrefix: endpointPrefix
                        }
                      };
              }));
}

function parseEnumNameValue($$enum) {
  var obj_ = Json.Decode.parseObject($$enum);
  var name_ = Json.Decode.parseString(Json.Decode.field(obj_, "name"));
  var value_ = Json.Decode.parseString(Json.Decode.field(obj_, "value"));
  return Json.ResultHelpers.map2(name_, value_, (function (name, value) {
                return {
                        name: name,
                        value: value
                      };
              }));
}

function parseTrait(name, value) {
  var namespace = symbolNamespace(name);
  var traitName = symbolName(name);
  var traitValue;
  switch (name) {
    case "aws.api#service" :
        traitValue = parseServiceTrait(value);
        break;
    case "aws.auth#sigv4" :
        traitValue = Belt_Result.map(Json.Decode.parseString(Json.Decode.field(Json.Decode.parseObject(value), "name")), (function (name) {
                return {
                        TAG: /* AwsAuthSigV4Trait */5,
                        _0: name
                      };
              }));
        break;
    case "aws.protocols#awsQuery" :
        traitValue = {
          TAG: /* Ok */0,
          _0: /* AwsProtocolAwsQueryTrait */2
        };
        break;
    case "smithy.api#documentation" :
        traitValue = Belt_Result.map(Json.Decode.parseString(value), (function (documentation) {
                return {
                        TAG: /* DocumentationTrait */0,
                        _0: documentation
                      };
              }));
        break;
    case "smithy.api#enum" :
        traitValue = Belt_Result.map(Json.Decode.parseArray(value, parseEnumNameValue), (function (enumPairs) {
                return {
                        TAG: /* EnumTrait */8,
                        _0: enumPairs
                      };
              }));
        break;
    case "smithy.api#error" :
        traitValue = Belt_Result.map(Json.Decode.parseString(value), (function (error) {
                return {
                        TAG: /* ErrorTrait */1,
                        _0: error
                      };
              }));
        break;
    case "smithy.api#httpError" :
        traitValue = Belt_Result.map(Json.Decode.parseNumber(value), (function (error) {
                return {
                        TAG: /* HttpErrorTrait */2,
                        _0: error
                      };
              }));
        break;
    case "smithy.api#required" :
        traitValue = {
          TAG: /* Ok */0,
          _0: /* RequiredTrait */0
        };
        break;
    case "smithy.api#title" :
        traitValue = Belt_Result.map(Json.Decode.parseString(value), (function (title) {
                return {
                        TAG: /* ApiTitleTrait */6,
                        _0: title
                      };
              }));
        break;
    case "smithy.api#xmlFlattened" :
        traitValue = {
          TAG: /* Ok */0,
          _0: /* XmlFlattenedTrait */1
        };
        break;
    case "smithy.api#xmlName" :
        traitValue = Belt_Result.map(Json.Decode.parseString(value), (function (xmlName) {
                return {
                        TAG: /* XmlNameTrait */4,
                        _0: xmlName
                      };
              }));
        break;
    case "smithy.api#xmlNamespace" :
        traitValue = Belt_Result.map(Json.Decode.parseString(Json.Decode.field(Json.Decode.parseObject(value), "uri")), (function (uri) {
                return {
                        TAG: /* ApiXmlNamespaceTrait */7,
                        _0: uri
                      };
              }));
        break;
    default:
      throw {
            RE_EXN_ID: UnknownTrait,
            _1: name,
            Error: new Error()
          };
  }
  return Belt_Result.map(traitValue, (function (traitValueDecoded) {
                return [
                        namespace,
                        traitName,
                        traitValueDecoded
                      ];
              }));
}

function parseListShape(shapeName, shape) {
  var target_ = extractTargetSpec(Json.Decode.field(shape, "member"));
  var traits_ = Json.Decode.optional(Json.Decode.parseRecord(Json.Decode.field(shape, "traits"), parseTrait));
  return Json.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        TAG: /* ListShape */0,
                        _0: shapeName,
                        _1: {
                          target: target,
                          traits: traits
                        }
                      };
              }));
}

function parseMember(name, value) {
  var member = Json.Decode.parseObject(value);
  var target_ = Json.Decode.parseString(Json.Decode.field(member, "target"));
  var traits_ = Json.Decode.optional(Json.Decode.parseRecord(Json.Decode.field(member, "traits"), parseTrait));
  return Json.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        name: name,
                        target: target,
                        traits: traits
                      };
              }));
}

function parseMembers(value) {
  return Json.Decode.parseRecord(value, parseMember);
}

function parseStructureShape(shapeName, value) {
  var value$1 = Json.Decode.field(value, "members");
  var members = Json.Decode.parseRecord(value$1, parseMember);
  var traits = Json.Decode.optional(Json.Decode.parseRecord(Json.Decode.field(value, "traits"), parseTrait));
  return Json.ResultHelpers.map2(members, traits, (function (members, traits) {
                return {
                        TAG: /* StructureShape */2,
                        _0: shapeName,
                        _1: {
                          traits: traits,
                          members: members
                        }
                      };
              }));
}

function parseOperationShape(shapeName, shape) {
  var inputTarget = extractTargetSpec(Json.Decode.field(shape, "input"));
  var outputTarget = Json.Decode.optional(extractTargetSpec(Json.Decode.field(shape, "output")));
  var errors = Json.Decode.optional(Json.Decode.parseArray(Json.Decode.field(shape, "errors"), extractTargetSpec));
  var documentation = Json.Decode.optional(Json.Decode.parseString(Json.Decode.field(Json.Decode.parseObject(Json.Decode.field(shape, "traits")), "smithy.api#documentation")));
  return Json.ResultHelpers.map4(inputTarget, outputTarget, errors, documentation, (function (inputValue, outputValue, errorsValue, documentationValue) {
                return {
                        TAG: /* OperationShape */1,
                        _0: shapeName,
                        _1: {
                          input: inputValue,
                          output: outputValue,
                          errors: errorsValue,
                          documentation: documentationValue
                        }
                      };
              }));
}

function parseServiceShape(shapeName, shapeDict) {
  var version_ = Json.Decode.parseString(Json.Decode.field(shapeDict, "version"));
  var operations_ = Json.Decode.parseArray(Json.Decode.field(shapeDict, "operations"), extractTargetSpec);
  var traits_ = Json.Decode.parseRecord(Json.Decode.field(shapeDict, "traits"), parseTrait);
  return Json.ResultHelpers.map3(version_, operations_, traits_, (function (version, operations, traits) {
                return {
                        TAG: /* ServiceShape */3,
                        _0: shapeName,
                        _1: {
                          version: version,
                          operations: operations,
                          traits: traits
                        }
                      };
              }));
}

function parseStringShape(shapeName, shapeDict) {
  var traits_ = Json.ResultHelpers.mapOptional(Json.Decode.optional(Json.Decode.field(shapeDict, "traits")), (function (traits) {
          return Json.Decode.parseRecord(traits, parseTrait);
        }));
  return Belt_Result.map(traits_, (function (traits) {
                return {
                        TAG: /* StringShape */7,
                        _0: shapeName,
                        _1: {
                          traits: traits
                        }
                      };
              }));
}

function parseMapKey(val) {
  var mapValue = Json.Decode.parseObject(val);
  var target_ = Json.Decode.parseString(Json.Decode.field(mapValue, "target"));
  var traits_ = Json.Decode.parseRecord(Json.Decode.field(mapValue, "traits"), parseTrait);
  return Json.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        target: target,
                        traits: traits
                      };
              }));
}

function parseMapShape(shapeName, shapeDict) {
  var key_ = parseMapKey(Json.Decode.field(shapeDict, "key"));
  var value_ = parseMapKey(Json.Decode.field(shapeDict, "key"));
  return Json.ResultHelpers.map2(key_, value_, (function (key, value) {
                return {
                        TAG: /* MapShape */8,
                        _0: shapeName,
                        _1: {
                          mapKey: key,
                          mapValue: value
                        }
                      };
              }));
}

function parseShape(name, shape) {
  console.log("shape: " + name);
  var shapeName = Caml_array.get(name.split("#"), 1);
  var shapeDict = Json.Decode.parseObject(shape);
  var typeDiscriminator = Json.Decode.parseString(Json.Decode.field(shapeDict, "type"));
  return Belt_Result.flatMap(typeDiscriminator, (function (typeValue) {
                switch (typeValue) {
                  case "blob" :
                      return {
                              TAG: /* Ok */0,
                              _0: {
                                TAG: /* BlobShape */4,
                                _0: shapeName
                              }
                            };
                  case "boolean" :
                      return {
                              TAG: /* Ok */0,
                              _0: {
                                TAG: /* BooleanShape */5,
                                _0: shapeName
                              }
                            };
                  case "integer" :
                      return {
                              TAG: /* Ok */0,
                              _0: {
                                TAG: /* IntegerShape */6,
                                _0: shapeName
                              }
                            };
                  case "list" :
                      return parseListShape(shapeName, shapeDict);
                  case "map" :
                      return parseMapShape(shapeName, shapeDict);
                  case "operation" :
                      return parseOperationShape(shapeName, shapeDict);
                  case "service" :
                      return parseServiceShape(shapeName, shapeDict);
                  case "string" :
                      return parseStringShape(shapeName, shapeDict);
                  case "structure" :
                      return parseStructureShape(shapeName, shapeDict);
                  default:
                    return {
                            TAG: /* Error */1,
                            _0: {
                              TAG: /* CustomError */4,
                              _0: "unknown shape type " + shapeName
                            }
                          };
                }
              }));
}

function parseShapes(shapesModel) {
  return Json.Decode.parseRecord(shapesModel, parseShape);
}

function parseModel(baseModel) {
  var shapesModel = Json.Decode.field(Json.Decode.parseObject(baseModel), "shapes");
  return Json.Decode.parseRecord(shapesModel, parseShape);
}

function parse(filename) {
  var file = Fs.readFileSync(filename, undefined);
  return Json.Decode.parseJson(file.toString(), parseModel);
}

exports.symbolName = symbolName;
exports.symbolNamespace = symbolNamespace;
exports.fallback = fallback;
exports.UnknownTrait = UnknownTrait;
exports.extractTargetSpec = extractTargetSpec;
exports.parseServiceTrait = parseServiceTrait;
exports.parseEnumNameValue = parseEnumNameValue;
exports.parseTrait = parseTrait;
exports.parseListShape = parseListShape;
exports.parseMember = parseMember;
exports.parseMembers = parseMembers;
exports.parseStructureShape = parseStructureShape;
exports.parseOperationShape = parseOperationShape;
exports.parseServiceShape = parseServiceShape;
exports.parseStringShape = parseStringShape;
exports.parseMapKey = parseMapKey;
exports.parseMapShape = parseMapShape;
exports.parseShape = parseShape;
exports.parseShapes = parseShapes;
exports.parseModel = parseModel;
exports.parse = parse;
/* fs Not a pure module */
