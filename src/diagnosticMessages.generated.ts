/**
 * Generated from diagnosticsMessages.json. Do not edit.
 * @module diagnostics
 *//***/

/* tslint:disable:max-line-length */

/** Enum of available diagnostic codes. */
export enum DiagnosticCode {
  Operation_not_supported = 100,
  Operation_is_unsafe = 101,
  User_defined_0 = 102,
  Conversion_from_type_0_to_1_requires_an_explicit_cast = 200,
  Conversion_from_type_0_to_1_will_require_an_explicit_cast_when_switching_between_32_64_bit = 201,
  Type_0_cannot_be_changed_to_type_1 = 202,
  Type_0_cannot_be_reinterpreted_as_type_1 = 203,
  Basic_type_0_cannot_be_nullable = 204,
  Cannot_export_a_mutable_global = 205,
  Compiling_constant_with_non_constant_initializer_as_mutable = 206,
  Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa = 207,
  Unmanaged_classes_cannot_implement_interfaces = 208,
  Invalid_regular_expression_flags = 209,
  Implementation_0_must_match_the_signature_1 = 210,
  Class_0_is_sealed_and_cannot_be_extended = 211,
  Decorator_0_is_not_valid_here = 212,
  Duplicate_decorator = 213,
  An_allocator_must_be_declared_to_allocate_memory_Try_importing_allocator_arena_or_allocator_tlsf = 214,
  Optional_parameter_must_have_an_initializer = 215,
  Constructor_of_class_0_must_not_require_any_arguments = 216,
  Function_0_cannot_be_inlined_into_itself = 217,
  Cannot_access_method_0_without_calling_it_as_it_requires_this_to_be_set = 218,
  Optional_properties_are_not_supported = 219,
  Expression_must_be_a_compile_time_constant = 220,
  Module_cannot_have_multiple_start_functions = 221,
  _0_must_be_a_value_between_1_and_2_inclusive = 222,
  _0_must_be_a_power_of_two = 223,
  Unterminated_string_literal = 1002,
  Identifier_expected = 1003,
  _0_expected = 1005,
  A_file_cannot_have_a_reference_to_itself = 1006,
  Trailing_comma_not_allowed = 1009,
  Unexpected_token = 1012,
  A_rest_parameter_must_be_last_in_a_parameter_list = 1014,
  Parameter_cannot_have_question_mark_and_initializer = 1015,
  A_required_parameter_cannot_follow_an_optional_parameter = 1016,
  Statements_are_not_allowed_in_ambient_contexts = 1036,
  Initializers_are_not_allowed_in_ambient_contexts = 1039,
  _0_modifier_cannot_be_used_here = 1042,
  A_rest_parameter_cannot_be_optional = 1047,
  A_rest_parameter_cannot_have_an_initializer = 1048,
  A_set_accessor_must_have_exactly_one_parameter = 1049,
  A_set_accessor_parameter_cannot_have_an_initializer = 1052,
  A_get_accessor_cannot_have_parameters = 1054,
  Enum_member_must_have_initializer = 1061,
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
  _super_must_be_followed_by_an_argument_list_or_member_access = 1034,
  A_declare_modifier_cannot_be_used_in_an_already_ambient_context = 1038,
  Type_argument_expected = 1140,
  String_literal_expected = 1141,
  Line_break_not_permitted_here = 1142,
  Declaration_expected = 1146,
  _const_declarations_must_be_initialized = 1155,
  Unterminated_regular_expression_literal = 1161,
  Interface_declaration_cannot_have_implements_clause = 1176,
  Binary_digit_expected = 1177,
  Octal_digit_expected = 1178,
  An_implementation_cannot_be_declared_in_ambient_contexts = 1183,
  An_extended_Unicode_escape_value_must_be_between_0x0_and_0x10FFFF_inclusive = 1198,
  Unterminated_Unicode_escape_sequence = 1199,
  Decorators_are_not_valid_here = 1206,
  _abstract_modifier_can_only_appear_on_a_class_method_or_property_declaration = 1242,
  Method_0_cannot_have_an_implementation_because_it_is_marked_abstract = 1245,
  A_definite_assignment_assertion_is_not_permitted_in_this_context = 1255,
  A_class_may_only_extend_another_class = 1311,
  A_parameter_property_cannot_be_declared_using_a_rest_parameter = 1317,
  Duplicate_identifier_0 = 2300,
  Cannot_find_name_0 = 2304,
  Module_0_has_no_exported_member_1 = 2305,
  Generic_type_0_requires_1_type_argument_s = 2314,
  Type_0_is_not_generic = 2315,
  Type_0_is_not_assignable_to_type_1 = 2322,
  Index_signature_is_missing_in_type_0 = 2329,
  _this_cannot_be_referenced_in_current_location = 2332,
  _super_can_only_be_referenced_in_a_derived_class = 2335,
  Super_calls_are_not_permitted_outside_constructors_or_in_nested_functions_inside_constructors = 2337,
  Property_0_does_not_exist_on_type_1 = 2339,
  Cannot_invoke_an_expression_whose_type_lacks_a_call_signature_Type_0_has_no_compatible_call_signatures = 2349,
  Cannot_use_new_with_an_expression_whose_type_lacks_a_construct_signature = 2351,
  A_function_whose_declared_type_is_not_void_must_return_a_value = 2355,
  The_operand_of_an_increment_or_decrement_operator_must_be_a_variable_or_a_property_access = 2357,
  The_left_hand_side_of_an_assignment_expression_must_be_a_variable_or_a_property_access = 2364,
  Operator_0_cannot_be_applied_to_types_1_and_2 = 2365,
  A_super_call_must_be_the_first_statement_in_the_constructor = 2376,
  Constructors_for_derived_classes_must_contain_a_super_call = 2377,
  _get_and_set_accessor_must_have_the_same_type = 2380,
  Constructor_implementation_is_missing = 2390,
  Function_implementation_is_missing_or_not_immediately_following_the_declaration = 2391,
  Multiple_constructor_implementations_are_not_allowed = 2392,
  Duplicate_function_implementation = 2393,
  Individual_declarations_in_merged_declaration_0_must_be_all_exported_or_all_local = 2395,
  A_namespace_declaration_cannot_be_located_prior_to_a_class_or_function_with_which_it_is_merged = 2434,
  Type_0_has_no_property_1 = 2460,
  The_0_operator_cannot_be_applied_to_type_1 = 2469,
  In_const_enum_declarations_member_initializer_must_be_constant_expression = 2474,
  Export_declaration_conflicts_with_exported_declaration_of_0 = 2484,
  Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property = 2540,
  The_target_of_an_assignment_must_be_a_variable_or_a_property_access = 2541,
  Index_signature_in_type_0_only_permits_reading = 2542,
  Expected_0_arguments_but_got_1 = 2554,
  Expected_at_least_0_arguments_but_got_1 = 2555,
  Expected_0_type_arguments_but_got_1 = 2558,
  A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums = 2651,
  Constructor_of_class_0_is_private_and_only_accessible_within_the_class_declaration = 2673,
  Constructor_of_class_0_is_protected_and_only_accessible_within_the_class_declaration = 2674,
  Namespace_0_has_no_exported_member_1 = 2694,
  Required_type_parameters_may_not_follow_optional_type_parameters = 2706,
  Duplicate_property_0 = 2718,
  File_0_not_found = 6054,
  Numeric_separators_are_not_allowed_here = 6188,
  Multiple_consecutive_numeric_separators_are_not_permitted = 6189,
  _super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class = 17009,
  _super_must_be_called_before_accessing_a_property_of_super_in_the_constructor_of_a_derived_class = 17011
}

/** Translates a diagnostic code to its respective string. */
export function diagnosticCodeToString(code: DiagnosticCode): string {
  switch (code) {
    case 100: return "Operation not supported.";
    case 101: return "Operation is unsafe.";
    case 102: return "User-defined: {0}";
    case 200: return "Conversion from type '{0}' to '{1}' requires an explicit cast.";
    case 201: return "Conversion from type '{0}' to '{1}' will require an explicit cast when switching between 32/64-bit.";
    case 202: return "Type '{0}' cannot be changed to type '{1}'.";
    case 203: return "Type '{0}' cannot be reinterpreted as type '{1}'.";
    case 204: return "Basic type '{0}' cannot be nullable.";
    case 205: return "Cannot export a mutable global.";
    case 206: return "Compiling constant with non-constant initializer as mutable.";
    case 207: return "Unmanaged classes cannot extend managed classes and vice-versa.";
    case 208: return "Unmanaged classes cannot implement interfaces.";
    case 209: return "Invalid regular expression flags.";
    case 210: return "Implementation '{0}' must match the signature '{1}'.";
    case 211: return "Class '{0}' is sealed and cannot be extended.";
    case 212: return "Decorator '{0}' is not valid here.";
    case 213: return "Duplicate decorator.";
    case 214: return "An allocator must be declared to allocate memory. Try importing allocator/arena or allocator/tlsf.";
    case 215: return "Optional parameter must have an initializer.";
    case 216: return "Constructor of class '{0}' must not require any arguments.";
    case 217: return "Function '{0}' cannot be inlined into itself.";
    case 218: return "Cannot access method '{0}' without calling it as it requires 'this' to be set.";
    case 219: return "Optional properties are not supported.";
    case 220: return "Expression must be a compile-time constant.";
    case 221: return "Module cannot have multiple start functions.";
    case 222: return "'{0}' must be a value between '{1}' and '{2}' inclusive.";
    case 223: return "'{0}' must be a power of two.";
    case 1002: return "Unterminated string literal.";
    case 1003: return "Identifier expected.";
    case 1005: return "'{0}' expected.";
    case 1006: return "A file cannot have a reference to itself.";
    case 1009: return "Trailing comma not allowed.";
    case 1012: return "Unexpected token.";
    case 1014: return "A rest parameter must be last in a parameter list.";
    case 1015: return "Parameter cannot have question mark and initializer.";
    case 1016: return "A required parameter cannot follow an optional parameter.";
    case 1036: return "Statements are not allowed in ambient contexts.";
    case 1039: return "Initializers are not allowed in ambient contexts.";
    case 1042: return "'{0}' modifier cannot be used here.";
    case 1047: return "A rest parameter cannot be optional.";
    case 1048: return "A rest parameter cannot have an initializer.";
    case 1049: return "A 'set' accessor must have exactly one parameter.";
    case 1052: return "A 'set' accessor parameter cannot have an initializer.";
    case 1054: return "A 'get' accessor cannot have parameters.";
    case 1061: return "Enum member must have initializer.";
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
    case 1034: return "'super' must be followed by an argument list or member access.";
    case 1038: return "A 'declare' modifier cannot be used in an already ambient context.";
    case 1140: return "Type argument expected.";
    case 1141: return "String literal expected.";
    case 1142: return "Line break not permitted here.";
    case 1146: return "Declaration expected.";
    case 1155: return "'const' declarations must be initialized.";
    case 1161: return "Unterminated regular expression literal.";
    case 1176: return "Interface declaration cannot have 'implements' clause.";
    case 1177: return "Binary digit expected.";
    case 1178: return "Octal digit expected.";
    case 1183: return "An implementation cannot be declared in ambient contexts.";
    case 1198: return "An extended Unicode escape value must be between 0x0 and 0x10FFFF inclusive.";
    case 1199: return "Unterminated Unicode escape sequence.";
    case 1206: return "Decorators are not valid here.";
    case 1242: return "'abstract' modifier can only appear on a class, method, or property declaration.";
    case 1245: return "Method '{0}' cannot have an implementation because it is marked abstract.";
    case 1255: return "A definite assignment assertion '!' is not permitted in this context.";
    case 1311: return "A class may only extend another class.";
    case 1317: return "A parameter property cannot be declared using a rest parameter.";
    case 2300: return "Duplicate identifier '{0}'.";
    case 2304: return "Cannot find name '{0}'.";
    case 2305: return "Module '{0}' has no exported member '{1}'.";
    case 2314: return "Generic type '{0}' requires {1} type argument(s).";
    case 2315: return "Type '{0}' is not generic.";
    case 2322: return "Type '{0}' is not assignable to type '{1}'.";
    case 2329: return "Index signature is missing in type '{0}'.";
    case 2332: return "'this' cannot be referenced in current location.";
    case 2335: return "'super' can only be referenced in a derived class.";
    case 2337: return "Super calls are not permitted outside constructors or in nested functions inside constructors.";
    case 2339: return "Property '{0}' does not exist on type '{1}'.";
    case 2349: return "Cannot invoke an expression whose type lacks a call signature. Type '{0}' has no compatible call signatures.";
    case 2351: return "Cannot use 'new' with an expression whose type lacks a construct signature.";
    case 2355: return "A function whose declared type is not 'void' must return a value.";
    case 2357: return "The operand of an increment or decrement operator must be a variable or a property access.";
    case 2364: return "The left-hand side of an assignment expression must be a variable or a property access.";
    case 2365: return "Operator '{0}' cannot be applied to types '{1}' and '{2}'.";
    case 2376: return "A 'super' call must be the first statement in the constructor.";
    case 2377: return "Constructors for derived classes must contain a 'super' call.";
    case 2380: return "'get' and 'set' accessor must have the same type.";
    case 2390: return "Constructor implementation is missing.";
    case 2391: return "Function implementation is missing or not immediately following the declaration.";
    case 2392: return "Multiple constructor implementations are not allowed.";
    case 2393: return "Duplicate function implementation.";
    case 2395: return "Individual declarations in merged declaration '{0}' must be all exported or all local.";
    case 2434: return "A namespace declaration cannot be located prior to a class or function with which it is merged.";
    case 2460: return "Type '{0}' has no property '{1}'.";
    case 2469: return "The '{0}' operator cannot be applied to type '{1}'.";
    case 2474: return "In 'const' enum declarations member initializer must be constant expression.";
    case 2484: return "Export declaration conflicts with exported declaration of '{0}'.";
    case 2540: return "Cannot assign to '{0}' because it is a constant or a read-only property.";
    case 2541: return "The target of an assignment must be a variable or a property access.";
    case 2542: return "Index signature in type '{0}' only permits reading.";
    case 2554: return "Expected {0} arguments, but got {1}.";
    case 2555: return "Expected at least {0} arguments, but got {1}.";
    case 2558: return "Expected {0} type arguments, but got {1}.";
    case 2651: return "A member initializer in a enum declaration cannot reference members declared after it, including members defined in other enums.";
    case 2673: return "Constructor of class '{0}' is private and only accessible within the class declaration.";
    case 2674: return "Constructor of class '{0}' is protected and only accessible within the class declaration.";
    case 2694: return "Namespace '{0}' has no exported member '{1}'.";
    case 2706: return "Required type parameters may not follow optional type parameters.";
    case 2718: return "Duplicate property '{0}'.";
    case 6054: return "File '{0}' not found.";
    case 6188: return "Numeric separators are not allowed here.";
    case 6189: return "Multiple consecutive numeric separators are not permitted.";
    case 17009: return "'super' must be called before accessing 'this' in the constructor of a derived class.";
    case 17011: return "'super' must be called before accessing a property of 'super' in the constructor of a derived class.";
    default: return "";
  }
}
