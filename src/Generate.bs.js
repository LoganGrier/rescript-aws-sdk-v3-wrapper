// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_option = require("rescript/lib/js/js_option.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var Belt_Option = require("rescript/lib/js/belt_Option.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Util$AwsSdkV3 = require("./Util.bs.js");
var Trait$AwsSdkV3 = require("./Trait.bs.js");
var Caml_exceptions = require("rescript/lib/js/caml_exceptions.js");
var SafeNames$AwsSdkV3 = require("./SafeNames.bs.js");

function generateType(name, definition) {
  return "type " + SafeNames$AwsSdkV3.safeTypeName(name) + " = " + definition;
}

function generateField(asName, fieldName, typeName) {
  return Belt_Option.mapWithDefault(asName, "", (function (x) {
                return "@as(\"" + x + "\") ";
              })) + SafeNames$AwsSdkV3.safeMemberName(fieldName) + ": " + typeName;
}

function generateRecordTypeDefinition(members) {
  if (members.length === 0) {
    return "unit";
  } else {
    return "{\n" + Belt_Array.joinWith(members, ",\n  ", (function (x) {
                  return x;
                })) + "\n}";
  }
}

function generateIntegerShape(param) {
  return "int";
}

function generateLongShape(param) {
  return "float";
}

function generateDoubleShape(param) {
  return "float";
}

function generateFloatShape(param) {
  return "float";
}

function generateBooleanShape(param) {
  return "bool";
}

function generateBinaryShape(param) {
  return "NodeJs.Buffer.t";
}

function generateResponseMetadata(param) {
  return generateType("responseMetadata", generateRecordTypeDefinition([
                  generateField(undefined, "httpStatusCode", "option<float>"),
                  generateField(undefined, "requestId", "option<string>"),
                  generateField(undefined, "extendedRequestId", "option<string>"),
                  generateField(undefined, "cfId", "option<string>"),
                  generateField(undefined, "attempts", "option<int>"),
                  generateField(undefined, "totalRetryDelay", "option<int>")
                ]));
}

function generateExceptionType(members) {
  return generateRecordTypeDefinition(Belt_Array.concat([
                  generateField(undefined, "name", "string"),
                  generateField("$fault", "fault", "[#client | #server]"),
                  generateField("$service", "service", "option<string>"),
                  generateField("$metadata", "metadata", "responseMetadata")
                ], members));
}

function generateStringShape(details) {
  var enumTrait = Js_option.map((function (traits) {
          return Caml_option.undefined_to_opt(traits.find(Trait$AwsSdkV3.isEnumTrait));
        }), details.traits);
  if (enumTrait === undefined) {
    return "string";
  }
  var match = Caml_option.valFromOption(enumTrait);
  if (match === undefined) {
    return "string";
  }
  if (typeof match === "number") {
    return "string";
  }
  if (match.TAG !== /* EnumTrait */8) {
    return "string";
  }
  var $$enum = Belt_Array.map(match._0, (function (pair) {
          return "@as(\"" + pair.value + "\")" + " #" + SafeNames$AwsSdkV3.safeVariantName(pair.value);
        }));
  return "[" + Belt_Array.joinWith($$enum, " | ", (function (x) {
                return x;
              })) + "]";
}

function generateMember(m) {
  var safeName = SafeNames$AwsSdkV3.safeMemberName(m.name);
  var required = Trait$AwsSdkV3.hasTrait(m.traits, Trait$AwsSdkV3.isRequiredTrait);
  var valueType = required ? SafeNames$AwsSdkV3.safeTypeName(m.target) : "option<" + SafeNames$AwsSdkV3.safeTypeName(m.target) + ">";
  var asName = safeName !== m.name ? m.name : undefined;
  return generateField(asName, safeName, valueType);
}

function indentString(indent) {
  var is = [];
  Belt_Array.fill(is, 0, indent, " ");
  return Belt_Array.joinWith(is, "", (function (x) {
                return x;
              }));
}

function generateStructureShape(details, indentOpt, param) {
  var indent = indentOpt !== undefined ? indentOpt : 0;
  indentString(indent);
  var isError = Trait$AwsSdkV3.hasTrait(details.traits, Trait$AwsSdkV3.isErrorTrait);
  if (isError) {
    return generateExceptionType(Belt_Array.map(details.members, generateMember));
  } else {
    return generateRecordTypeDefinition(Belt_Array.map(details.members, generateMember));
  }
}

function generateUnionShape(details) {
  return generateStructureShape(details, undefined, undefined);
}

function generateListShape(target) {
  return "array<" + SafeNames$AwsSdkV3.safeTypeName(target) + ">";
}

function generateMapShape(param, mapValue) {
  var valueType = SafeNames$AwsSdkV3.safeTypeName(mapValue.target);
  return "Js.Dict.t<" + valueType + ">";
}

var NoServiceTrait = /* @__PURE__ */Caml_exceptions.create("Generate-AwsSdkV3.NoServiceTrait");

var UnknownTimestampFormat = /* @__PURE__ */Caml_exceptions.create("Generate-AwsSdkV3.UnknownTimestampFormat");

function generateServiceShape(serviceName, cloudFormationName) {
  return "type awsServiceClient;\n@module(\"@aws-sdk/client-" + serviceName + "\") @new external createClient: unit => awsServiceClient = \"" + cloudFormationName + "Client\";";
}

function generateSetShape(details) {
  return "array<" + SafeNames$AwsSdkV3.safeTypeName(details.target) + ">";
}

function generateTimestampShape(param) {
  var timestampFormat = Trait$AwsSdkV3.findTrait(Belt_Option.getWithDefault(param.traits, []), Trait$AwsSdkV3.isTimestampFormatTrait);
  if (timestampFormat === undefined) {
    return "Js.Date.t;";
  }
  if (typeof timestampFormat === "number") {
    return "Js.Date.t;";
  }
  if (timestampFormat.TAG !== /* TimestampFormatTrait */12) {
    return "Js.Date.t;";
  }
  switch (timestampFormat._0) {
    case "date-time" :
        return "Js.Date.t;";
    case "epoch-seconds" :
        return "int;";
    default:
      return "Js.Date.t;";
  }
}

function generateOperationStructureType(varName, opStruct) {
  if (typeof opStruct === "number") {
    return "";
  } else if (opStruct.TAG === /* OperationStructure */0) {
    return generateType("#" + varName, generateStructureShape(opStruct._0, 2, undefined));
  } else {
    return generateType("#" + varName, SafeNames$AwsSdkV3.safeTypeName(opStruct._0));
  }
}

function isOperationStructureNone(opStruct) {
  if (typeof opStruct === "number") {
    return true;
  } else {
    return false;
  }
}

function generateOperationModule(moduleName, param) {
  var output = param[2];
  var input = param[1];
  var name = param[0];
  var commandName = Util$AwsSdkV3.symbolName(name) + "Command";
  var request = generateOperationStructureType("request", input);
  var response = generateOperationStructureType("response", output);
  var inputType = isOperationStructureNone(input) ? "unit" : "request";
  var outputType = isOperationStructureNone(output) ? "Js.Promise.t<unit>" : "Js.Promise.t<response>";
  return "module " + Util$AwsSdkV3.symbolName(name) + " = {\n" + "  type t;\n" + ("  " + request + "\n") + ("  " + response + "\n") + ("  @module(\"@aws-sdk/client-" + moduleName + "\") @new external new: (" + inputType + ") => t = \"" + commandName + "\";\n") + ("  @send external send: (awsServiceClient, t) => " + outputType + " = \"send\";\n") + "}\n";
}

function generateTypeTarget(descriptor) {
  if (typeof descriptor === "number") {
    if (descriptor === /* BlobShape */0) {
      return "NodeJs.Buffer.t";
    } else {
      return "";
    }
  }
  switch (descriptor.TAG | 0) {
    case /* ListShape */0 :
        return generateListShape(descriptor._0.target);
    case /* StructureShape */2 :
    case /* UnionShape */3 :
        return generateStructureShape(descriptor._0, undefined, undefined);
    case /* OperationShape */1 :
    case /* ServiceShape */4 :
        return "";
    case /* BooleanShape */5 :
        return "bool";
    case /* IntegerShape */6 :
        return "int";
    case /* StringShape */7 :
        return generateStringShape(descriptor._0);
    case /* MapShape */8 :
        var details = descriptor._0;
        return generateMapShape(details.mapKey, details.mapValue);
    case /* TimestampShape */9 :
        return generateTimestampShape(descriptor._0);
    case /* LongShape */10 :
    case /* FloatShape */11 :
    case /* DoubleShape */12 :
        return "float";
    case /* SetShape */13 :
        return generateSetShape(descriptor._0);
    
  }
}

function generateTypeBlock(param) {
  var result = generateTypeTarget(param.descriptor);
  if (result === "") {
    return "";
  } else {
    return generateType(param.name, result);
  }
}

function generateRecursiveTypeBlock(shapes) {
  var shapeTypes = Belt_Array.map(shapes, (function (shape) {
          return SafeNames$AwsSdkV3.safeTypeName(shape.name) + " = " + generateTypeTarget(shape.descriptor);
        }));
  return "type rec " + Belt_Array.joinWith(shapeTypes, " and ", (function (block) {
                return block;
              }));
}

exports.generateType = generateType;
exports.generateField = generateField;
exports.generateRecordTypeDefinition = generateRecordTypeDefinition;
exports.generateIntegerShape = generateIntegerShape;
exports.generateLongShape = generateLongShape;
exports.generateDoubleShape = generateDoubleShape;
exports.generateFloatShape = generateFloatShape;
exports.generateBooleanShape = generateBooleanShape;
exports.generateBinaryShape = generateBinaryShape;
exports.generateResponseMetadata = generateResponseMetadata;
exports.generateExceptionType = generateExceptionType;
exports.generateStringShape = generateStringShape;
exports.generateMember = generateMember;
exports.indentString = indentString;
exports.generateStructureShape = generateStructureShape;
exports.generateUnionShape = generateUnionShape;
exports.generateListShape = generateListShape;
exports.generateMapShape = generateMapShape;
exports.NoServiceTrait = NoServiceTrait;
exports.UnknownTimestampFormat = UnknownTimestampFormat;
exports.generateServiceShape = generateServiceShape;
exports.generateSetShape = generateSetShape;
exports.generateTimestampShape = generateTimestampShape;
exports.generateOperationStructureType = generateOperationStructureType;
exports.isOperationStructureNone = isOperationStructureNone;
exports.generateOperationModule = generateOperationModule;
exports.generateTypeTarget = generateTypeTarget;
exports.generateTypeBlock = generateTypeBlock;
exports.generateRecursiveTypeBlock = generateRecursiveTypeBlock;
/* SafeNames-AwsSdkV3 Not a pure module */
