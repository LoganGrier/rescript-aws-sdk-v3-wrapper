// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("rescript/lib/js/curry.js");
var Belt_Result = require("rescript/lib/js/belt_Result.js");
var Json$AwsSdkV3 = require("./Json.bs.js");
var Caml_exceptions = require("rescript/lib/js/caml_exceptions.js");

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

var UnknownTrait = /* @__PURE__ */Caml_exceptions.create("Parse-AwsSdkV3.UnknownTrait");

function extractTargetSpec(target) {
  return Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(target), "target"));
}

function parseServiceTrait(traitResult) {
  var value = Json$AwsSdkV3.Decode.parseObject(traitResult);
  var sdkId_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(value, "sdkId"));
  var arnNamespace_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(value, "arnNamespace"));
  var cloudFormationName_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(value, "cloudFormationName"));
  var cloudTrailEventSource_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(value, "cloudTrailEventSource"));
  var endpointPrefix_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(value, "endpointPrefix")), Json$AwsSdkV3.Decode.parseString);
  return Json$AwsSdkV3.ResultHelpers.map5(sdkId_, arnNamespace_, cloudFormationName_, cloudTrailEventSource_, endpointPrefix_, (function (sdkId, arnNamespace, cloudFormationName, cloudTrailEventSource, endpointPrefix) {
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
  var obj_ = Json$AwsSdkV3.Decode.parseObject($$enum);
  var name_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(obj_, "name")), Json$AwsSdkV3.Decode.parseString);
  var value_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(obj_, "value"));
  return Json$AwsSdkV3.ResultHelpers.map2(name_, value_, (function (name, value) {
                return {
                        name: name,
                        value: value
                      };
              }));
}

function parseArnReferenceTrait(value) {
  var record = Json$AwsSdkV3.Decode.parseObject(value);
  var type__ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(record, "type")), Json$AwsSdkV3.Decode.parseString);
  var service_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(record, "service")), Json$AwsSdkV3.Decode.parseString);
  var resource_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(record, "resource")), Json$AwsSdkV3.Decode.parseString);
  return Json$AwsSdkV3.ResultHelpers.map3(type__, service_, resource_, (function (type_, service, resource) {
                return {
                        TAG: /* AwsApiArnReferenceTrait */13,
                        _0: {
                          type_: type_,
                          service: service,
                          resource: resource
                        }
                      };
              }));
}

function parseReference(value) {
  var object = Json$AwsSdkV3.Decode.parseObject(value);
  var resource = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(object, "resource"));
  var service = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(object, "service")), Json$AwsSdkV3.Decode.parseString);
  return Json$AwsSdkV3.ResultHelpers.map2(resource, service, (function (resource, service) {
                return {
                        resource: resource,
                        service: service
                      };
              }));
}

function parseTrait(name, value) {
  switch (name) {
    case "aws.api#arnReference" :
        return Belt_Result.map(parseArnReferenceTrait(value), (function (arnNamespace) {
                      return arnNamespace;
                    }));
    case "aws.api#clientEndpointDiscovery" :
        var obj = Json$AwsSdkV3.Decode.parseObject(value);
        var operation = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(obj, "operation"));
        var error = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(obj, "error"));
        return Json$AwsSdkV3.ResultHelpers.map2(operation, error, (function (operation, error) {
                      return {
                              TAG: /* AwsApiClientEndpointDiscoveryTrait */18,
                              _0: {
                                operation: operation,
                                error: error
                              }
                            };
                    }));
    case "aws.api#service" :
        return parseServiceTrait(value);
    case "aws.auth#sigv4" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(value), "name")), (function (name) {
                      return {
                              TAG: /* AwsAuthSigV4Trait */5,
                              _0: name
                            };
                    }));
    case "aws.protocols#awsJson1_0" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolAwsJson1_0Trait */12
              };
    case "aws.protocols#awsJson1_1" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolAwsJson1_1Trait */13
              };
    case "aws.protocols#awsQuery" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolAwsQueryTrait */2
              };
    case "aws.protocols#ec2Query" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolEc2QueryTrait */19
              };
    case "aws.protocols#ec2QueryName" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (queryName) {
                      return {
                              TAG: /* AwsProtocolEc2QueryNameTrait */19,
                              _0: queryName
                            };
                    }));
    case "aws.protocols#restJson1" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolRestJson1Trait */3
              };
    case "aws.protocols#restXml" :
        return {
                TAG: /* Ok */0,
                _0: /* AwsProtocolRestXmlTrait */4
              };
    case "smithy.api#box" :
        return {
                TAG: /* Ok */0,
                _0: /* BoxTrait */14
              };
    case "smithy.api#cors" :
        return {
                TAG: /* Ok */0,
                _0: /* CorsTrait */5
              };
    case "smithy.api#deprecated" :
        return {
                TAG: /* Ok */0,
                _0: /* DeprecatedTrait */18
              };
    case "smithy.api#documentation" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (documentation) {
                      return {
                              TAG: /* DocumentationTrait */0,
                              _0: documentation
                            };
                    }));
    case "smithy.api#enum" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseArray(value, parseEnumNameValue), (function (enumPairs) {
                      return {
                              TAG: /* EnumTrait */8,
                              _0: enumPairs
                            };
                    }));
    case "smithy.api#error" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (error) {
                      if (error === "server") {
                        return {
                                TAG: /* ErrorTrait */1,
                                _0: /* Server */0
                              };
                      } else {
                        return {
                                TAG: /* ErrorTrait */1,
                                _0: /* Client */1
                              };
                      }
                    }));
    case "smithy.api#eventPayload" :
        return {
                TAG: /* Ok */0,
                _0: /* EventPayloadTrait */24
              };
    case "smithy.api#externalDocumentation" :
        var documentation = Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(value), "Documentation");
        var specification = Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(value), "Specification");
        if (documentation.TAG === /* Ok */0) {
          return Belt_Result.map(Json$AwsSdkV3.Decode.parseString({
                          TAG: /* Ok */0,
                          _0: documentation._0
                        }), (function (link) {
                        return {
                                TAG: /* ExternalDocumentationTrait */21,
                                _0: {
                                  TAG: /* DocumentationLink */0,
                                  _0: link
                                }
                              };
                      }));
        } else if (specification.TAG === /* Ok */0) {
          return Belt_Result.map(Json$AwsSdkV3.Decode.parseString({
                          TAG: /* Ok */0,
                          _0: specification._0
                        }), (function (link) {
                        return {
                                TAG: /* ExternalDocumentationTrait */21,
                                _0: {
                                  TAG: /* SpecificationLink */1,
                                  _0: link
                                }
                              };
                      }));
        } else {
          return {
                  TAG: /* Error */1,
                  _0: documentation._0
                };
        }
    case "smithy.api#hostLabel" :
        return {
                TAG: /* Ok */0,
                _0: /* HostLabelTrait */22
              };
    case "smithy.api#httpError" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseNumber(value), (function (error) {
                      return {
                              TAG: /* HttpErrorTrait */2,
                              _0: error
                            };
                    }));
    case "smithy.api#httpHeader" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpHeaderTrait */10
              };
    case "smithy.api#httpLabel" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpLabelTrait */8
              };
    case "smithy.api#httpPayload" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpPayloadTrait */16
              };
    case "smithy.api#httpPrefixHeaders" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (httpPrefixHeader) {
                      return {
                              TAG: /* HttpPrefixHeadersTrait */20,
                              _0: httpPrefixHeader
                            };
                    }));
    case "smithy.api#httpQuery" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpQueryTrait */9
              };
    case "smithy.api#httpQueryParams" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpQueryParams */17
              };
    case "smithy.api#httpResponseCode" :
        return {
                TAG: /* Ok */0,
                _0: /* HttpResponseCodeTrait */20
              };
    case "smithy.api#idempotencyToken" :
        return {
                TAG: /* Ok */0,
                _0: /* IdempotencyTokenTrait */7
              };
    case "smithy.api#jsonName" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (jsonName) {
                      return {
                              TAG: /* JsonNameTrait */15,
                              _0: jsonName
                            };
                    }));
    case "smithy.api#length" :
        var record = Json$AwsSdkV3.Decode.parseObject(value);
        return Json$AwsSdkV3.ResultHelpers.map2(Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(record, "min")), Json$AwsSdkV3.Decode.parseInteger), Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(record, "max")), Json$AwsSdkV3.Decode.parseInteger), (function (min, max) {
                      return {
                              TAG: /* LengthTrait */11,
                              _0: min,
                              _1: max
                            };
                    }));
    case "smithy.api#mediaType" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (mediaType) {
                      return {
                              TAG: /* MediaTypeTrait */17,
                              _0: mediaType
                            };
                    }));
    case "smithy.api#paginated" :
        return {
                TAG: /* Ok */0,
                _0: /* PaginatedTrait */6
              };
    case "smithy.api#pattern" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (pattern) {
                      return {
                              TAG: /* PatternTrait */9,
                              _0: pattern
                            };
                    }));
    case "smithy.api#range" :
        var obj$1 = Json$AwsSdkV3.Decode.parseObject(value);
        var min = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(obj$1, "min")), Json$AwsSdkV3.Decode.parseInteger);
        var max = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(obj$1, "max")), Json$AwsSdkV3.Decode.parseInteger);
        return Json$AwsSdkV3.ResultHelpers.map2(min, max, (function (min, max) {
                      return {
                              TAG: /* RangeTrait */10,
                              _0: min,
                              _1: max
                            };
                    }));
    case "smithy.api#references" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseArray(value, parseReference), (function (references) {
                      return {
                              TAG: /* ReferencesTrait */14,
                              _0: references
                            };
                    }));
    case "smithy.api#required" :
        return {
                TAG: /* Ok */0,
                _0: /* RequiredTrait */0
              };
    case "smithy.api#retryable" :
        return {
                TAG: /* Ok */0,
                _0: /* RetryableTrait */11
              };
    case "smithy.api#sensitive" :
        return {
                TAG: /* Ok */0,
                _0: /* SensitiveTrait */15
              };
    case "smithy.api#streaming" :
        return {
                TAG: /* Ok */0,
                _0: /* StreamingTrait */21
              };
    case "smithy.api#tags" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseArray(value, Json$AwsSdkV3.Decode.parseString), (function (tags) {
                      return {
                              TAG: /* TagsTrait */16,
                              _0: tags
                            };
                    }));
    case "smithy.api#timestampFormat" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (timestampFormat) {
                      return {
                              TAG: /* TimestampFormatTrait */12,
                              _0: timestampFormat
                            };
                    }));
    case "smithy.api#title" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (title) {
                      return {
                              TAG: /* ApiTitleTrait */6,
                              _0: title
                            };
                    }));
    case "smithy.api#xmlAttribute" :
        return {
                TAG: /* Ok */0,
                _0: /* XmlAttributeTrait */23
              };
    case "smithy.api#xmlFlattened" :
        return {
                TAG: /* Ok */0,
                _0: /* XmlFlattenedTrait */1
              };
    case "smithy.api#xmlName" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(value), (function (xmlName) {
                      return {
                              TAG: /* XmlNameTrait */4,
                              _0: xmlName
                            };
                    }));
    case "smithy.api#xmlNamespace" :
        return Belt_Result.map(Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(value), "uri")), (function (uri) {
                      return {
                              TAG: /* ApiXmlNamespaceTrait */7,
                              _0: uri
                            };
                    }));
    default:
      throw {
            RE_EXN_ID: UnknownTrait,
            _1: name,
            Error: new Error()
          };
  }
}

function parseListShape(shape) {
  var target_ = extractTargetSpec(Json$AwsSdkV3.Decode.field(shape, "member"));
  var traits_ = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseRecord(Json$AwsSdkV3.Decode.field(shape, "traits"), parseTrait));
  return Json$AwsSdkV3.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        TAG: /* ListShape */0,
                        _0: {
                          target: target,
                          traits: traits
                        }
                      };
              }));
}

function parseMember(name, value) {
  var member = Json$AwsSdkV3.Decode.parseObject(value);
  var target_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(member, "target"));
  var traits_ = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseRecord(Json$AwsSdkV3.Decode.field(member, "traits"), parseTrait));
  return Json$AwsSdkV3.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        name: name,
                        target: target,
                        traits: traits
                      };
              }));
}

function parseMembers(value) {
  return Json$AwsSdkV3.Decode.parseRecord(value, parseMember);
}

function parseStructureShape(value) {
  var value$1 = Json$AwsSdkV3.Decode.field(value, "members");
  var members = Json$AwsSdkV3.Decode.parseRecord(value$1, parseMember);
  var traits = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseRecord(Json$AwsSdkV3.Decode.field(value, "traits"), parseTrait));
  return Json$AwsSdkV3.ResultHelpers.map2(members, traits, (function (members, traits) {
                return {
                        TAG: /* StructureShape */2,
                        _0: {
                          traits: traits,
                          members: members
                        }
                      };
              }));
}

function parseOperationShape(shape) {
  var inputTarget = Json$AwsSdkV3.Decode.optional(extractTargetSpec(Json$AwsSdkV3.Decode.field(shape, "input")));
  var outputTarget = Json$AwsSdkV3.Decode.optional(extractTargetSpec(Json$AwsSdkV3.Decode.field(shape, "output")));
  var errors = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseArray(Json$AwsSdkV3.Decode.field(shape, "errors"), extractTargetSpec));
  var documentation = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(Json$AwsSdkV3.Decode.field(shape, "traits")), "smithy.api#documentation")));
  return Json$AwsSdkV3.ResultHelpers.map4(inputTarget, outputTarget, errors, documentation, (function (inputValue, outputValue, errorsValue, documentationValue) {
                return {
                        TAG: /* OperationShape */1,
                        _0: {
                          input: inputValue,
                          output: outputValue,
                          errors: errorsValue,
                          documentation: documentationValue
                        }
                      };
              }));
}

function parseServiceShape(shapeDict) {
  var version_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(shapeDict, "version"));
  var operations_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(shapeDict, "operations")), (function (operations) {
          return Json$AwsSdkV3.Decode.parseArray(operations, extractTargetSpec);
        }));
  var traits_ = Json$AwsSdkV3.Decode.parseRecord(Json$AwsSdkV3.Decode.field(shapeDict, "traits"), parseTrait);
  return Json$AwsSdkV3.ResultHelpers.map3(version_, operations_, traits_, (function (version, operations, traits) {
                return {
                        TAG: /* ServiceShape */4,
                        _0: {
                          version: version,
                          operations: operations,
                          traits: traits
                        }
                      };
              }));
}

function parseStringShape(shapeDict) {
  var traits_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(shapeDict, "traits")), (function (traits) {
          return Json$AwsSdkV3.Decode.parseRecord(traits, parseTrait);
        }));
  return Belt_Result.map(traits_, (function (traits) {
                return {
                        TAG: /* StringShape */7,
                        _0: {
                          traits: traits
                        }
                      };
              }));
}

function parseMapKey(val) {
  var mapValue = Json$AwsSdkV3.Decode.parseObject(val);
  var target_ = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(mapValue, "target"));
  var traits_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(mapValue, "traits")), (function (traits) {
          return Json$AwsSdkV3.Decode.parseRecord(traits, parseTrait);
        }));
  return Json$AwsSdkV3.ResultHelpers.map2(target_, traits_, (function (target, traits) {
                return {
                        target: target,
                        traits: traits
                      };
              }));
}

function parseMapShape(shapeDict) {
  var key_ = parseMapKey(Json$AwsSdkV3.Decode.field(shapeDict, "key"));
  var value_ = parseMapKey(Json$AwsSdkV3.Decode.field(shapeDict, "value"));
  return Json$AwsSdkV3.ResultHelpers.map2(key_, value_, (function (key, value) {
                return {
                        TAG: /* MapShape */8,
                        _0: {
                          mapKey: key,
                          mapValue: value
                        }
                      };
              }));
}

function parseUnionShape(value) {
  var value$1 = Json$AwsSdkV3.Decode.field(value, "members");
  var members = Json$AwsSdkV3.Decode.parseRecord(value$1, parseMember);
  var traits = Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.parseRecord(Json$AwsSdkV3.Decode.field(value, "traits"), parseTrait));
  return Json$AwsSdkV3.ResultHelpers.map2(members, traits, (function (members, traits) {
                return {
                        TAG: /* UnionShape */3,
                        _0: {
                          traits: traits,
                          members: members
                        }
                      };
              }));
}

function parsePrimitive(shapeDict) {
  var traits_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(shapeDict, "traits")), (function (traits) {
          return Json$AwsSdkV3.Decode.parseRecord(traits, parseTrait);
        }));
  return Belt_Result.map(traits_, (function (traits) {
                return {
                        traits: traits
                      };
              }));
}

function parseResourceShape(param) {
  return {
          TAG: /* Ok */0,
          _0: /* ResourceShape */1
        };
}

function parseSetShape(shapeDict) {
  var target = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(Json$AwsSdkV3.Decode.field(shapeDict, "member")), "target"));
  var traits = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(shapeDict, "traits")), (function (traits) {
          return Json$AwsSdkV3.Decode.parseRecord(traits, parseTrait);
        }));
  return Json$AwsSdkV3.ResultHelpers.map2(target, traits, (function (target, traits) {
                return {
                        TAG: /* SetShape */13,
                        _0: {
                          traits: traits,
                          target: target
                        }
                      };
              }));
}

function parseTimestampShape(shapeDict) {
  var traits_ = Json$AwsSdkV3.ResultHelpers.mapOptional(Json$AwsSdkV3.Decode.optional(Json$AwsSdkV3.Decode.field(shapeDict, "traits")), (function (traits) {
          return Json$AwsSdkV3.Decode.parseRecord(traits, parseTrait);
        }));
  return Belt_Result.map(traits_, (function (traits) {
                return {
                        TAG: /* TimestampShape */9,
                        _0: {
                          traits: traits
                        }
                      };
              }));
}

function parseShape(name, shape) {
  var shapeDict = Json$AwsSdkV3.Decode.parseObject(shape);
  var typeDiscriminator = Json$AwsSdkV3.Decode.parseString(Json$AwsSdkV3.Decode.field(shapeDict, "type"));
  return Belt_Result.flatMap(typeDiscriminator, (function (typeValue) {
                var descriptor_;
                switch (typeValue) {
                  case "blob" :
                      descriptor_ = {
                        TAG: /* Ok */0,
                        _0: /* BlobShape */0
                      };
                      break;
                  case "boolean" :
                      descriptor_ = Belt_Result.map(parsePrimitive(shapeDict), (function (primitive) {
                              return {
                                      TAG: /* BooleanShape */5,
                                      _0: primitive
                                    };
                            }));
                      break;
                  case "double" :
                      descriptor_ = Belt_Result.map(parsePrimitive(shapeDict), (function (primitive) {
                              return {
                                      TAG: /* DoubleShape */12,
                                      _0: primitive
                                    };
                            }));
                      break;
                  case "float" :
                      descriptor_ = Belt_Result.map(parsePrimitive(shapeDict), (function (primitive) {
                              return {
                                      TAG: /* FloatShape */11,
                                      _0: primitive
                                    };
                            }));
                      break;
                  case "integer" :
                      descriptor_ = Belt_Result.map(parsePrimitive(shapeDict), (function (primitive) {
                              return {
                                      TAG: /* IntegerShape */6,
                                      _0: primitive
                                    };
                            }));
                      break;
                  case "list" :
                      descriptor_ = parseListShape(shapeDict);
                      break;
                  case "long" :
                      descriptor_ = Belt_Result.map(parsePrimitive(shapeDict), (function (primitive) {
                              return {
                                      TAG: /* LongShape */10,
                                      _0: primitive
                                    };
                            }));
                      break;
                  case "map" :
                      descriptor_ = parseMapShape(shapeDict);
                      break;
                  case "operation" :
                      descriptor_ = parseOperationShape(shapeDict);
                      break;
                  case "resource" :
                      descriptor_ = {
                        TAG: /* Ok */0,
                        _0: /* ResourceShape */1
                      };
                      break;
                  case "service" :
                      descriptor_ = parseServiceShape(shapeDict);
                      break;
                  case "set" :
                      descriptor_ = parseSetShape(shapeDict);
                      break;
                  case "string" :
                      descriptor_ = parseStringShape(shapeDict);
                      break;
                  case "structure" :
                      descriptor_ = parseStructureShape(shapeDict);
                      break;
                  case "timestamp" :
                      descriptor_ = parseTimestampShape(shapeDict);
                      break;
                  case "union" :
                      descriptor_ = parseUnionShape(shapeDict);
                      break;
                  default:
                    descriptor_ = {
                      TAG: /* Error */1,
                      _0: {
                        TAG: /* CustomError */4,
                        _0: "unknown shape type " + typeValue
                      }
                    };
                }
                return Belt_Result.map(descriptor_, (function (descriptor) {
                              return {
                                      name: name,
                                      descriptor: descriptor
                                    };
                            }));
              }));
}

function parseShapes(shapesModel) {
  return Json$AwsSdkV3.Decode.parseRecord(shapesModel, parseShape);
}

function parseModel(baseModel) {
  var shapesModel = Json$AwsSdkV3.Decode.field(Json$AwsSdkV3.Decode.parseObject(baseModel), "shapes");
  return Json$AwsSdkV3.Decode.parseRecord(shapesModel, parseShape);
}

exports.fallback = fallback;
exports.UnknownTrait = UnknownTrait;
exports.extractTargetSpec = extractTargetSpec;
exports.parseServiceTrait = parseServiceTrait;
exports.parseEnumNameValue = parseEnumNameValue;
exports.parseArnReferenceTrait = parseArnReferenceTrait;
exports.parseReference = parseReference;
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
exports.parseUnionShape = parseUnionShape;
exports.parsePrimitive = parsePrimitive;
exports.parseResourceShape = parseResourceShape;
exports.parseSetShape = parseSetShape;
exports.parseTimestampShape = parseTimestampShape;
exports.parseShape = parseShape;
exports.parseShapes = parseShapes;
exports.parseModel = parseModel;
/* No side effect */
