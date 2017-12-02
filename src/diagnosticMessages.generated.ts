// code below is generated from diagnosticsMessages.json by scripts/build-diagnostics

export enum DiagnosticCode {
  Conversion_from_type_0_to_1_requires_an_explicit_cast = 100,
  Basic_type_0_cannot_be_nullable = 101,
  Operation_not_supported = 102,
  Operation_is_unsafe = 103,
  Unterminated_string_literal = 1002,
  Identifier_expected = 1003,
  _0_expected = 1005,
  A_file_cannot_have_a_reference_to_itself = 1006,
  Trailing_comma_not_allowed = 1009,
  Unexpected_token = 1012,
  A_rest_parameter_must_be_last_in_a_parameter_list = 1014,
  A_required_parameter_cannot_follow_an_optional_parameter = 1016,
  Statements_are_not_allowed_in_ambient_contexts = 1036,
  Initializers_are_not_allowed_in_ambient_contexts = 1039,
  _0_modifier_cannot_be_used_here = 1042,
  Type_parameters_cannot_appear_on_a_constructor_declaration = 1092,
  Type_annotation_cannot_appear_on_a_constructor_declaration = 1093,
  An_accessor_cannot_have_type_parameters = 1094,
  A_set_accessor_cannot_have_a_return_type_annotation = 1095,
  Type_parameter_list_cannot_be_empty = 1098,
  A_continue_statement_can_only_be_used_within_an_enclosing_iteration_statement = 1104,
  A_break_statement_can_only_be_used_within_an_enclosing_iteration_or_switch_statement = 1105,
  A_return_statement_can_only_be_used_within_a_function_body = 1108,
  Expression_expected = 1109,
  Type_expected = 1110,
  A_default_clause_cannot_appear_more_than_once_in_a_switch_statement = 1113,
  Duplicate_label_0 = 1114,
  Octal_literals_are_not_allowed_in_strict_mode = 1121,
  Digit_expected = 1124,
  Hexadecimal_digit_expected = 1125,
  Unexpected_end_of_text = 1126,
  Invalid_character = 1127,
  _case_or_default_expected = 1130,
  Type_argument_expected = 1140,
  String_literal_expected = 1141,
  Line_break_not_permitted_here = 1142,
  Declaration_expected = 1146,
  Unterminated_regular_expression_literal = 1161,
  Binary_digit_expected = 1177,
  Octal_digit_expected = 1178,
  An_implementation_cannot_be_declared_in_ambient_contexts = 1183,
  An_extended_Unicode_escape_value_must_be_between_0x0_and_0x10FFFF_inclusive = 1198,
  Unterminated_Unicode_escape_sequence = 1199,
  Decorators_are_not_valid_here = 1206,
  _abstract_modifier_can_only_appear_on_a_class_method_or_property_declaration = 1242,
  Duplicate_identifier_0 = 2300,
  Cannot_find_name_0 = 2304,
  Module_0_has_no_exported_member_1 = 2305,
  Generic_type_0_requires_1_type_argument_s = 2314,
  Type_0_is_not_generic = 2315,
  Type_0_is_not_assignable_to_type_1 = 2322,
  _this_cannot_be_referenced_in_current_location = 2332,
  Property_0_does_not_exist_on_type_1 = 2339,
  Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures = 2349,
  The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access = 2357,
  The_left_hand_side_of_an_assignment_expression_must_be_a_variable_or_a_property_access = 2364,
  Function_implementation_is_missing_or_not_immediately_following_the_declaration = 2391,
  Duplicate_function_implementation = 2393,
  Export_declaration_conflicts_with_exported_declaration_of_0 = 2484,
  Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property = 2540,
  The_target_of_an_assignment_must_be_a_variable_or_a_property_access = 2541,
  Expected_0_arguments_but_got_1 = 2554,
  Expected_at_least_0_arguments_but_got_1 = 2555,
  Expected_0_type_arguments_but_got_1 = 2558,
  File_0_not_found = 6054
}

export function diagnosticCodeToString(code: DiagnosticCode): string {
  switch (code) {
    case 100: return "Conversion from type '{0}' to '{1}' requires an explicit cast.";
    case 101: return "Basic type '{0}' cannot be nullable.";
    case 102: return "Operation not supported.";
    case 103: return "Operation is unsafe.";
    case 1002: return "Unterminated string literal.";
    case 1003: return "Identifier expected.";
    case 1005: return "'{0}' expected.";
    case 1006: return "A file cannot have a reference to itself.";
    case 1009: return "Trailing comma not allowed.";
    case 1012: return "Unexpected token.";
    case 1014: return "A rest parameter must be last in a parameter list.";
    case 1016: return "A required parameter cannot follow an optional parameter.";
    case 1036: return "Statements are not allowed in ambient contexts.";
    case 1039: return "Initializers are not allowed in ambient contexts.";
    case 1042: return "'{0}' modifier cannot be used here.";
    case 1092: return "Type parameters cannot appear on a constructor declaration.";
    case 1093: return "Type annotation cannot appear on a constructor declaration.";
    case 1094: return "An accessor cannot have type parameters.";
    case 1095: return "A 'set' accessor cannot have a return type annotation.";
    case 1098: return "Type parameter list cannot be empty.";
    case 1104: return "A 'continue' statement can only be used within an enclosing iteration statement.";
    case 1105: return "A 'break' statement can only be used within an enclosing iteration or switch statement.";
    case 1108: return "A 'return' statement can only be used within a function body.";
    case 1109: return "Expression expected.";
    case 1110: return "Type expected.";
    case 1113: return "A 'default' clause cannot appear more than once in a 'switch' statement.";
    case 1114: return "Duplicate label '{0}'.";
    case 1121: return "Octal literals are not allowed in strict mode.";
    case 1124: return "Digit expected.";
    case 1125: return "Hexadecimal digit expected.";
    case 1126: return "Unexpected end of text.";
    case 1127: return "Invalid character.";
    case 1130: return "'case' or 'default' expected.";
    case 1140: return "Type argument expected.";
    case 1141: return "String literal expected.";
    case 1142: return "Line break not permitted here.";
    case 1146: return "Declaration expected.";
    case 1161: return "Unterminated regular expression literal.";
    case 1177: return "Binary digit expected.";
    case 1178: return "Octal digit expected.";
    case 1183: return "An implementation cannot be declared in ambient contexts.";
    case 1198: return "An extended Unicode escape value must be between 0x0 and 0x10FFFF inclusive.";
    case 1199: return "Unterminated Unicode escape sequence.";
    case 1206: return "Decorators are not valid here.";
    case 1242: return "'abstract' modifier can only appear on a class, method, or property declaration.";
    case 2300: return "Duplicate identifier '{0}'.";
    case 2304: return "Cannot find name '{0}'.";
    case 2305: return "Module '{0}' has no exported member '{1}'.";
    case 2314: return "Generic type '{0}' requires {1} type argument(s).";
    case 2315: return "Type '{0}' is not generic.";
    case 2322: return "Type '{0}' is not assignable to type '{1}'.";
    case 2332: return "'this' cannot be referenced in current location.";
    case 2339: return "Property '{0}' does not exist on type '{1}'.";
    case 2349: return "Cannot invoke an expression whose type lacks a call signature. Type '{0}' has no compatible call signatures.";
    case 2357: return "The operand of an increment or decrement operator must be a variable or a property access.";
    case 2364: return "The left-hand side of an assignment expression must be a variable or a property access.";
    case 2391: return "Function implementation is missing or not immediately following the declaration.";
    case 2393: return "Duplicate function implementation.";
    case 2484: return "Export declaration conflicts with exported declaration of '{0}'.";
    case 2540: return "Cannot assign to '{0}' because it is a constant or a read-only property.";
    case 2541: return "The target of an assignment must be a variable or a property access.";
    case 2554: return "Expected {0} arguments, but got {1}.";
    case 2555: return "Expected at least {0} arguments, but got {1}.";
    case 2558: return "Expected {0} type arguments, but got {1}.";
    case 6054: return "File '{0}' not found.";
    default: return "";
  }
}
