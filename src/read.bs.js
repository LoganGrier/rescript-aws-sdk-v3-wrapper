// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Js_option = require("rescript/lib/js/js_option.js");
var Parse_api = require("./parse_api.bs.js");
var Belt_Array = require("rescript/lib/js/belt_Array.js");
var Caml_option = require("rescript/lib/js/caml_option.js");
var Dependencies = require("./dependencies.bs.js");

var parsed = Parse_api.parse("aws-sdk-js-v3/codegen/sdk-codegen/aws-models/sqs.2012-11-05.json");

function safeTypeName(name) {
  return name.charAt(0).toLowerCase() + name.slice(1);
}

function generateStringType(name, details) {
  var enumTrait = Js_option.map((function (traits) {
          return Caml_option.undefined_to_opt(traits.find(function (trait) {
                          if (typeof trait === "number" || trait.TAG !== /* EnumTrait */8) {
                            return false;
                          } else {
                            return true;
                          }
                        }));
        }), details.traits);
  if (enumTrait !== undefined) {
    var match = Caml_option.valFromOption(enumTrait);
    if (match !== undefined && typeof match !== "number" && match.TAG === /* EnumTrait */8) {
      var $$enum = Belt_Array.map(match._0, (function (pair) {
              return "#" + pair.value;
            }));
      return "type " + safeTypeName(name) + " = [ " + Belt_Array.joinWith($$enum, " | ", (function (x) {
                    return x;
                  })) + "]";
    }
    
  }
  return "type " + safeTypeName(name) + " = string";
}

function isRequired(traits) {
  return traits.some(function (trait) {
              return trait === 0;
            });
}

function generateMember(m) {
  var traits = m.traits;
  var required = traits !== undefined ? isRequired(traits) : false;
  return "\t@as(\"" + m.name + "\") " + safeTypeName(m.name) + ": " + (
          required ? "option<" + safeTypeName(Parse_api.symbolName(m.target)) + ">" : safeTypeName(Parse_api.symbolName(m.target))
        );
}

function generateStructureShape(name, details) {
  var memberStrings = Belt_Array.map(details.members, generateMember);
  return "type " + safeTypeName(name) + " = {\n" + Belt_Array.joinWith(memberStrings, ",\n", (function (x) {
                return x;
              })) + "\n}";
}

function generate(shape) {
  var name = Parse_api.symbolName(shape.name);
  var details = shape.descriptor;
  if (typeof details === "number") {
    return "";
  }
  switch (details.TAG | 0) {
    case /* StructureShape */2 :
        return generateStructureShape(name, details._0);
    case /* StringShape */4 :
        return generateStringType(name, details._0);
    default:
      return "";
  }
}

if (parsed.TAG === /* Ok */0) {
  var ordered = Dependencies.order(parsed._0);
  var codeSnippets = Belt_Array.map(ordered, generate);
  console.log(Belt_Array.joinWith(codeSnippets, "\n", (function (x) {
              return x;
            })));
} else {
  console.log("error", parsed._0);
}

exports.parsed = parsed;
exports.safeTypeName = safeTypeName;
exports.generateStringType = generateStringType;
exports.isRequired = isRequired;
exports.generateMember = generateMember;
exports.generateStructureShape = generateStructureShape;
exports.generate = generate;
/* parsed Not a pure module */
