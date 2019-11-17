declare module "assemblyscript" {
    export * from "assemblyscript/src/index";
}
declare module "assemblyscript/src/common" {
    /**
     * Common constants.
     * @module common
     */ /***/
    /** Indicates traits of a {@link Node} or {@link Element}. */
    export enum CommonFlags {
        /** No flags set. */
        NONE = 0,
        /** Has an `import` modifier. */
        IMPORT = 1,
        /** Has an `export` modifier. */
        EXPORT = 2,
        /** Has a `declare` modifier. */
        DECLARE = 4,
        /** Has a `const` modifier. */
        CONST = 8,
        /** Has a `let` modifier. */
        LET = 16,
        /** Has a `static` modifier. */
        STATIC = 32,
        /** Has a `readonly` modifier. */
        READONLY = 64,
        /** Has an `abstract` modifier. */
        ABSTRACT = 128,
        /** Has a `public` modifier. */
        PUBLIC = 256,
        /** Has a `private` modifier. */
        PRIVATE = 512,
        /** Has a `protected` modifier. */
        PROTECTED = 1024,
        /** Has a `get` modifier. */
        GET = 2048,
        /** Has a `set` modifier. */
        SET = 4096,
        /** Has a definite assignment assertion `!` as in `x!: i32;`. */
        DEFINITE_ASSIGNMENT = 8192,
        /** Is ambient, that is either declared or nested in a declared element. */
        AMBIENT = 16384,
        /** Is generic. */
        GENERIC = 32768,
        /** Is part of a generic context. */
        GENERIC_CONTEXT = 65536,
        /** Is an instance member. */
        INSTANCE = 131072,
        /** Is a constructor. */
        CONSTRUCTOR = 262144,
        /** Is a module export. */
        MODULE_EXPORT = 524288,
        /** Is a module import. */
        MODULE_IMPORT = 1048576,
        /** Is resolved. */
        RESOLVED = 2097152,
        /** Is compiled. */
        COMPILED = 4194304,
        /** Has a constant value and is therefore inlined. */
        INLINED = 8388608,
        /** Is scoped. */
        SCOPED = 16777216,
        /** Is a trampoline. */
        TRAMPOLINE = 33554432,
        /** Is a virtual method. */
        VIRTUAL = 67108864,
        /** Is the main function. */
        MAIN = 134217728,
        /** Is quoted. */
        QUOTED = 268435456
    }
    /** Path delimiter inserted between file system levels. */
    export const PATH_DELIMITER = "/";
    /** Substitution used to indicate the parent directory. */
    export const PARENT_SUBST = "..";
    /** Function name prefix used for getters. */
    export const GETTER_PREFIX = "get:";
    /** Function name prefix used for setters. */
    export const SETTER_PREFIX = "set:";
    /** Delimiter used between class names and instance members. */
    export const INSTANCE_DELIMITER = "#";
    /** Delimiter used between class and namespace names and static members. */
    export const STATIC_DELIMITER = ".";
    /** Delimiter used between a function and its inner elements. */
    export const INNER_DELIMITER = "~";
    /** Substitution used to indicate a library directory. */
    export const LIBRARY_SUBST = "~lib";
    /** Library directory prefix. */
    export const LIBRARY_PREFIX: string;
    /** Path index suffix. */
    export const INDEX_SUFFIX: string;
    /** Common compiler symbols. */
    export namespace CommonSymbols {
        const EMPTY = "";
        const i8 = "i8";
        const i16 = "i16";
        const i32 = "i32";
        const i64 = "i64";
        const isize = "isize";
        const u8 = "u8";
        const u16 = "u16";
        const u32 = "u32";
        const u64 = "u64";
        const usize = "usize";
        const bool = "bool";
        const f32 = "f32";
        const f64 = "f64";
        const v128 = "v128";
        const anyref = "anyref";
        const i8x16 = "i8x16";
        const u8x16 = "u8x16";
        const i16x8 = "i16x8";
        const u16x8 = "u16x8";
        const i32x4 = "i32x4";
        const u32x4 = "u32x4";
        const i64x2 = "i64x2";
        const u64x2 = "u64x2";
        const f32x4 = "f32x4";
        const f64x2 = "f64x2";
        const void_ = "void";
        const number = "number";
        const boolean = "boolean";
        const string = "string";
        const native = "native";
        const indexof = "indexof";
        const valueof = "valueof";
        const returnof = "returnof";
        const null_ = "null";
        const true_ = "true";
        const false_ = "false";
        const this_ = "this";
        const super_ = "super";
        const constructor = "constructor";
        const ASC_TARGET = "ASC_TARGET";
        const ASC_NO_TREESHAKING = "ASC_NO_TREESHAKING";
        const ASC_NO_ASSERT = "ASC_NO_ASSERT";
        const ASC_MEMORY_BASE = "ASC_MEMORY_BASE";
        const ASC_OPTIMIZE_LEVEL = "ASC_OPTIMIZE_LEVEL";
        const ASC_SHRINK_LEVEL = "ASC_SHRINK_LEVEL";
        const ASC_FEATURE_SIGN_EXTENSION = "ASC_FEATURE_SIGN_EXTENSION";
        const ASC_FEATURE_MUTABLE_GLOBALS = "ASC_FEATURE_MUTABLE_GLOBALS";
        const ASC_FEATURE_NONTRAPPING_F2I = "ASC_FEATURE_NONTRAPPING_F2I";
        const ASC_FEATURE_BULK_MEMORY = "ASC_FEATURE_BULK_MEMORY";
        const ASC_FEATURE_SIMD = "ASC_FEATURE_SIMD";
        const ASC_FEATURE_THREADS = "ASC_FEATURE_THREADS";
        const ASC_FEATURE_EXCEPTION_HANDLING = "ASC_FEATURE_EXCEPTION_HANDLING";
        const ASC_FEATURE_TAIL_CALLS = "ASC_FEATURE_TAIL_CALLS";
        const ASC_FEATURE_REFERENCE_TYPES = "ASC_FEATURE_REFERENCE_TYPES";
        const I8 = "I8";
        const I16 = "I16";
        const I32 = "I32";
        const I64 = "I64";
        const Isize = "Isize";
        const U8 = "U8";
        const U16 = "U16";
        const U32 = "U32";
        const U64 = "U64";
        const Usize = "Usize";
        const Bool = "Bool";
        const F32 = "F32";
        const F64 = "F64";
        const V128 = "V128";
        const Anyref = "Anyref";
        const String = "String";
        const Array = "Array";
        const FixedArray = "FixedArray";
        const Set = "Set";
        const Map = "Map";
        const ArrayBufferView = "ArrayBufferView";
        const ArrayBuffer = "ArrayBuffer";
        const Math = "Math";
        const Mathf = "Mathf";
        const Int8Array = "Int8Array";
        const Int16Array = "Int16Array";
        const Int32Array = "Int32Array";
        const Int64Array = "Int64Array";
        const Uint8Array = "Uint8Array";
        const Uint8ClampedArray = "Uint8ClampedArray";
        const Uint16Array = "Uint16Array";
        const Uint32Array = "Uint32Array";
        const Uint64Array = "Uint64Array";
        const Float32Array = "Float32Array";
        const Float64Array = "Float64Array";
        const abort = "abort";
        const pow = "pow";
        const mod = "mod";
        const alloc = "__alloc";
        const realloc = "__realloc";
        const free = "__free";
        const retain = "__retain";
        const release = "__release";
        const collect = "__collect";
        const typeinfo = "__typeinfo";
        const instanceof_ = "__instanceof";
        const visit = "__visit";
        const allocArray = "__allocArray";
    }
    export { Feature, featureToString } from "assemblyscript/std/assembly/shared/feature";
    export { Target } from "assemblyscript/std/assembly/shared/target";
    export { Typeinfo, TypeinfoFlags } from "assemblyscript/std/assembly/shared/typeinfo";
}
declare module "assemblyscript/src/diagnosticMessages.generated" {
    /**
     * Generated from diagnosticsMessages.json. Do not edit.
     * @module diagnostics
     */ /***/
    /** Enum of available diagnostic codes. */
    export enum DiagnosticCode {
        Not_implemented = 100,
        Operation_is_unsafe = 101,
        User_defined_0 = 102,
        Feature_0_is_not_enabled = 103,
        Conversion_from_type_0_to_1_requires_an_explicit_cast = 200,
        Conversion_from_type_0_to_1_will_require_an_explicit_cast_when_switching_between_32_64_bit = 201,
        Type_0_cannot_be_changed_to_type_1 = 202,
        Operation_0_cannot_be_applied_to_type_1 = 203,
        Basic_type_0_cannot_be_nullable = 204,
        Cannot_export_a_mutable_global = 205,
        Mutable_value_cannot_be_inlined = 206,
        Unmanaged_classes_cannot_extend_managed_classes_and_vice_versa = 207,
        Unmanaged_classes_cannot_implement_interfaces = 208,
        Invalid_regular_expression_flags = 209,
        Expression_is_never_null = 210,
        Class_0_is_sealed_and_cannot_be_extended = 211,
        Decorator_0_is_not_valid_here = 212,
        Duplicate_decorator = 213,
        Type_0_is_illegal_in_this_context = 214,
        Optional_parameter_must_have_an_initializer = 215,
        Constructor_of_class_0_must_not_require_any_arguments = 216,
        Function_0_cannot_be_inlined_into_itself = 217,
        Cannot_access_method_0_without_calling_it_as_it_requires_this_to_be_set = 218,
        Optional_properties_are_not_supported = 219,
        Expression_must_be_a_compile_time_constant = 220,
        Type_0_is_not_a_function_index_or_function_reference = 221,
        _0_must_be_a_value_between_1_and_2_inclusive = 222,
        _0_must_be_a_power_of_two = 223,
        _0_is_not_a_valid_operator = 224,
        Expression_cannot_be_represented_by_a_type = 225,
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
        An_export_assignment_cannot_have_modifiers = 1120,
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
        This_expression_is_not_constructable = 2351,
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
        The_type_argument_for_type_parameter_0_cannot_be_inferred_from_the_usage_Consider_specifying_the_type_arguments_explicitly = 2453,
        Type_0_has_no_property_1 = 2460,
        The_0_operator_cannot_be_applied_to_type_1 = 2469,
        In_const_enum_declarations_member_initializer_must_be_constant_expression = 2474,
        Export_declaration_conflicts_with_exported_declaration_of_0 = 2484,
        Object_is_possibly_null = 2531,
        Cannot_assign_to_0_because_it_is_a_constant_or_a_read_only_property = 2540,
        The_target_of_an_assignment_must_be_a_variable_or_a_property_access = 2541,
        Index_signature_in_type_0_only_permits_reading = 2542,
        Expected_0_arguments_but_got_1 = 2554,
        Expected_at_least_0_arguments_but_got_1 = 2555,
        Expected_0_type_arguments_but_got_1 = 2558,
        A_member_initializer_in_a_enum_declaration_cannot_reference_members_declared_after_it_including_members_defined_in_other_enums = 2651,
        Constructor_of_class_0_is_private_and_only_accessible_within_the_class_declaration = 2673,
        Constructor_of_class_0_is_protected_and_only_accessible_within_the_class_declaration = 2674,
        The_this_types_of_each_signature_are_incompatible = 2685,
        Namespace_0_has_no_exported_member_1 = 2694,
        Required_type_parameters_may_not_follow_optional_type_parameters = 2706,
        Duplicate_property_0 = 2718,
        Type_0_has_no_call_signatures = 2757,
        File_0_not_found = 6054,
        Numeric_separators_are_not_allowed_here = 6188,
        Multiple_consecutive_numeric_separators_are_not_permitted = 6189,
        _super_must_be_called_before_accessing_this_in_the_constructor_of_a_derived_class = 17009,
        _super_must_be_called_before_accessing_a_property_of_super_in_the_constructor_of_a_derived_class = 17011
    }
    /** Translates a diagnostic code to its respective string. */
    export function diagnosticCodeToString(code: DiagnosticCode): string;
}
declare module "assemblyscript/src/util/bitset" {
    /** @module util */ /***/
    /** Tests if the bit at the specified index is set within a 64-bit map. */
    export function bitsetIs(map: I64, index: number): boolean;
    /** Sets or unsets the bit at the specified index within a 64-bit map and returns the new map. */
    export function bitsetSet(map: I64, index: number, isSet: boolean): I64;
}
declare module "assemblyscript/src/util/charcode" {
    /** @module util */ /***/
    /** An enum of named character codes. */
    export const enum CharCode {
        NULL = 0,
        LINEFEED = 10,
        CARRIAGERETURN = 13,
        LINESEPARATOR = 8232,
        PARAGRAPHSEPARATOR = 8233,
        NEXTLINE = 133,
        SPACE = 32,
        NONBREAKINGSPACE = 160,
        ENQUAD = 8192,
        EMQUAD = 8193,
        ENSPACE = 8194,
        EMSPACE = 8195,
        THREEPEREMSPACE = 8196,
        FOURPEREMSPACE = 8197,
        SIXPEREMSPACE = 8198,
        FIGURESPACE = 8199,
        PUNCTUATIONSPACE = 8200,
        THINSPACE = 8201,
        HAIRSPACE = 8202,
        ZEROWIDTHSPACE = 8203,
        NARROWNOBREAKSPACE = 8239,
        IDEOGRAPHICSPACE = 12288,
        MATHEMATICALSPACE = 8287,
        OGHAM = 5760,
        _ = 95,
        _0 = 48,
        _1 = 49,
        _2 = 50,
        _3 = 51,
        _4 = 52,
        _5 = 53,
        _6 = 54,
        _7 = 55,
        _8 = 56,
        _9 = 57,
        a = 97,
        b = 98,
        c = 99,
        d = 100,
        e = 101,
        f = 102,
        g = 103,
        h = 104,
        i = 105,
        j = 106,
        k = 107,
        l = 108,
        m = 109,
        n = 110,
        o = 111,
        p = 112,
        q = 113,
        r = 114,
        s = 115,
        t = 116,
        u = 117,
        v = 118,
        w = 119,
        x = 120,
        y = 121,
        z = 122,
        A = 65,
        B = 66,
        C = 67,
        D = 68,
        E = 69,
        F = 70,
        G = 71,
        H = 72,
        I = 73,
        J = 74,
        K = 75,
        L = 76,
        M = 77,
        N = 78,
        O = 79,
        P = 80,
        Q = 81,
        R = 82,
        S = 83,
        T = 84,
        U = 85,
        V = 86,
        W = 87,
        X = 88,
        Y = 89,
        Z = 90,
        AMPERSAND = 38,
        ASTERISK = 42,
        AT = 64,
        BACKSLASH = 92,
        BACKTICK = 96,
        BAR = 124,
        CARET = 94,
        CLOSEBRACE = 125,
        CLOSEBRACKET = 93,
        CLOSEPAREN = 41,
        COLON = 58,
        COMMA = 44,
        DOLLAR = 36,
        DOT = 46,
        DOUBLEQUOTE = 34,
        EQUALS = 61,
        EXCLAMATION = 33,
        GREATERTHAN = 62,
        HASH = 35,
        LESSTHAN = 60,
        MINUS = 45,
        OPENBRACE = 123,
        OPENBRACKET = 91,
        OPENPAREN = 40,
        PERCENT = 37,
        PLUS = 43,
        QUESTION = 63,
        SEMICOLON = 59,
        SINGLEQUOTE = 39,
        SLASH = 47,
        TILDE = 126,
        BACKSPACE = 8,
        FORMFEED = 12,
        BYTEORDERMARK = 65279,
        TAB = 9,
        VERTICALTAB = 11
    }
    /** Tests if the specified character code is some sort of line break. */
    export function isLineBreak(c: CharCode): boolean;
    /** Tests if the specified character code is some sort of white space. */
    export function isWhiteSpace(c: number): boolean;
    /** Tests if the specified character code is a valid decimal digit. */
    export function isDecimalDigit(c: number): boolean;
    /** Tests if the specified character code is a valid octal digit. */
    export function isOctalDigit(c: number): boolean;
    /** Tests if the specified character code is a valid start of an identifier. */
    export function isIdentifierStart(c: number): boolean;
    /** Tests if the specified character code is a valid keyword character. */
    export function isKeywordCharacter(c: number): boolean;
    /** Tests if the specified character code is a valid part of an identifier. */
    export function isIdentifierPart(c: number): boolean;
}
declare module "assemblyscript/src/util/collections" {
    export function makeArray<V>(original?: Array<V> | null): Array<V>;
    export function makeSet<V>(original?: Set<V> | null): Set<V>;
    export function makeMap<K, V>(original?: Map<K, V> | null, overrides?: Map<K, V> | null): Map<K, V>;
}
declare module "assemblyscript/src/util/path" {
    /** @module util */ /***/
    /**
     * Normalizes the specified path, removing interior placeholders.
     * Expects a posix-compatible relative path (not Windows compatible).
     */
    export function normalizePath(path: string): string;
    /** Resolves the specified path relative to the specified origin. */
    export function resolvePath(normalizedPath: string, origin: string): string;
    /** Obtains the directory portion of a normalized path. */
    export function dirname(normalizedPath: string): string;
}
declare module "assemblyscript/src/util/text" {
    /** @module util */ /***/
    /** Creates an indentation matching the number of specified levels. */
    export function indent(sb: string[], level: number): void;
}
declare module "assemblyscript/src/util/binary" {
    /** @module util */ /***/
    /** Reads an 8-bit integer from the specified buffer. */
    export function readI8(buffer: Uint8Array, offset: number): number;
    /** Writes an 8-bit integer to the specified buffer. */
    export function writeI8(value: number, buffer: Uint8Array, offset: number): void;
    /** Reads a 16-bit integer from the specified buffer. */
    export function readI16(buffer: Uint8Array, offset: number): number;
    /** Writes a 16-bit integer to the specified buffer. */
    export function writeI16(value: number, buffer: Uint8Array, offset: number): void;
    /** Reads a 32-bit integer from the specified buffer. */
    export function readI32(buffer: Uint8Array, offset: number): number;
    /** Writes a 32-bit integer to the specified buffer. */
    export function writeI32(value: number, buffer: Uint8Array, offset: number): void;
    /** Reads a 64-bit integer from the specified buffer. */
    export function readI64(buffer: Uint8Array, offset: number): I64;
    /** Writes a 64-bit integer to the specified buffer. */
    export function writeI64(value: I64, buffer: Uint8Array, offset: number): void;
    /** Reads a 32-bit float from the specified buffer. */
    export function readF32(buffer: Uint8Array, offset: number): number;
    /** Writes a 32-bit float to the specified buffer. */
    export function writeF32(value: number, buffer: Uint8Array, offset: number): void;
    /** Reads a 64-bit float from the specified buffer. */
    export function readF64(buffer: Uint8Array, offset: number): number;
    /** Writes a 64-bit float to the specified buffer. */
    export function writeF64(value: number, buffer: Uint8Array, offset: number): void;
}
declare module "assemblyscript/src/util/index" {
    /**
     * Various compiler utilities.
     * @module util
     * @preferred
     */ /***/
    export * from "assemblyscript/src/util/bitset";
    export * from "assemblyscript/src/util/charcode";
    export * from "assemblyscript/src/util/collections";
    export * from "assemblyscript/src/util/path";
    export * from "assemblyscript/src/util/text";
    export * from "assemblyscript/src/util/binary";
    /** Tests if `x` is a power of two. */
    export function isPowerOf2(x: number): boolean;
}
declare module "assemblyscript/src/diagnostics" {
    /**
     * Shared diagnostic handling inherited by the parser and the compiler.
     * @module diagnostics
     * @preferred
     */ /***/
    import { Range } from "assemblyscript/src/ast";
    import { DiagnosticCode } from "assemblyscript/src/diagnosticMessages.generated";
    export { DiagnosticCode, diagnosticCodeToString } from "assemblyscript/src/diagnosticMessages.generated";
    /** Indicates the category of a {@link DiagnosticMessage}. */
    export enum DiagnosticCategory {
        /** Informatory message. */
        INFO = 0,
        /** Warning message. */
        WARNING = 1,
        /** Error message. */
        ERROR = 2
    }
    /** Returns the string representation of the specified diagnostic category. */
    export function diagnosticCategoryToString(category: DiagnosticCategory): string;
    /** ANSI escape sequence for blue foreground. */
    export const COLOR_BLUE: string;
    /** ANSI escape sequence for yellow foreground. */
    export const COLOR_YELLOW: string;
    /** ANSI escape sequence for red foreground. */
    export const COLOR_RED: string;
    /** ANSI escape sequence to reset the foreground color. */
    export const COLOR_RESET: string;
    /** Returns the ANSI escape sequence for the specified category. */
    export function diagnosticCategoryToColor(category: DiagnosticCategory): string;
    /** Represents a diagnostic message. */
    export class DiagnosticMessage {
        /** Message code. */
        code: number;
        /** Message category. */
        category: DiagnosticCategory;
        /** Message text. */
        message: string;
        /** Respective source range, if any. */
        range: Range | null;
        /** Related range, if any. */
        relatedRange: Range | null;
        /** Constructs a new diagnostic message. */
        private constructor();
        /** Creates a new diagnostic message of the specified category. */
        static create(code: DiagnosticCode, category: DiagnosticCategory, arg0?: string | null, arg1?: string | null, arg2?: string | null): DiagnosticMessage;
        /** Creates a new informatory diagnostic message. */
        static createInfo(code: DiagnosticCode, arg0?: string | null, arg1?: string | null): DiagnosticMessage;
        /** Creates a new warning diagnostic message. */
        static createWarning(code: DiagnosticCode, arg0?: string | null, arg1?: string | null): DiagnosticMessage;
        /** Creates a new error diagnostic message. */
        static createError(code: DiagnosticCode, arg0?: string | null, arg1?: string | null): DiagnosticMessage;
        /** Adds a source range to this message. */
        withRange(range: Range): this;
        /** Adds a related source range to this message. */
        withRelatedRange(range: Range): this;
        /** Converts this message to a string. */
        toString(): string;
    }
    /** Formats a diagnostic message, optionally with terminal colors and source context. */
    export function formatDiagnosticMessage(message: DiagnosticMessage, useColors?: boolean, showContext?: boolean): string;
    /** Formats the diagnostic context for the specified range, optionally with terminal colors. */
    export function formatDiagnosticContext(range: Range, useColors?: boolean): string;
    /** Base class of all diagnostic emitters. */
    export abstract class DiagnosticEmitter {
        /** Diagnostic messages emitted so far. */
        diagnostics: DiagnosticMessage[];
        /** Initializes this diagnostic emitter. */
        protected constructor(diagnostics?: DiagnosticMessage[] | null);
        /** Emits a diagnostic message of the specified category. */
        emitDiagnostic(code: DiagnosticCode, category: DiagnosticCategory, range: Range, relatedRange: Range | null, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits an informatory diagnostic message. */
        info(code: DiagnosticCode, range: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits an informatory diagnostic message with a related range. */
        infoRelated(code: DiagnosticCode, range: Range, relatedRange: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits a warning diagnostic message. */
        warning(code: DiagnosticCode, range: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits a warning diagnostic message with a related range. */
        warningRelated(code: DiagnosticCode, range: Range, relatedRange: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits an error diagnostic message. */
        error(code: DiagnosticCode, range: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
        /** Emits an error diagnostic message with a related range. */
        errorRelated(code: DiagnosticCode, range: Range, relatedRange: Range, arg0?: string | null, arg1?: string | null, arg2?: string | null): void;
    }
}
declare module "assemblyscript/src/tokenizer" {
    /**
     * A TypeScript tokenizer modified for AssemblyScript.
     *
     * Skips over trivia and provides a general mark/reset mechanism for the parser to utilize on
     * ambiguous tokens.
     *
     * @module tokenizer
     */ /***/
    import { DiagnosticMessage, DiagnosticEmitter } from "assemblyscript/src/diagnostics";
    import { Source, CommentKind } from "assemblyscript/src/ast";
    /** Named token types. */
    export enum Token {
        ABSTRACT = 0,
        AS = 1,
        ASYNC = 2,
        AWAIT = 3,
        BREAK = 4,
        CASE = 5,
        CATCH = 6,
        CLASS = 7,
        CONST = 8,
        CONTINUE = 9,
        CONSTRUCTOR = 10,
        DEBUGGER = 11,
        DECLARE = 12,
        DEFAULT = 13,
        DELETE = 14,
        DO = 15,
        ELSE = 16,
        ENUM = 17,
        EXPORT = 18,
        EXTENDS = 19,
        FALSE = 20,
        FINALLY = 21,
        FOR = 22,
        FROM = 23,
        FUNCTION = 24,
        GET = 25,
        IF = 26,
        IMPLEMENTS = 27,
        IMPORT = 28,
        IN = 29,
        INSTANCEOF = 30,
        INTERFACE = 31,
        IS = 32,
        KEYOF = 33,
        LET = 34,
        MODULE = 35,
        NAMESPACE = 36,
        NEW = 37,
        NULL = 38,
        OF = 39,
        PACKAGE = 40,
        PRIVATE = 41,
        PROTECTED = 42,
        PUBLIC = 43,
        READONLY = 44,
        RETURN = 45,
        SET = 46,
        STATIC = 47,
        SUPER = 48,
        SWITCH = 49,
        THIS = 50,
        THROW = 51,
        TRUE = 52,
        TRY = 53,
        TYPE = 54,
        TYPEOF = 55,
        VAR = 56,
        VOID = 57,
        WHILE = 58,
        WITH = 59,
        YIELD = 60,
        OPENBRACE = 61,
        CLOSEBRACE = 62,
        OPENPAREN = 63,
        CLOSEPAREN = 64,
        OPENBRACKET = 65,
        CLOSEBRACKET = 66,
        DOT = 67,
        DOT_DOT_DOT = 68,
        SEMICOLON = 69,
        COMMA = 70,
        LESSTHAN = 71,
        GREATERTHAN = 72,
        LESSTHAN_EQUALS = 73,
        GREATERTHAN_EQUALS = 74,
        EQUALS_EQUALS = 75,
        EXCLAMATION_EQUALS = 76,
        EQUALS_EQUALS_EQUALS = 77,
        EXCLAMATION_EQUALS_EQUALS = 78,
        EQUALS_GREATERTHAN = 79,
        PLUS = 80,
        MINUS = 81,
        ASTERISK_ASTERISK = 82,
        ASTERISK = 83,
        SLASH = 84,
        PERCENT = 85,
        PLUS_PLUS = 86,
        MINUS_MINUS = 87,
        LESSTHAN_LESSTHAN = 88,
        GREATERTHAN_GREATERTHAN = 89,
        GREATERTHAN_GREATERTHAN_GREATERTHAN = 90,
        AMPERSAND = 91,
        BAR = 92,
        CARET = 93,
        EXCLAMATION = 94,
        TILDE = 95,
        AMPERSAND_AMPERSAND = 96,
        BAR_BAR = 97,
        QUESTION = 98,
        COLON = 99,
        EQUALS = 100,
        PLUS_EQUALS = 101,
        MINUS_EQUALS = 102,
        ASTERISK_EQUALS = 103,
        ASTERISK_ASTERISK_EQUALS = 104,
        SLASH_EQUALS = 105,
        PERCENT_EQUALS = 106,
        LESSTHAN_LESSTHAN_EQUALS = 107,
        GREATERTHAN_GREATERTHAN_EQUALS = 108,
        GREATERTHAN_GREATERTHAN_GREATERTHAN_EQUALS = 109,
        AMPERSAND_EQUALS = 110,
        BAR_EQUALS = 111,
        CARET_EQUALS = 112,
        AT = 113,
        IDENTIFIER = 114,
        STRINGLITERAL = 115,
        INTEGERLITERAL = 116,
        FLOATLITERAL = 117,
        INVALID = 118,
        ENDOFFILE = 119
    }
    export enum IdentifierHandling {
        DEFAULT = 0,
        PREFER = 1,
        ALWAYS = 2
    }
    export function tokenFromKeyword(text: string): Token;
    export function tokenIsAlsoIdentifier(token: Token): boolean;
    export function isIllegalVariableIdentifier(name: string): boolean;
    export function operatorTokenToString(token: Token): string;
    export class Range {
        source: Source;
        start: number;
        end: number;
        constructor(source: Source, start: number, end: number);
        static join(a: Range, b: Range): Range;
        get atStart(): Range;
        get atEnd(): Range;
        get line(): number;
        get column(): number;
        toString(): string;
        debugInfoRef: number;
    }
    /** Handler for intercepting comments while tokenizing. */
    export type CommentHandler = (kind: CommentKind, text: string, range: Range) => void;
    /** Tokenizes a source to individual {@link Token}s. */
    export class Tokenizer extends DiagnosticEmitter {
        source: Source;
        end: number;
        pos: number;
        token: Token;
        tokenPos: number;
        nextToken: Token;
        nextTokenPos: number;
        nextTokenOnNewLine: boolean;
        onComment: CommentHandler | null;
        /** Constructs a new tokenizer. */
        constructor(source: Source, diagnostics?: DiagnosticMessage[] | null);
        next(identifierHandling?: IdentifierHandling): Token;
        private unsafeNext;
        peek(checkOnNewLine?: boolean, identifierHandling?: IdentifierHandling, maxCompoundLength?: number): Token;
        skipIdentifier(identifierHandling?: IdentifierHandling): boolean;
        skip(token: Token, identifierHandling?: IdentifierHandling): boolean;
        mark(): State;
        discard(state: State): void;
        reset(state: State): void;
        range(start?: number, end?: number): Range;
        readIdentifier(): string;
        readString(): string;
        readEscapeSequence(): string;
        readRegexpPattern(): string;
        readRegexpFlags(): string;
        testInteger(): boolean;
        readInteger(): I64;
        readHexInteger(): I64;
        readDecimalInteger(): I64;
        readOctalInteger(): I64;
        readBinaryInteger(): I64;
        readFloat(): number;
        readDecimalFloat(): number;
        readHexFloat(): number;
        readUnicodeEscape(): string;
        private readExtendedUnicodeEscape;
        finish(): void;
    }
    /** Tokenizer state as returned by {@link Tokenizer#mark} and consumed by {@link Tokenizer#reset}. */
    export class State {
        /** Current position. */
        pos: number;
        /** Current token. */
        token: Token;
        /** Current token's position. */
        tokenPos: number;
    }
}
declare module "assemblyscript/src/ast" {
    /**
     * Abstract syntax tree representing a source file once parsed.
     * @module ast
     */ /***/
    import { CommonFlags } from "assemblyscript/src/common";
    import { Token, Tokenizer, Range } from "assemblyscript/src/tokenizer";
    export { Token, Range };
    /** Indicates the kind of a node. */
    export enum NodeKind {
        SOURCE = 0,
        NAMEDTYPE = 1,
        FUNCTIONTYPE = 2,
        TYPENAME = 3,
        TYPEPARAMETER = 4,
        PARAMETER = 5,
        IDENTIFIER = 6,
        ASSERTION = 7,
        BINARY = 8,
        CALL = 9,
        CLASS = 10,
        COMMA = 11,
        ELEMENTACCESS = 12,
        FALSE = 13,
        FUNCTION = 14,
        INSTANCEOF = 15,
        LITERAL = 16,
        NEW = 17,
        NULL = 18,
        PARENTHESIZED = 19,
        PROPERTYACCESS = 20,
        TERNARY = 21,
        SUPER = 22,
        THIS = 23,
        TRUE = 24,
        CONSTRUCTOR = 25,
        UNARYPOSTFIX = 26,
        UNARYPREFIX = 27,
        BLOCK = 28,
        BREAK = 29,
        CONTINUE = 30,
        DO = 31,
        EMPTY = 32,
        EXPORT = 33,
        EXPORTDEFAULT = 34,
        EXPORTIMPORT = 35,
        EXPRESSION = 36,
        FOR = 37,
        IF = 38,
        IMPORT = 39,
        RETURN = 40,
        SWITCH = 41,
        THROW = 42,
        TRY = 43,
        VARIABLE = 44,
        VOID = 45,
        WHILE = 46,
        CLASSDECLARATION = 47,
        ENUMDECLARATION = 48,
        ENUMVALUEDECLARATION = 49,
        FIELDDECLARATION = 50,
        FUNCTIONDECLARATION = 51,
        IMPORTDECLARATION = 52,
        INDEXSIGNATUREDECLARATION = 53,
        INTERFACEDECLARATION = 54,
        METHODDECLARATION = 55,
        NAMESPACEDECLARATION = 56,
        TYPEDECLARATION = 57,
        VARIABLEDECLARATION = 58,
        DECORATOR = 59,
        EXPORTMEMBER = 60,
        SWITCHCASE = 61,
        COMMENT = 62
    }
    /** Checks if a node represents a constant value. */
    export function nodeIsConstantValue(kind: NodeKind): boolean;
    /** Checks if a node might be callable. */
    export function nodeIsCallable(kind: NodeKind): boolean;
    /** Checks if a node might be callable with generic arguments. */
    export function nodeIsGenericCallable(kind: NodeKind): boolean;
    /** Base class of all nodes. */
    export abstract class Node {
        /** Node kind indicator. */
        kind: NodeKind;
        /** Source range. */
        range: Range;
        static createTypeName(name: IdentifierExpression, range: Range): TypeName;
        static createSimpleTypeName(name: string, range: Range): TypeName;
        static createNamedType(name: TypeName, typeArguments: TypeNode[] | null, isNullable: boolean, range: Range): NamedTypeNode;
        static createFunctionType(parameters: ParameterNode[], returnType: TypeNode, explicitThisType: NamedTypeNode | null, isNullable: boolean, range: Range): FunctionTypeNode;
        static createOmittedType(range: Range): NamedTypeNode;
        static createTypeParameter(name: IdentifierExpression, extendsType: NamedTypeNode | null, defaultType: NamedTypeNode | null, range: Range): TypeParameterNode;
        static createParameter(name: IdentifierExpression, type: TypeNode, initializer: Expression | null, kind: ParameterKind, range: Range): ParameterNode;
        static createDecorator(name: Expression, args: Expression[] | null, range: Range): DecoratorNode;
        static createComment(text: string, kind: CommentKind, range: Range): CommentNode;
        static createIdentifierExpression(name: string, range: Range, isQuoted?: boolean): IdentifierExpression;
        static createEmptyIdentifierExpression(range: Range): IdentifierExpression;
        static createArrayLiteralExpression(elements: (Expression | null)[], range: Range): ArrayLiteralExpression;
        static createAssertionExpression(assertionKind: AssertionKind, expression: Expression, toType: TypeNode | null, range: Range): AssertionExpression;
        static createBinaryExpression(operator: Token, left: Expression, right: Expression, range: Range): BinaryExpression;
        static createCallExpression(expression: Expression, typeArgs: TypeNode[] | null, args: Expression[], range: Range): CallExpression;
        static createClassExpression(declaration: ClassDeclaration): ClassExpression;
        static createCommaExpression(expressions: Expression[], range: Range): CommaExpression;
        static createConstructorExpression(range: Range): ConstructorExpression;
        static createElementAccessExpression(expression: Expression, element: Expression, range: Range): ElementAccessExpression;
        static createFalseExpression(range: Range): FalseExpression;
        static createFloatLiteralExpression(value: number, range: Range): FloatLiteralExpression;
        static createFunctionExpression(declaration: FunctionDeclaration): FunctionExpression;
        static createInstanceOfExpression(expression: Expression, isType: TypeNode, range: Range): InstanceOfExpression;
        static createIntegerLiteralExpression(value: I64, range: Range): IntegerLiteralExpression;
        static createNewExpression(expression: Expression, typeArgs: TypeNode[] | null, args: Expression[], range: Range): NewExpression;
        static createNullExpression(range: Range): NullExpression;
        static createObjectLiteralExpression(names: IdentifierExpression[], values: Expression[], range: Range): ObjectLiteralExpression;
        static createParenthesizedExpression(expression: Expression, range: Range): ParenthesizedExpression;
        static createPropertyAccessExpression(expression: Expression, property: IdentifierExpression, range: Range): PropertyAccessExpression;
        static createRegexpLiteralExpression(pattern: string, flags: string, range: Range): RegexpLiteralExpression;
        static createTernaryExpression(condition: Expression, ifThen: Expression, ifElse: Expression, range: Range): TernaryExpression;
        static createStringLiteralExpression(value: string, range: Range): StringLiteralExpression;
        static createSuperExpression(range: Range): SuperExpression;
        static createThisExpression(range: Range): ThisExpression;
        static createTrueExpression(range: Range): TrueExpression;
        static createUnaryPostfixExpression(operator: Token, operand: Expression, range: Range): UnaryPostfixExpression;
        static createUnaryPrefixExpression(operator: Token, operand: Expression, range: Range): UnaryPrefixExpression;
        static createBlockStatement(statements: Statement[], range: Range): BlockStatement;
        static createBreakStatement(label: IdentifierExpression | null, range: Range): BreakStatement;
        static createClassDeclaration(identifier: IdentifierExpression, typeParameters: TypeParameterNode[] | null, extendsType: NamedTypeNode | null, // can't be a function
        implementsTypes: NamedTypeNode[] | null, // can't be functions
        members: DeclarationStatement[], decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): ClassDeclaration;
        static createContinueStatement(label: IdentifierExpression | null, range: Range): ContinueStatement;
        static createDoStatement(statement: Statement, condition: Expression, range: Range): DoStatement;
        static createEmptyStatement(range: Range): EmptyStatement;
        static createEnumDeclaration(name: IdentifierExpression, members: EnumValueDeclaration[], decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): EnumDeclaration;
        static createEnumValueDeclaration(name: IdentifierExpression, value: Expression | null, flags: CommonFlags, range: Range): EnumValueDeclaration;
        static createExportStatement(members: ExportMember[] | null, path: StringLiteralExpression | null, isDeclare: boolean, range: Range): ExportStatement;
        static createExportDefaultStatement(declaration: DeclarationStatement, range: Range): ExportDefaultStatement;
        static createExportImportStatement(name: IdentifierExpression, externalName: IdentifierExpression, range: Range): ExportImportStatement;
        static createExportMember(name: IdentifierExpression, externalName: IdentifierExpression | null, range: Range): ExportMember;
        static createExpressionStatement(expression: Expression): ExpressionStatement;
        static createIfStatement(condition: Expression, ifTrue: Statement, ifFalse: Statement | null, range: Range): IfStatement;
        static createImportStatement(decls: ImportDeclaration[] | null, path: StringLiteralExpression, range: Range): ImportStatement;
        static createImportStatementWithWildcard(identifier: IdentifierExpression, path: StringLiteralExpression, range: Range): ImportStatement;
        static createImportDeclaration(foreignName: IdentifierExpression, name: IdentifierExpression | null, range: Range): ImportDeclaration;
        static createInterfaceDeclaration(name: IdentifierExpression, typeParameters: TypeParameterNode[] | null, extendsType: NamedTypeNode | null, // can't be a function
        members: DeclarationStatement[], decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): InterfaceDeclaration;
        static createFieldDeclaration(name: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): FieldDeclaration;
        static createForStatement(initializer: Statement | null, condition: Expression | null, incrementor: Expression | null, statement: Statement, range: Range): ForStatement;
        static createFunctionDeclaration(name: IdentifierExpression, typeParameters: TypeParameterNode[] | null, signature: FunctionTypeNode, body: Statement | null, decorators: DecoratorNode[] | null, flags: CommonFlags, arrowKind: ArrowKind, range: Range): FunctionDeclaration;
        static createIndexSignatureDeclaration(keyType: NamedTypeNode, valueType: TypeNode, range: Range): IndexSignatureDeclaration;
        static createMethodDeclaration(name: IdentifierExpression, typeParameters: TypeParameterNode[] | null, signature: FunctionTypeNode, body: Statement | null, decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): MethodDeclaration;
        static createNamespaceDeclaration(name: IdentifierExpression, members: Statement[], decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): NamespaceDeclaration;
        static createReturnStatement(value: Expression | null, range: Range): ReturnStatement;
        static createSwitchStatement(condition: Expression, cases: SwitchCase[], range: Range): SwitchStatement;
        static createSwitchCase(label: Expression | null, statements: Statement[], range: Range): SwitchCase;
        static createThrowStatement(value: Expression, range: Range): ThrowStatement;
        static createTryStatement(statements: Statement[], catchVariable: IdentifierExpression | null, catchStatements: Statement[] | null, finallyStatements: Statement[] | null, range: Range): TryStatement;
        static createTypeDeclaration(name: IdentifierExpression, typeParameters: TypeParameterNode[] | null, alias: TypeNode, decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): TypeDeclaration;
        static createVariableStatement(declarations: VariableDeclaration[], decorators: DecoratorNode[] | null, range: Range): VariableStatement;
        static createVariableDeclaration(name: IdentifierExpression, type: TypeNode | null, initializer: Expression | null, decorators: DecoratorNode[] | null, flags: CommonFlags, range: Range): VariableDeclaration;
        static createVoidStatement(expression: Expression, range: Range): VoidStatement;
        static createWhileStatement(condition: Expression, statement: Statement, range: Range): WhileStatement;
    }
    export abstract class TypeNode extends Node {
        /** Whether nullable or not. */
        isNullable: boolean;
        /** Tests if this type has a generic component matching one of the given type parameters. */
        hasGenericComponent(typeParameterNodes: TypeParameterNode[]): boolean;
    }
    /** Represents a type name. */
    export class TypeName extends Node {
        kind: NodeKind;
        /** Identifier of this part. */
        identifier: IdentifierExpression;
        /** Next part of the type name or `null` if this is the last part. */
        next: TypeName | null;
    }
    /** Represents a named type. */
    export class NamedTypeNode extends TypeNode {
        kind: NodeKind;
        /** Type name. */
        name: TypeName;
        /** Type argument references. */
        typeArguments: TypeNode[] | null;
    }
    /** Represents a function type. */
    export class FunctionTypeNode extends TypeNode {
        kind: NodeKind;
        /** Accepted parameters. */
        parameters: ParameterNode[];
        /** Return type. */
        returnType: TypeNode;
        /** Explicitly provided this type, if any. */
        explicitThisType: NamedTypeNode | null;
    }
    /** Represents a type parameter. */
    export class TypeParameterNode extends Node {
        kind: NodeKind;
        /** Identifier reference. */
        name: IdentifierExpression;
        /** Extended type reference, if any. */
        extendsType: NamedTypeNode | null;
        /** Default type if omitted, if any. */
        defaultType: NamedTypeNode | null;
    }
    /** Represents the kind of a parameter. */
    export enum ParameterKind {
        /** No specific flags. */
        DEFAULT = 0,
        /** Is an optional parameter. */
        OPTIONAL = 1,
        /** Is a rest parameter. */
        REST = 2
    }
    /** Represents a function parameter. */
    export class ParameterNode extends Node {
        kind: NodeKind;
        /** Parameter kind. */
        parameterKind: ParameterKind;
        /** Parameter name. */
        name: IdentifierExpression;
        /** Parameter type. */
        type: TypeNode;
        /** Initializer expression, if present. */
        initializer: Expression | null;
        /** Implicit field declaration, if applicable. */
        implicitFieldDeclaration: FieldDeclaration | null;
        /** Common flags indicating specific traits. */
        flags: CommonFlags;
        /** Tests if this node has the specified flag or flags. */
        is(flag: CommonFlags): boolean;
        /** Tests if this node has one of the specified flags. */
        isAny(flag: CommonFlags): boolean;
        /** Sets a specific flag or flags. */
        set(flag: CommonFlags): void;
    }
    /** Built-in decorator kinds. */
    export enum DecoratorKind {
        CUSTOM = 0,
        GLOBAL = 1,
        OPERATOR = 2,
        OPERATOR_BINARY = 3,
        OPERATOR_PREFIX = 4,
        OPERATOR_POSTFIX = 5,
        UNMANAGED = 6,
        SEALED = 7,
        INLINE = 8,
        EXTERNAL = 9,
        BUILTIN = 10,
        LAZY = 11,
        UNSAFE = 12
    }
    export namespace DecoratorKind {
        /** Returns the kind of the specified decorator name node. Defaults to {@link DecoratorKind.CUSTOM}. */
        function fromNode(nameNode: Expression): DecoratorKind;
    }
    /** Represents a decorator. */
    export class DecoratorNode extends Node {
        kind: NodeKind;
        /** Built-in kind, if applicable. */
        decoratorKind: DecoratorKind;
        /** Name expression. */
        name: Expression;
        /** Argument expressions. */
        arguments: Expression[] | null;
    }
    /** Comment kinds. */
    export enum CommentKind {
        /** Line comment. */
        LINE = 0,
        /** Triple-slash comment. */
        TRIPLE = 1,
        /** Block comment. */
        BLOCK = 2
    }
    /** Represents a comment. */
    export class CommentNode extends Node {
        kind: NodeKind;
        /** Comment kind. */
        commentKind: CommentKind;
        /** Comment text. */
        text: string;
    }
    /** Base class of all expression nodes. */
    export abstract class Expression extends Node {
    }
    /** Represents an identifier expression. */
    export class IdentifierExpression extends Expression {
        kind: NodeKind;
        /** Textual name. */
        text: string;
        /** Symbol. */
        symbol: string;
        /** Whether quoted or not. */
        isQuoted: boolean;
    }
    /** Indicates the kind of a literal. */
    export enum LiteralKind {
        FLOAT = 0,
        INTEGER = 1,
        STRING = 2,
        REGEXP = 3,
        ARRAY = 4,
        OBJECT = 5
    }
    /** Checks if the given node represents a numeric (float or integer) literal. */
    export function isNumericLiteral(node: Expression): boolean;
    /** Base class of all literal expressions. */
    export abstract class LiteralExpression extends Expression {
        kind: NodeKind;
        /** Specific literal kind. */
        literalKind: LiteralKind;
    }
    /** Represents an `[]` literal expression. */
    export class ArrayLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** Nested element expressions. */
        elementExpressions: (Expression | null)[];
    }
    /** Indicates the kind of an assertion. */
    export enum AssertionKind {
        PREFIX = 0,
        AS = 1,
        NONNULL = 2
    }
    /** Represents an assertion expression. */
    export class AssertionExpression extends Expression {
        kind: NodeKind;
        /** Specific kind of this assertion. */
        assertionKind: AssertionKind;
        /** Expression being asserted. */
        expression: Expression;
        /** Target type. */
        toType: TypeNode | null;
    }
    /** Represents a binary expression. */
    export class BinaryExpression extends Expression {
        kind: NodeKind;
        /** Operator token. */
        operator: Token;
        /** Left-hand side expression */
        left: Expression;
        /** Right-hand side expression. */
        right: Expression;
    }
    /** Represents a call expression. */
    export class CallExpression extends Expression {
        kind: NodeKind;
        /** Called expression. Usually an identifier or property access expression. */
        expression: Expression;
        /** Provided type arguments. */
        typeArguments: TypeNode[] | null;
        /** Provided arguments. */
        arguments: Expression[];
        /** Gets the type arguments range for reporting. */
        get typeArgumentsRange(): Range;
        /** Gets the arguments range for reporting. */
        get argumentsRange(): Range;
    }
    /** Represents a class expression using the 'class' keyword. */
    export class ClassExpression extends Expression {
        kind: NodeKind;
        /** Inline class declaration. */
        declaration: ClassDeclaration;
    }
    /** Represents a comma expression composed of multiple expressions. */
    export class CommaExpression extends Expression {
        kind: NodeKind;
        /** Sequential expressions. */
        expressions: Expression[];
    }
    /** Represents a `constructor` expression. */
    export class ConstructorExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Represents an element access expression, e.g., array access. */
    export class ElementAccessExpression extends Expression {
        kind: NodeKind;
        /** Expression being accessed. */
        expression: Expression;
        /** Element of the expression being accessed. */
        elementExpression: Expression;
    }
    /** Represents a float literal expression. */
    export class FloatLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** Float value. */
        value: number;
    }
    /** Represents a function expression using the 'function' keyword. */
    export class FunctionExpression extends Expression {
        kind: NodeKind;
        /** Inline function declaration. */
        declaration: FunctionDeclaration;
    }
    /** Represents an `instanceof` expression. */
    export class InstanceOfExpression extends Expression {
        kind: NodeKind;
        /** Expression being asserted. */
        expression: Expression;
        /** Type to test for. */
        isType: TypeNode;
    }
    /** Represents an integer literal expression. */
    export class IntegerLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** Integer value. */
        value: I64;
    }
    /** Represents a `new` expression. Like a call but with its own kind. */
    export class NewExpression extends CallExpression {
        kind: NodeKind;
    }
    /** Represents a `null` expression. */
    export class NullExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Represents an object literal expression. */
    export class ObjectLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** Field names. */
        names: IdentifierExpression[];
        /** Field values. */
        values: Expression[];
    }
    /** Represents a parenthesized expression. */
    export class ParenthesizedExpression extends Expression {
        kind: NodeKind;
        /** Expression in parenthesis. */
        expression: Expression;
    }
    /** Represents a property access expression. */
    export class PropertyAccessExpression extends Expression {
        kind: NodeKind;
        /** Expression being accessed. */
        expression: Expression;
        /** Property of the expression being accessed. */
        property: IdentifierExpression;
    }
    /** Represents a regular expression literal expression. */
    export class RegexpLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** Regular expression pattern. */
        pattern: string;
        /** Regular expression flags. */
        patternFlags: string;
    }
    /** Represents a ternary expression, i.e., short if notation. */
    export class TernaryExpression extends Expression {
        kind: NodeKind;
        /** Condition expression. */
        condition: Expression;
        /** Expression executed when condition is `true`. */
        ifThen: Expression;
        /** Expression executed when condition is `false`. */
        ifElse: Expression;
    }
    /** Represents a string literal expression. */
    export class StringLiteralExpression extends LiteralExpression {
        literalKind: LiteralKind;
        /** String value without quotes. */
        value: string;
    }
    /** Represents a `super` expression. */
    export class SuperExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Represents a `this` expression. */
    export class ThisExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Represents a `true` expression. */
    export class TrueExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Represents a `false` expression. */
    export class FalseExpression extends IdentifierExpression {
        kind: NodeKind;
        text: string;
        symbol: string;
    }
    /** Base class of all unary expressions. */
    export abstract class UnaryExpression extends Expression {
        /** Operator token. */
        operator: Token;
        /** Operand expression. */
        operand: Expression;
    }
    /** Represents a unary postfix expression, e.g. a postfix increment. */
    export class UnaryPostfixExpression extends UnaryExpression {
        kind: NodeKind;
    }
    /** Represents a unary prefix expression, e.g. a negation. */
    export class UnaryPrefixExpression extends UnaryExpression {
        kind: NodeKind;
    }
    /** Base class of all statement nodes. */
    export abstract class Statement extends Node {
    }
    /** Indicates the specific kind of a source. */
    export enum SourceKind {
        /** User-provided file. */
        USER = 0,
        /** User-provided entry file. */
        USER_ENTRY = 1,
        /** Library-provided file. */
        LIBRARY = 2,
        /** Library-provided entry file. */
        LIBRARY_ENTRY = 3
    }
    /** A top-level source node. */
    export class Source extends Node {
        kind: NodeKind;
        parent: null;
        /** Source kind. */
        sourceKind: SourceKind;
        /** Normalized path with file extension. */
        normalizedPath: string;
        /** Path used internally. */
        internalPath: string;
        /** Simple path (last part without extension). */
        simplePath: string;
        /** Contained statements. */
        statements: Statement[];
        /** Full source text. */
        text: string;
        /** Tokenizer reference. */
        tokenizer: Tokenizer | null;
        /** Source map index. */
        debugInfoIndex: number;
        /** Re-exported sources. */
        exportPaths: Set<string> | null;
        /** Constructs a new source node. */
        constructor(normalizedPath: string, text: string, kind: SourceKind);
        /** Checks if this source represents native code. */
        get isNative(): boolean;
        /** Checks if this source is part of the (standard) library. */
        get isLibrary(): boolean;
    }
    /** Base class of all declaration statements. */
    export abstract class DeclarationStatement extends Statement {
        /** Simple name being declared. */
        name: IdentifierExpression;
        /** Array of decorators. */
        decorators: DecoratorNode[] | null;
        /** Common flags indicating specific traits. */
        flags: CommonFlags;
        /** Tests if this node has the specified flag or flags. */
        is(flag: CommonFlags): boolean;
        /** Tests if this node has one of the specified flags. */
        isAny(flag: CommonFlags): boolean;
        /** Sets a specific flag or flags. */
        set(flag: CommonFlags): void;
    }
    /** Represents an index signature declaration. */
    export class IndexSignatureDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Key type. */
        keyType: NamedTypeNode;
        /** Value type. */
        valueType: TypeNode;
    }
    /** Base class of all variable-like declaration statements. */
    export abstract class VariableLikeDeclarationStatement extends DeclarationStatement {
        /** Variable type. */
        type: TypeNode | null;
        /** Variable initializer. */
        initializer: Expression | null;
    }
    /** Represents a block statement. */
    export class BlockStatement extends Statement {
        kind: NodeKind;
        /** Contained statements. */
        statements: Statement[];
    }
    /** Represents a `break` statement. */
    export class BreakStatement extends Statement {
        kind: NodeKind;
        /** Target label, if applicable. */
        label: IdentifierExpression | null;
    }
    /** Represents a `class` declaration. */
    export class ClassDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Accepted type parameters. */
        typeParameters: TypeParameterNode[] | null;
        /** Base class type being extended, if any. */
        extendsType: NamedTypeNode | null;
        /** Interface types being implemented, if any. */
        implementsTypes: NamedTypeNode[] | null;
        /** Class member declarations. */
        members: DeclarationStatement[];
        get isGeneric(): boolean;
    }
    /** Represents a `continue` statement. */
    export class ContinueStatement extends Statement {
        kind: NodeKind;
        /** Target label, if applicable. */
        label: IdentifierExpression | null;
    }
    /** Represents a `do` statement. */
    export class DoStatement extends Statement {
        kind: NodeKind;
        /** Statement being looped over. */
        statement: Statement;
        /** Condition when to repeat. */
        condition: Expression;
    }
    /** Represents an empty statement, i.e., a semicolon terminating nothing. */
    export class EmptyStatement extends Statement {
        kind: NodeKind;
    }
    /** Represents an `enum` declaration. */
    export class EnumDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Enum value declarations. */
        values: EnumValueDeclaration[];
    }
    /** Represents a value of an `enum` declaration. */
    export class EnumValueDeclaration extends VariableLikeDeclarationStatement {
        kind: NodeKind;
        /** Value expression. */
        value: Expression | null;
    }
    /** Represents an `export import` statement of an interface. */
    export class ExportImportStatement extends Node {
        kind: NodeKind;
        /** Identifier being imported. */
        name: IdentifierExpression;
        /** Identifier being exported. */
        externalName: IdentifierExpression;
    }
    /** Represents a member of an `export` statement. */
    export class ExportMember extends Node {
        kind: NodeKind;
        /** Local identifier. */
        localName: IdentifierExpression;
        /** Exported identifier. */
        exportedName: IdentifierExpression;
    }
    /** Represents an `export` statement. */
    export class ExportStatement extends Statement {
        kind: NodeKind;
        /** Array of members if a set of named exports, or `null` if a file export. */
        members: ExportMember[] | null;
        /** Path being exported from, if applicable. */
        path: StringLiteralExpression | null;
        /** Internal path being referenced, if `path` is set. */
        internalPath: string | null;
        /** Whether this is a declared export. */
        isDeclare: boolean;
    }
    /** Represents an `export default` statement. */
    export class ExportDefaultStatement extends Statement {
        kind: NodeKind;
        /** Declaration being exported as default. */
        declaration: DeclarationStatement;
    }
    /** Represents an expression that is used as a statement. */
    export class ExpressionStatement extends Statement {
        kind: NodeKind;
        /** Expression being used as a statement.*/
        expression: Expression;
    }
    /** Represents a field declaration within a `class`. */
    export class FieldDeclaration extends VariableLikeDeclarationStatement {
        kind: NodeKind;
        /** Parameter index if declared as a constructor parameter, otherwise `-1`. */
        parameterIndex: number;
    }
    /** Represents a `for` statement. */
    export class ForStatement extends Statement {
        kind: NodeKind;
        /**
         * Initializer statement, if present.
         * Either a {@link VariableStatement} or {@link ExpressionStatement}.
         */
        initializer: Statement | null;
        /** Condition expression, if present. */
        condition: Expression | null;
        /** Incrementor expression, if present. */
        incrementor: Expression | null;
        /** Statement being looped over. */
        statement: Statement;
    }
    /** Indicates the kind of an array function. */
    export const enum ArrowKind {
        /** Not an arrow function. */
        NONE = 0,
        /** Parenthesized parameter list. */
        ARROW_PARENTHESIZED = 1,
        /** Single parameter without parenthesis. */
        ARROW_SINGLE = 2
    }
    /** Represents a `function` declaration. */
    export class FunctionDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Type parameters, if any. */
        typeParameters: TypeParameterNode[] | null;
        /** Function signature. */
        signature: FunctionTypeNode;
        /** Body statement. Usually a block. */
        body: Statement | null;
        /** Arrow function kind, if applicable. */
        arrowKind: ArrowKind;
        get isGeneric(): boolean;
        /** Clones this function declaration. */
        clone(): FunctionDeclaration;
    }
    /** Represents an `if` statement. */
    export class IfStatement extends Statement {
        kind: NodeKind;
        /** Condition. */
        condition: Expression;
        /** Statement executed when condition is `true`. */
        ifTrue: Statement;
        /** Statement executed when condition is `false`. */
        ifFalse: Statement | null;
    }
    /** Represents an `import` declaration part of an {@link ImportStatement}. */
    export class ImportDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Identifier being imported. */
        foreignName: IdentifierExpression;
    }
    /** Represents an `import` statement. */
    export class ImportStatement extends Statement {
        kind: NodeKind;
        /** Array of member declarations or `null` if an asterisk import. */
        declarations: ImportDeclaration[] | null;
        /** Name of the local namespace, if an asterisk import. */
        namespaceName: IdentifierExpression | null;
        /** Path being imported from. */
        path: StringLiteralExpression;
        /** Internal path being referenced. */
        internalPath: string;
    }
    /** Represents an `interfarce` declaration. */
    export class InterfaceDeclaration extends ClassDeclaration {
        kind: NodeKind;
    }
    /** Represents a method declaration within a `class`. */
    export class MethodDeclaration extends FunctionDeclaration {
        kind: NodeKind;
    }
    /** Represents a `namespace` declaration. */
    export class NamespaceDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Array of namespace members. */
        members: Statement[];
    }
    /** Represents a `return` statement. */
    export class ReturnStatement extends Statement {
        kind: NodeKind;
        /** Value expression being returned, if present. */
        value: Expression | null;
    }
    /** Represents a single `case` within a `switch` statement. */
    export class SwitchCase extends Node {
        kind: NodeKind;
        /** Label expression. `null` indicates the default case. */
        label: Expression | null;
        /** Contained statements. */
        statements: Statement[];
    }
    /** Represents a `switch` statement. */
    export class SwitchStatement extends Statement {
        kind: NodeKind;
        /** Condition expression. */
        condition: Expression;
        /** Contained cases. */
        cases: SwitchCase[];
    }
    /** Represents a `throw` statement. */
    export class ThrowStatement extends Statement {
        kind: NodeKind;
        /** Value expression being thrown. */
        value: Expression;
    }
    /** Represents a `try` statement. */
    export class TryStatement extends Statement {
        kind: NodeKind;
        /** Contained statements. */
        statements: Statement[];
        /** Exception variable name, if a `catch` clause is present. */
        catchVariable: IdentifierExpression | null;
        /** Statements being executed on catch, if a `catch` clause is present. */
        catchStatements: Statement[] | null;
        /** Statements being executed afterwards, if a `finally` clause is present. */
        finallyStatements: Statement[] | null;
    }
    /** Represents a `type` declaration. */
    export class TypeDeclaration extends DeclarationStatement {
        kind: NodeKind;
        /** Type parameters, if any. */
        typeParameters: TypeParameterNode[] | null;
        /** Type being aliased. */
        type: TypeNode;
    }
    /** Represents a variable declaration part of a {@link VariableStatement}. */
    export class VariableDeclaration extends VariableLikeDeclarationStatement {
        kind: NodeKind;
    }
    /** Represents a variable statement wrapping {@link VariableDeclaration}s. */
    export class VariableStatement extends Statement {
        kind: NodeKind;
        /** Array of decorators. */
        decorators: DecoratorNode[] | null;
        /** Array of member declarations. */
        declarations: VariableDeclaration[];
    }
    /** Represents a void statement dropping an expression's value. */
    export class VoidStatement extends Statement {
        kind: NodeKind;
        /** Expression being dropped. */
        expression: Expression;
    }
    /** Represents a `while` statement. */
    export class WhileStatement extends Statement {
        kind: NodeKind;
        /** Condition expression. */
        condition: Expression;
        /** Statement being looped over. */
        statement: Statement;
    }
    /** Finds the first decorator matching the specified kind. */
    export function findDecorator(kind: DecoratorKind, decorators: DecoratorNode[] | null): DecoratorNode | null;
    /** Mangles an external to an internal path. */
    export function mangleInternalPath(path: string): string;
    /** Tests if the specified type node represents an omitted type. */
    export function isTypeOmitted(type: TypeNode): boolean;
}
declare module "assemblyscript/src/module" {
    /**
     * A thin wrapper around Binaryen's C-API.
     * @module module
     */ /***/
    import { Target } from "assemblyscript/src/common";
    export type ModuleRef = number;
    export type FunctionTypeRef = number;
    export type FunctionRef = number;
    export type ExpressionRef = number;
    export type GlobalRef = number;
    export type EventRef = number;
    export type ImportRef = number;
    export type ExportRef = number;
    export type RelooperRef = number;
    export type RelooperBlockRef = number;
    export type Index = number;
    export enum NativeType {
        None,
        I32,
        I64,
        F32,
        F64,
        V128,
        Anyref,
        Exnref,
        Unreachable,
        Auto
    }
    export enum FeatureFlags {
        MVP,
        Atomics,
        MutableGloabls,
        NontrappingFPToInt,
        SIMD128,
        BulkMemory,
        SignExt,
        ExceptionHandling,
        TailCall,
        ReferenceTypes,
        All
    }
    export enum ExpressionId {
        Invalid,
        Block,
        If,
        Loop,
        Break,
        Switch,
        Call,
        CallIndirect,
        LocalGet,
        LocalSet,
        GlobalGet,
        GlobalSet,
        Load,
        Store,
        Const,
        Unary,
        Binary,
        Select,
        Drop,
        Return,
        Host,
        Nop,
        Unreachable,
        AtomicCmpxchg,
        AtomicRMW,
        AtomicWait,
        AtomicNotify,
        AtomicFence,
        SIMDExtract,
        SIMDReplace,
        SIMDShuffle,
        SIMDTernary,
        SIMDShift,
        SIMDLoad,
        MemoryInit,
        DataDrop,
        MemoryCopy,
        MemoryFill,
        Try,
        Throw,
        Rethrow,
        BrOnExn,
        Push,
        Pop
    }
    export enum UnaryOp {
        ClzI32,
        CtzI32,
        PopcntI32,
        NegF32,
        AbsF32,
        CeilF32,
        FloorF32,
        TruncF32,
        NearestF32,
        SqrtF32,
        EqzI32,
        ClzI64,
        CtzI64,
        PopcntI64,
        NegF64,
        AbsF64,
        CeilF64,
        FloorF64,
        TruncF64,
        NearestF64,
        SqrtF64,
        EqzI64,
        ExtendI32,
        ExtendU32,
        WrapI64,
        TruncF32ToI32,
        TruncF32ToI64,
        TruncF32ToU32,
        TruncF32ToU64,
        TruncF64ToI32,
        TruncF64ToI64,
        TruncF64ToU32,
        TruncF64ToU64,
        ReinterpretF32,
        ReinterpretF64,
        ConvertI32ToF32,
        ConvertI32ToF64,
        ConvertU32ToF32,
        ConvertU32ToF64,
        ConvertI64ToF32,
        ConvertI64ToF64,
        ConvertU64ToF32,
        ConvertU64ToF64,
        PromoteF32,
        DemoteF64,
        ReinterpretI32,
        ReinterpretI64,
        ExtendI8ToI32,
        ExtendI16ToI32,
        ExtendI8ToI64,
        ExtendI16ToI64,
        ExtendI32ToI64,
        TruncF32ToI32Sat,
        TruncF32ToU32Sat,
        TruncF64ToI32Sat,
        TruncF64ToU32Sat,
        TruncF32ToI64Sat,
        TruncF32ToU64Sat,
        TruncF64ToI64Sat,
        TruncF64ToU64Sat,
        SplatI8x16,
        SplatI16x8,
        SplatI32x4,
        SplatI64x2,
        SplatF32x4,
        SplatF64x2,
        NotV128,
        NegI8x16,
        AnyTrueI8x16,
        AllTrueI8x16,
        NegI16x8,
        AnyTrueI16x8,
        AllTrueI16x8,
        NegI32x4,
        AnyTrueI32x4,
        AllTrueI32x4,
        NegI64x2,
        AnyTrueI64x2,
        AllTrueI64x2,
        AbsF32x4,
        NegF32x4,
        SqrtF32x4,
        AbsF64x2,
        NegF64x2,
        SqrtF64x2,
        TruncSatF32x4ToI32x4,
        TruncSatF32x4ToU32x4,
        TruncSatF64x2ToI64x2,
        TruncSatF64x2ToU64x2,
        ConvertI32x4ToF32x4,
        ConvertU32x4ToF32x4,
        ConvertI64x2ToF64x2,
        ConvertU64x2ToF64x2,
        WidenLowI8x16ToI16x8,
        WidenLowU8x16ToU16x8,
        WidenHighI8x16ToI16x8,
        WidenHighU8x16ToU16x8,
        WidenLowI16x8ToI32x4,
        WidenLowU16x8ToU32x4,
        WidenHighI16x8ToI32x4,
        WidenHighU16x8ToU32x4
    }
    export enum BinaryOp {
        AddI32,
        SubI32,
        MulI32,
        DivI32,
        DivU32,
        RemI32,
        RemU32,
        AndI32,
        OrI32,
        XorI32,
        ShlI32,
        ShrU32,
        ShrI32,
        RotlI32,
        RotrI32,
        EqI32,
        NeI32,
        LtI32,
        LtU32,
        LeI32,
        LeU32,
        GtI32,
        GtU32,
        GeI32,
        GeU32,
        AddI64,
        SubI64,
        MulI64,
        DivI64,
        DivU64,
        RemI64,
        RemU64,
        AndI64,
        OrI64,
        XorI64,
        ShlI64,
        ShrU64,
        ShrI64,
        RotlI64,
        RotrI64,
        EqI64,
        NeI64,
        LtI64,
        LtU64,
        LeI64,
        LeU64,
        GtI64,
        GtU64,
        GeI64,
        GeU64,
        AddF32,
        SubF32,
        MulF32,
        DivF32,
        CopysignF32,
        MinF32,
        MaxF32,
        EqF32,
        NeF32,
        LtF32,
        LeF32,
        GtF32,
        GeF32,
        AddF64,
        SubF64,
        MulF64,
        DivF64,
        CopysignF64,
        MinF64,
        MaxF64,
        EqF64,
        NeF64,
        LtF64,
        LeF64,
        GtF64,
        GeF64,
        EqI8x16,
        NeI8x16,
        LtI8x16,
        LtU8x16,
        LeI8x16,
        LeU8x16,
        GtI8x16,
        GtU8x16,
        GeI8x16,
        GeU8x16,
        EqI16x8,
        NeI16x8,
        LtI16x8,
        LtU16x8,
        LeI16x8,
        LeU16x8,
        GtI16x8,
        GtU16x8,
        GeI16x8,
        GeU16x8,
        EqI32x4,
        NeI32x4,
        LtI32x4,
        LtU32x4,
        LeI32x4,
        LeU32x4,
        GtI32x4,
        GtU32x4,
        GeI32x4,
        GeU32x4,
        EqF32x4,
        NeF32x4,
        LtF32x4,
        LeF32x4,
        GtF32x4,
        GeF32x4,
        EqF64x2,
        NeF64x2,
        LtF64x2,
        LeF64x2,
        GtF64x2,
        GeF64x2,
        AndV128,
        OrV128,
        XorV128,
        AndNotV128,
        AddI8x16,
        AddSatI8x16,
        AddSatU8x16,
        SubI8x16,
        SubSatI8x16,
        SubSatU8x16,
        MulI8x16,
        MinI8x16,
        MinU8x16,
        MaxI8x16,
        MaxU8x16,
        AddI16x8,
        AddSatI16x8,
        AddSatU16x8,
        SubI16x8,
        SubSatI16x8,
        SubSatU16x8,
        MulI16x8,
        MinI16x8,
        MinU16x8,
        MaxI16x8,
        MaxU16x8,
        AddI32x4,
        SubI32x4,
        MulI32x4,
        MinI32x4,
        MinU32x4,
        MaxI32x4,
        MaxU32x4,
        DotI16x8,
        AddI64x2,
        SubI64x2,
        AddF32x4,
        SubF32x4,
        MulF32x4,
        DivF32x4,
        MinF32x4,
        MaxF32x4,
        AddF64x2,
        SubF64x2,
        MulF64x2,
        DivF64x2,
        MinF64x2,
        MaxF64x2,
        NarrowI16x8ToI8x16,
        NarrowU16x8ToU8x16,
        NarrowI32x4ToI16x8,
        NarrowU32x4ToU16x8,
        SwizzleV8x16
    }
    export enum HostOp {
        MemorySize,
        MemoryGrow
    }
    export enum AtomicRMWOp {
        Add,
        Sub,
        And,
        Or,
        Xor,
        Xchg
    }
    export enum SIMDExtractOp {
        ExtractLaneI8x16,
        ExtractLaneU8x16,
        ExtractLaneI16x8,
        ExtractLaneU16x8,
        ExtractLaneI32x4,
        ExtractLaneI64x2,
        ExtractLaneF32x4,
        ExtractLaneF64x2
    }
    export enum SIMDReplaceOp {
        ReplaceLaneI8x16,
        ReplaceLaneI16x8,
        ReplaceLaneI32x4,
        ReplaceLaneI64x2,
        ReplaceLaneF32x4,
        ReplaceLaneF64x2
    }
    export enum SIMDShiftOp {
        ShlI8x16,
        ShrI8x16,
        ShrU8x16,
        ShlI16x8,
        ShrI16x8,
        ShrU16x8,
        ShlI32x4,
        ShrI32x4,
        ShrU32x4,
        ShlI64x2,
        ShrI64x2,
        ShrU64x2
    }
    export enum SIMDTernaryOp {
        Bitselect,
        QFMAF32x4,
        QFMSF32x4,
        QFMAF64x2,
        QFMSF64x2
    }
    export enum SIMDLoadOp {
        LoadSplatV8x16,
        LoadSplatV16x8,
        LoadSplatV32x4,
        LoadSplatV64x2,
        LoadI8ToI16x8,
        LoadU8ToU16x8,
        LoadI16ToI32x4,
        LoadU16ToU32x4,
        LoadI32ToI64x2,
        LoadU32ToU64x2
    }
    export class MemorySegment {
        buffer: Uint8Array;
        offset: I64;
        static create(buffer: Uint8Array, offset: I64): MemorySegment;
    }
    export class Module {
        ref: ModuleRef;
        private lit;
        static create(): Module;
        static createFrom(buffer: Uint8Array): Module;
        private constructor();
        addFunctionType(name: string, result: NativeType, paramTypes: NativeType[] | null): FunctionRef;
        getFunctionTypeBySignature(result: NativeType, paramTypes: NativeType[] | null): FunctionTypeRef;
        removeFunctionType(name: string): void;
        i32(value: number): ExpressionRef;
        i64(valueLow: number, valueHigh?: number): ExpressionRef;
        f32(value: number): ExpressionRef;
        f64(value: number): ExpressionRef;
        v128(bytes: Uint8Array): ExpressionRef;
        unary(op: UnaryOp, expr: ExpressionRef): ExpressionRef;
        binary(op: BinaryOp, left: ExpressionRef, right: ExpressionRef): ExpressionRef;
        host(op: HostOp, name?: string | null, operands?: ExpressionRef[] | null): ExpressionRef;
        local_get(index: number, type: NativeType): ExpressionRef;
        local_tee(index: number, value: ExpressionRef): ExpressionRef;
        global_get(name: string, type: NativeType): ExpressionRef;
        load(bytes: Index, signed: boolean, ptr: ExpressionRef, type: NativeType, offset?: Index, align?: Index): ExpressionRef;
        store(bytes: Index, ptr: ExpressionRef, value: ExpressionRef, type: NativeType, offset?: Index, align?: Index): ExpressionRef;
        atomic_load(bytes: Index, ptr: ExpressionRef, type: NativeType, offset?: Index): ExpressionRef;
        atomic_store(bytes: Index, ptr: ExpressionRef, value: ExpressionRef, type: NativeType, offset?: Index): ExpressionRef;
        atomic_rmw(op: AtomicRMWOp, bytes: Index, offset: Index, ptr: ExpressionRef, value: ExpressionRef, type: NativeType): ExpressionRef;
        atomic_cmpxchg(bytes: Index, offset: Index, ptr: ExpressionRef, expected: ExpressionRef, replacement: ExpressionRef, type: NativeType): ExpressionRef;
        atomic_wait(ptr: ExpressionRef, expected: ExpressionRef, timeout: ExpressionRef, expectedType: NativeType): ExpressionRef;
        atomic_notify(ptr: ExpressionRef, notifyCount: ExpressionRef): ExpressionRef;
        atomic_fence(): ExpressionRef;
        local_set(index: Index, value: ExpressionRef): ExpressionRef;
        global_set(name: string, value: ExpressionRef): ExpressionRef;
        block(label: string | null, children: ExpressionRef[], type?: NativeType): ExpressionRef;
        br(label: string | null, condition?: ExpressionRef, value?: ExpressionRef): ExpressionRef;
        drop(expression: ExpressionRef): ExpressionRef;
        loop(label: string | null, body: ExpressionRef): ExpressionRef;
        if(condition: ExpressionRef, ifTrue: ExpressionRef, ifFalse?: ExpressionRef): ExpressionRef;
        nop(): ExpressionRef;
        return(expression?: ExpressionRef): ExpressionRef;
        select(ifTrue: ExpressionRef, ifFalse: ExpressionRef, condition: ExpressionRef): ExpressionRef;
        switch(names: string[], defaultName: string | null, condition: ExpressionRef, value?: ExpressionRef): ExpressionRef;
        call(target: string, operands: ExpressionRef[] | null, returnType: NativeType, isReturn?: boolean): ExpressionRef;
        return_call(target: string, operands: ExpressionRef[] | null, returnType: NativeType): ExpressionRef;
        call_indirect(index: ExpressionRef, operands: ExpressionRef[] | null, typeName: string, isReturn?: boolean): ExpressionRef;
        return_call_indirect(index: ExpressionRef, operands: ExpressionRef[] | null, typeName: string): ExpressionRef;
        unreachable(): ExpressionRef;
        memory_copy(dest: ExpressionRef, source: ExpressionRef, size: ExpressionRef): ExpressionRef;
        memory_fill(dest: ExpressionRef, value: ExpressionRef, size: ExpressionRef): ExpressionRef;
        try(body: ExpressionRef, catchBody: ExpressionRef): ExpressionRef;
        throw(eventName: string, operands: ExpressionRef[]): ExpressionRef;
        rethrow(exnref: ExpressionRef): ExpressionRef;
        br_on_exn(name: string, eventName: string, exnref: ExpressionRef): ExpressionRef;
        push(value: ExpressionRef): ExpressionRef;
        pop(type: NativeType): ExpressionRef;
        simd_extract(op: SIMDExtractOp, vec: ExpressionRef, idx: number): ExpressionRef;
        simd_replace(op: SIMDReplaceOp, vec: ExpressionRef, idx: number, value: ExpressionRef): ExpressionRef;
        simd_shuffle(vec1: ExpressionRef, vec2: ExpressionRef, mask: Uint8Array): ExpressionRef;
        simd_ternary(op: SIMDTernaryOp, a: ExpressionRef, b: ExpressionRef, c: ExpressionRef): ExpressionRef;
        simd_shift(op: SIMDShiftOp, vec: ExpressionRef, shift: ExpressionRef): ExpressionRef;
        simd_load(op: SIMDLoadOp, ptr: ExpressionRef, offset: number, align: number): ExpressionRef;
        addGlobal(name: string, type: NativeType, mutable: boolean, initializer: ExpressionRef): GlobalRef;
        removeGlobal(name: string): void;
        addEvent(name: string, attribute: number, type: FunctionRef): EventRef;
        addFunction(name: string, type: FunctionTypeRef, varTypes: NativeType[] | null, body: ExpressionRef): FunctionRef;
        getFunction(name: string): FunctionRef;
        removeFunction(name: string): void;
        private hasTemporaryFunction;
        addTemporaryFunction(result: NativeType, paramTypes: NativeType[] | null, body: ExpressionRef): FunctionRef;
        removeTemporaryFunction(): void;
        addFunctionExport(internalName: string, externalName: string): ExportRef;
        addTableExport(internalName: string, externalName: string): ExportRef;
        addMemoryExport(internalName: string, externalName: string): ExportRef;
        addGlobalExport(internalName: string, externalName: string): ExportRef;
        addEventExport(internalName: string, externalName: string): ExportRef;
        removeExport(externalName: string): void;
        addFunctionImport(internalName: string, externalModuleName: string, externalBaseName: string, functionType: FunctionTypeRef): void;
        addTableImport(internalName: string, externalModuleName: string, externalBaseName: string): void;
        addMemoryImport(internalName: string, externalModuleName: string, externalBaseName: string, shared?: boolean): void;
        addGlobalImport(internalName: string, externalModuleName: string, externalBaseName: string, globalType: NativeType, mutable?: boolean): void;
        addEventImport(internalName: string, externalModuleName: string, externalBaseName: string, attribute: number, eventType: FunctionTypeRef): void;
        /** Unlimited memory constant. */
        static readonly UNLIMITED_MEMORY: Index;
        setMemory(initial: Index, maximum: Index, segments: MemorySegment[], target: Target, exportName?: string | null, shared?: boolean): void;
        setFunctionTable(initial: Index, maximum: Index, funcs: string[], offset: ExpressionRef): void;
        setStart(func: FunctionRef): void;
        addCustomSection(name: string, contents: Uint8Array): void;
        getOptimizeLevel(): number;
        setOptimizeLevel(level?: number): void;
        getShrinkLevel(): number;
        setShrinkLevel(level?: number): void;
        setDebugInfo(on?: boolean): void;
        getFeatures(): number;
        setFeatures(featureFlags: number): void;
        optimize(func?: FunctionRef): void;
        runPasses(passes: string[], func?: FunctionRef): void;
        private cachedPrecomputeNames;
        precomputeExpression(expr: ExpressionRef): ExpressionRef;
        validate(): boolean;
        interpret(): void;
        toBinary(sourceMapUrl: string | null): BinaryModule;
        toText(): string;
        toAsmjs(): string;
        private cachedStrings;
        private allocStringCached;
        dispose(): void;
        createRelooper(): number;
        cloneExpression(expr: ExpressionRef, noSideEffects?: boolean, maxDepth?: number): ExpressionRef;
        addDebugInfoFile(name: string): Index;
        getDebugInfoFile(index: Index): string | null;
        setDebugLocation(func: FunctionRef, expr: ExpressionRef, fileIndex: Index, lineNumber: Index, columnNumber: Index): void;
    }
    export function getExpressionId(expr: ExpressionRef): ExpressionId;
    export function getExpressionType(expr: ExpressionRef): NativeType;
    export function getConstValueI32(expr: ExpressionRef): number;
    export function getConstValueI64Low(expr: ExpressionRef): number;
    export function getConstValueI64High(expr: ExpressionRef): number;
    export function getConstValueF32(expr: ExpressionRef): number;
    export function getConstValueF64(expr: ExpressionRef): number;
    export function getLocalGetIndex(expr: ExpressionRef): Index;
    export function getLocalSetIndex(expr: ExpressionRef): Index;
    export function getLocalSetValue(expr: ExpressionRef): ExpressionRef;
    export function isLocalTee(expr: ExpressionRef): boolean;
    export function getGlobalGetName(expr: ExpressionRef): string | null;
    export function getBinaryOp(expr: ExpressionRef): BinaryOp;
    export function getBinaryLeft(expr: ExpressionRef): ExpressionRef;
    export function getBinaryRight(expr: ExpressionRef): ExpressionRef;
    export function getUnaryOp(expr: ExpressionRef): UnaryOp;
    export function getUnaryValue(expr: ExpressionRef): ExpressionRef;
    export function getLoadBytes(expr: ExpressionRef): number;
    export function getLoadOffset(expr: ExpressionRef): number;
    export function getLoadPtr(expr: ExpressionRef): ExpressionRef;
    export function isLoadSigned(expr: ExpressionRef): boolean;
    export function getStoreBytes(expr: ExpressionRef): number;
    export function getStoreOffset(expr: ExpressionRef): number;
    export function getStorePtr(expr: ExpressionRef): ExpressionRef;
    export function getStoreValue(expr: ExpressionRef): ExpressionRef;
    export function getBlockName(expr: ExpressionRef): string | null;
    export function getBlockChildCount(expr: ExpressionRef): Index;
    export function getBlockChild(expr: ExpressionRef, index: Index): ExpressionRef;
    export function getIfCondition(expr: ExpressionRef): ExpressionRef;
    export function getIfTrue(expr: ExpressionRef): ExpressionRef;
    export function getIfFalse(expr: ExpressionRef): ExpressionRef;
    export function getLoopName(expr: ExpressionRef): string | null;
    export function getLoopBody(expr: ExpressionRef): ExpressionRef;
    export function getBreakName(expr: ExpressionRef): string | null;
    export function getBreakCondition(expr: ExpressionRef): ExpressionRef;
    export function getSelectThen(expr: ExpressionRef): ExpressionRef;
    export function getSelectElse(expr: ExpressionRef): ExpressionRef;
    export function getSelectCondition(expr: ExpressionRef): ExpressionRef;
    export function getDropValue(expr: ExpressionRef): ExpressionRef;
    export function getReturnValue(expr: ExpressionRef): ExpressionRef;
    export function getCallTarget(expr: ExpressionRef): string | null;
    export function getCallOperandCount(expr: ExpressionRef): number;
    export function getCallOperand(expr: ExpressionRef, index: Index): ExpressionRef;
    export function getHostOp(expr: ExpressionRef): ExpressionRef;
    export function getHostOperandCount(expr: ExpressionRef): Index;
    export function getHostOperand(expr: ExpressionRef, index: Index): ExpressionRef;
    export function getHostName(expr: ExpressionRef): string | null;
    export function getFunctionBody(func: FunctionRef): ExpressionRef;
    export function getFunctionName(func: FunctionRef): string | null;
    export function getFunctionParamCount(func: FunctionRef): Index;
    export function getFunctionParamType(func: FunctionRef, index: Index): NativeType;
    export function getFunctionResultType(func: FunctionRef): NativeType;
    export class Relooper {
        module: Module;
        ref: number;
        static create(module: Module): number;
        private constructor();
        addBlock(code: ExpressionRef): number;
        addBranch(from: number, to: number, condition?: ExpressionRef, code?: ExpressionRef): void;
        addBlockWithSwitch(code: ExpressionRef, condition: ExpressionRef): number;
        addBranchForSwitch(from: number, to: number, indexes: number[], code?: ExpressionRef): void;
        renderAndDispose(entry: number, labelHelper: Index): ExpressionRef;
    }
    export function hasSideEffects(expr: ExpressionRef): boolean;
    export function readString(ptr: number): string | null;
    /** Result structure of {@link Module#toBinary}. */
    export class BinaryModule {
        /** WebAssembly binary. */
        output: Uint8Array;
        /** Source map, if generated. */
        sourceMap: string | null;
    }
    /** Tests if an expression needs an explicit 'unreachable' when it is the terminating statement. */
    export function needsExplicitUnreachable(expr: ExpressionRef): boolean;
    /** Traverses all expression members of an expression, calling the given visitor. */
    export function traverse<T>(expr: ExpressionRef, data: T, visit: (expr: ExpressionRef, data: T) => void): boolean;
}
declare module "assemblyscript/src/types" {
    /**
     * Mappings from AssemblyScript types to WebAssembly types.
     * @module types
     */ /***/
    import { Class, FunctionTarget, Program } from "assemblyscript/src/program";
    import { NativeType, ExpressionRef, Module } from "assemblyscript/src/module";
    /** Indicates the kind of a type. */
    export const enum TypeKind {
        /** An 8-bit signed integer. */
        I8 = 0,
        /** A 16-bit signed integer. */
        I16 = 1,
        /** A 32-bit signed integer. */
        I32 = 2,
        /** A 64-bit signed integer. */
        I64 = 3,
        /** A 32-bit/64-bit signed integer, depending on the target. */
        ISIZE = 4,
        /** An 8-bit unsigned integer. */
        U8 = 5,
        /** A 16-bit unsigned integer. */
        U16 = 6,
        /** A 32-bit unsigned integer. Also the base of function types. */
        U32 = 7,
        /** A 64-bit unsigned integer. */
        U64 = 8,
        /** A 32-bit/64-bit unsigned integer, depending on the target. Also the base of class types. */
        USIZE = 9,
        /** A 1-bit unsigned integer. */
        BOOL = 10,
        /** A 32-bit float. */
        F32 = 11,
        /** A 64-bit double. */
        F64 = 12,
        /** A 128-bit vector. */
        V128 = 13,
        /** A host reference. */
        ANYREF = 14,
        /** No return type. */
        VOID = 15
    }
    /** Indicates capabilities of a type. */
    export const enum TypeFlags {
        NONE = 0,
        /** Is a signed type that can represent negative values. */
        SIGNED = 1,
        /** Is an unsigned type that cannot represent negative values. */
        UNSIGNED = 2,
        /** Is an integer type. */
        INTEGER = 4,
        /** Is a floating point type. */
        FLOAT = 8,
        /** Is a pointer type. */
        POINTER = 16,
        /** Is smaller than 32-bits. */
        SHORT = 32,
        /** Is larger than 32-bits. */
        LONG = 64,
        /** Is a value type. */
        VALUE = 128,
        /** Is a reference type (either a class or a function type). */
        REFERENCE = 256,
        /** Is a nullable type. */
        NULLABLE = 512,
        /** Is a vector type. */
        VECTOR = 1024
    }
    /** Represents a resolved type. */
    export class Type {
        /** Type kind. */
        kind: TypeKind;
        /** Type flags. */
        flags: TypeFlags;
        /** Size in bits. */
        size: number;
        /** Size in bytes. */
        byteSize: number;
        /** Underlying class reference, if a class type. */
        classReference: Class | null;
        /** Underlying signature reference, if a function type. */
        signatureReference: Signature | null;
        /** Respective non-nullable type, if nullable. */
        nonNullableType: Type;
        /** Cached nullable type, if non-nullable. */
        private cachedNullableType;
        /** Constructs a new resolved type. */
        constructor(kind: TypeKind, flags: TypeFlags, size: number);
        /** Returns the closest int type representing this type. */
        get intType(): Type;
        /** Substitutes this type with the auto type if this type is void. */
        get exceptVoid(): Type;
        /** Gets this type's logarithmic alignment in memory. */
        get alignLog2(): number;
        /** Tests if this is a managed type that needs GC hooks. */
        get isManaged(): boolean;
        /** Tests if this is a class type explicitly annotated as unmanaged. */
        get isUnmanaged(): boolean;
        /** Computes the sign-extending shift in the target type. */
        computeSmallIntegerShift(targetType: Type): number;
        /** Computes the truncating mask in the target type. */
        computeSmallIntegerMask(targetType: Type): number;
        /** Tests if this type has (all of) the specified flags. */
        is(flags: TypeFlags): boolean;
        /** Tests if this type has any of the specified flags. */
        isAny(flags: TypeFlags): boolean;
        /** Composes a class type from this type and a class. */
        asClass(classType: Class): Type;
        /** Composes a function type from this type and a function. */
        asFunction(signature: Signature): Type;
        /** Composes the respective nullable type of this type. */
        asNullable(): Type;
        /** Tests if a value of this type is assignable to the target type incl. implicit conversion. */
        isAssignableTo(target: Type, signednessIsRelevant?: boolean): boolean;
        /** Tests if a value of this type is assignable to the target type excl. implicit conversion. */
        isStrictlyAssignableTo(target: Type, signednessIsRelevant?: boolean): boolean;
        /** Tests if a value of this type can be changed to the target type using `changetype`. */
        isChangeableTo(target: Type): boolean;
        /** Determines the common denominator type of two types, if there is any. */
        static commonDenominator(left: Type, right: Type, signednessIsImportant: boolean): Type | null;
        /** Converts this type to a string. */
        toString(): string;
        /** Converts this type to its respective native type. */
        toNativeType(): NativeType;
        /** Converts this type to its native `0` value. */
        toNativeZero(module: Module): ExpressionRef;
        /** Converts this type to its native `1` value. */
        toNativeOne(module: Module): ExpressionRef;
        /** Converts this type to its native `-1` value. */
        toNativeNegOne(module: Module): ExpressionRef;
        /** Converts this type to its signature string. */
        toSignatureString(): string;
        /** An 8-bit signed integer. */
        static readonly i8: Type;
        /** A 16-bit signed integer. */
        static readonly i16: Type;
        /** A 32-bit signed integer. */
        static readonly i32: Type;
        /** A 64-bit signed integer. */
        static readonly i64: Type;
        /** A 32-bit signed size. WASM32 only. */
        static readonly isize32: Type;
        /** A 64-bit signed size. WASM64 only. */
        static readonly isize64: Type;
        /** An 8-bit unsigned integer. */
        static readonly u8: Type;
        /** A 16-bit unsigned integer. */
        static readonly u16: Type;
        /** A 32-bit unsigned integer. */
        static readonly u32: Type;
        /** A 64-bit unsigned integer. */
        static readonly u64: Type;
        /** A 32-bit unsigned size. WASM32 only. */
        static readonly usize32: Type;
        /** A 64-bit unsigned size. WASM64 only. */
        static readonly usize64: Type;
        /** A 1-bit unsigned integer. */
        static readonly bool: Type;
        /** A 32-bit float. */
        static readonly f32: Type;
        /** A 64-bit float. */
        static readonly f64: Type;
        /** A 128-bit vector. */
        static readonly v128: Type;
        /** A host reference. */
        static readonly anyref: Type;
        /** No return type. */
        static readonly void: Type;
        /** Alias of i32 indicating type inference of locals and globals with just an initializer. */
        static readonly auto: Type;
    }
    /** Converts an array of types to an array of native types. */
    export function typesToNativeTypes(types: Type[]): NativeType[];
    /** Converts an array of types to its combined string representation. */
    export function typesToString(types: Type[]): string;
    /** Represents a fully resolved function signature. */
    export class Signature {
        /** The unique program id that represents this signature. */
        id: number;
        /** Parameter types, if any, excluding `this`. */
        parameterTypes: Type[];
        /** Parameter names, if known, excluding `this`. */
        parameterNames: string[] | null;
        /** Number of required parameters excluding `this`. Other parameters are considered optional. */
        requiredParameters: number;
        /** Return type. */
        returnType: Type;
        /** This type, if an instance signature. */
        thisType: Type | null;
        /** Whether the last parameter is a rest parameter. */
        hasRest: boolean;
        /** Cached {@link FunctionTarget}. */
        cachedFunctionTarget: FunctionTarget | null;
        /** Respective function type. */
        type: Type;
        /** The program that created this signature. */
        program: Program;
        /** Constructs a new signature. */
        constructor(program: Program, parameterTypes?: Type[] | null, returnType?: Type | null, thisType?: Type | null);
        asFunctionTarget(program: Program): FunctionTarget;
        /** Gets the known or, alternatively, generic parameter name at the specified index. */
        getParameterName(index: number): string;
        /** Tests if a value of this function type is assignable to a target of the specified function type. */
        isAssignableTo(target: Signature): boolean;
        /** Tests to see if a signature equals another signature. */
        equals(value: Signature): boolean;
        /** Converts a signature to a function type string. */
        static makeSignatureString(parameterTypes: Type[] | null, returnType: Type, thisType?: Type | null): string;
        /** Converts this signature to a function type string. */
        toSignatureString(): string;
        /** Converts this signature to a string. */
        toString(): string;
    }
    /** Gets the cached default parameter name for the specified index. */
    export function getDefaultParameterName(index: number): string;
}
declare module "assemblyscript/src/flow" {
    /**
     * A control flow analyzer.
     * @module flow
     */ /***/
    import { Type } from "assemblyscript/src/types";
    import { Local, Function, Element } from "assemblyscript/src/program";
    import { ExpressionRef } from "assemblyscript/src/module";
    import { Node } from "assemblyscript/src/ast";
    /** Control flow flags indicating specific conditions. */
    export const enum FlowFlags {
        /** No specific conditions. */
        NONE = 0,
        /** This flow returns. */
        RETURNS = 1,
        /** This flow returns a wrapped value. */
        RETURNS_WRAPPED = 2,
        /** This flow returns a non-null value. */
        RETURNS_NONNULL = 4,
        /** This flow throws. */
        THROWS = 8,
        /** This flow breaks. */
        BREAKS = 16,
        /** This flow continues. */
        CONTINUES = 32,
        /** This flow allocates. Constructors only. */
        ALLOCATES = 64,
        /** This flow calls super. Constructors only. */
        CALLS_SUPER = 128,
        /** This flow terminates (returns, throws or continues). */
        TERMINATES = 256,
        /** This flow conditionally returns in a child flow. */
        CONDITIONALLY_RETURNS = 512,
        /** This flow conditionally throws in a child flow. */
        CONDITIONALLY_THROWS = 1024,
        /** This flow conditionally terminates in a child flow. */
        CONDITIONALLY_TERMINATES = 2048,
        /** This flow conditionally breaks in a child flow. */
        CONDITIONALLY_BREAKS = 4096,
        /** This flow conditionally continues in a child flow. */
        CONDITIONALLY_CONTINUES = 8192,
        /** This flow conditionally allocates in a child flow. Constructors only. */
        CONDITIONALLY_ALLOCATES = 16384,
        /** This is an inlining flow. */
        INLINE_CONTEXT = 32768,
        /** This is a flow with explicitly disabled bounds checking. */
        UNCHECKED_CONTEXT = 65536,
        /** Any categorical flag. */
        ANY_CATEGORICAL = 511,
        /** Any conditional flag. */
        ANY_CONDITIONAL = 30208
    }
    /** Flags indicating the current state of a local. */
    export enum LocalFlags {
        /** No specific conditions. */
        NONE = 0,
        /** Local is constant. */
        CONSTANT = 1,
        /** Local is a function parameter. */
        PARAMETER = 2,
        /** Local is properly wrapped. Relevant for small integers. */
        WRAPPED = 4,
        /** Local is non-null. */
        NONNULL = 8,
        /** Local is read from. */
        READFROM = 16,
        /** Local is written to. */
        WRITTENTO = 32,
        /** Local is retained. */
        RETAINED = 64,
        /** Local is returned. */
        RETURNED = 128,
        /** Local is conditionally read from. */
        CONDITIONALLY_READFROM = 256,
        /** Local is conditionally written to. */
        CONDITIONALLY_WRITTENTO = 512,
        /** Local must be conditionally retained. */
        CONDITIONALLY_RETAINED = 1024,
        /** Local is conditionally returned. */
        CONDITIONALLY_RETURNED = 2048,
        /** Any categorical flag. */
        ANY_CATEGORICAL = 255,
        /** Any conditional flag. */
        ANY_CONDITIONAL = 3904,
        /** Any written to flag. */
        ANY_WRITTENTO = 544,
        /** Any retained flag. */
        ANY_RETAINED = 1088,
        /** Any returned flag. */
        ANY_RETURNED = 2176
    }
    export namespace LocalFlags {
        function join(left: LocalFlags, right: LocalFlags): LocalFlags;
    }
    /** Flags indicating the current state of a field. */
    export enum FieldFlags {
        /** No specific conditions. */
        NONE = 0,
        /** Field is initialized. Relevant in constructors. */
        INITIALIZED = 1,
        /** Field is conditionally initialized. Relevant in constructors. */
        CONDITIONALLY_INITIALIZED = 2,
        /** Any categorical flag. */
        ANY_CATEGORICAL = 1,
        /** Any conditional flag. */
        ANY_CONDITIONAL = 2
    }
    export namespace FieldFlags {
        function join(left: FieldFlags, right: FieldFlags): FieldFlags;
    }
    /** A control flow evaluator. */
    export class Flow {
        /** Parent flow. */
        parent: Flow | null;
        /** Flow flags indicating specific conditions. */
        flags: FlowFlags;
        /** Function this flow belongs to. */
        parentFunction: Function;
        /** The label we break to when encountering a continue statement. */
        continueLabel: string | null;
        /** The label we break to when encountering a break statement. */
        breakLabel: string | null;
        /** The current return type. */
        returnType: Type;
        /** The current contextual type arguments. */
        contextualTypeArguments: Map<string, Type> | null;
        /** Scoped local variables. */
        scopedLocals: Map<string, Local> | null;
        /** Local flags. */
        localFlags: LocalFlags[];
        /** Field flags. Relevant in constructors. */
        fieldFlags: Map<string, FieldFlags> | null;
        /** Function being inlined, when inlining. */
        inlineFunction: Function | null;
        /** The label we break to when encountering a return statement, when inlining. */
        inlineReturnLabel: string | null;
        /** Creates the parent flow of the specified function. */
        static create(parentFunction: Function): Flow;
        /** Creates an inline flow within `parentFunction`. */
        static createInline(parentFunction: Function, inlineFunction: Function): Flow;
        private constructor();
        /** Gets the actual function being compiled, The inlined function when inlining, otherwise the parent function. */
        get actualFunction(): Function;
        /** Tests if this flow has the specified flag or flags. */
        is(flag: FlowFlags): boolean;
        /** Tests if this flow has one of the specified flags. */
        isAny(flag: FlowFlags): boolean;
        /** Sets the specified flag or flags. */
        set(flag: FlowFlags): void;
        /** Unsets the specified flag or flags. */
        unset(flag: FlowFlags): void;
        /** Forks this flow to a child flow. */
        fork(): Flow;
        /** Gets a free temporary local of the specified type. */
        getTempLocal(type: Type, except?: Set<number> | null): Local;
        /** Gets a local that sticks around until this flow is exited, and then released. */
        getAutoreleaseLocal(type: Type, except?: Set<number> | null): Local;
        /** Frees the temporary local for reuse. */
        freeTempLocal(local: Local): void;
        /** Gets the scoped local of the specified name. */
        getScopedLocal(name: string): Local | null;
        /** Adds a new scoped local of the specified name. */
        addScopedLocal(name: string, type: Type, except?: Set<number> | null): Local;
        /** Adds a new scoped alias for the specified local. For example `super` aliased to the `this` local. */
        addScopedAlias(name: string, type: Type, index: number, reportNode?: Node | null): Local;
        /** Tests if this flow has any scoped locals that must be free'd. */
        get hasScopedLocals(): boolean;
        /** Frees this flow's scoped variables and returns its parent flow. */
        freeScopedLocals(): void;
        /** Looks up the local of the specified name in the current scope. */
        lookupLocal(name: string): Local | null;
        /** Looks up the element with the specified name relative to the scope of this flow. */
        lookup(name: string): Element | null;
        /** Tests if the local at the specified index has the specified flag or flags. */
        isLocalFlag(index: number, flag: LocalFlags, defaultIfInlined?: boolean): boolean;
        /** Tests if the local at the specified index has any of the specified flags. */
        isAnyLocalFlag(index: number, flag: LocalFlags, defaultIfInlined?: boolean): boolean;
        /** Sets the specified flag or flags on the local at the specified index. */
        setLocalFlag(index: number, flag: LocalFlags): void;
        /** Unsets the specified flag or flags on the local at the specified index. */
        unsetLocalFlag(index: number, flag: LocalFlags): void;
        /** Pushes a new break label to the stack, for example when entering a loop that one can `break` from. */
        pushBreakLabel(): string;
        /** Pops the most recent break label from the stack. */
        popBreakLabel(): void;
        /** Inherits flags and local wrap states from the specified flow (e.g. blocks). */
        inherit(other: Flow): void;
        /** Inherits categorical flags as conditional flags from the specified flow (e.g. then without else). */
        inheritConditional(other: Flow): void;
        /** Inherits mutual flags and local wrap states from the specified flows (e.g. then with else). */
        inheritMutual(left: Flow, right: Flow): void;
        /** Unifies local flags between this and the other flow. */
        unifyLocalFlags(other: Flow): void;
        /** Checks if an expression of the specified type is known to be non-null, even if the type might be nullable. */
        isNonnull(expr: ExpressionRef, type: Type): boolean;
        /** Updates local states to reflect that this branch is only taken when `expr` is true-ish. */
        inheritNonnullIfTrue(expr: ExpressionRef): void;
        /** Updates local states to reflect that this branch is only taken when `expr` is false-ish. */
        inheritNonnullIfFalse(expr: ExpressionRef): void;
        /**
         * Tests if an expression can possibly overflow in the context of this flow. Assumes that the
         * expression might already have overflown and returns `false` only if the operation neglects
         * any possible combination of garbage bits being present.
         */
        canOverflow(expr: ExpressionRef, type: Type): boolean;
        toString(): string;
    }
    /** Finds all indexes of locals used in the specified expression. */
    export function findUsedLocals(expr: ExpressionRef, used?: Set<number>): Set<number>;
}
declare module "assemblyscript/src/resolver" {
    /**
     * Resolve infrastructure to obtain types and elements.
     * @module resolver
     */ /***/
    import { DiagnosticEmitter } from "assemblyscript/src/diagnostics";
    import { Program, Element, Class, ClassPrototype, Function, FunctionPrototype } from "assemblyscript/src/program";
    import { Flow } from "assemblyscript/src/flow";
    import { TypeNode, TypeName, TypeParameterNode, Node, IdentifierExpression, CallExpression, Expression } from "assemblyscript/src/ast";
    import { Type } from "assemblyscript/src/types";
    /** Indicates whether errors are reported or not. */
    export enum ReportMode {
        /** Report errors. */
        REPORT = 0,
        /** Swallow errors. */
        SWALLOW = 1
    }
    /** Provides tools to resolve types and expressions. */
    export class Resolver extends DiagnosticEmitter {
        /** The program this resolver belongs to. */
        program: Program;
        /** Target expression of the previously resolved property or element access. */
        currentThisExpression: Expression | null;
        /** Element expression of the previously resolved element access. */
        currentElementExpression: Expression | null;
        /** Constructs the resolver for the specified program. */
        constructor(
        /** The program to construct a resolver for. */
        program: Program);
        /** Resolves a {@link TypeNode} to a concrete {@link Type}. */
        resolveType(
        /** The type to resolve. */
        node: TypeNode, 
        /** Contextual element. */
        ctxElement: Element, 
        /** Contextual types, i.e. `T`. */
        ctxTypes?: Map<string, Type> | null, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Type | null;
        /** Resolves a {@link NamedTypeNode} to a concrete {@link Type}. */
        private resolveNamedType;
        /** Resolves a {@link FunctionTypeNode} to a concrete {@link Type}. */
        private resolveFunctionType;
        private resolveBuiltinNativeType;
        private resolveBuiltinIndexofType;
        private resolveBuiltinValueofType;
        private resolveBuiltinReturnTypeType;
        /** Resolves a type name to the program element it refers to. */
        resolveTypeName(
        /** The type name to resolve. */
        node: TypeName, 
        /** Contextual element. */
        ctxElement: Element, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Element | null;
        /** Resolves an array of type arguments to concrete types. */
        resolveTypeArguments(
        /** Type parameter nodes present. */
        typeParameters: TypeParameterNode[], 
        /** Type argument nodes provided. */
        typeArgumentNodes: TypeNode[] | null, 
        /** Contextual element. */
        ctxElement: Element, 
        /** Contextual types, i.e. `T`. */
        ctxTypes?: Map<string, Type>, 
        /** Alternative report node in case of empty type arguments. */
        alternativeReportNode?: Node | null, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Type[] | null;
        /** Resolves respectively infers the concrete instance of a function by call context. */
        maybeInferCall(node: CallExpression, prototype: FunctionPrototype, ctxFlow: Flow, reportMode?: ReportMode): Function | null;
        /** Updates contextual types with a possibly encapsulated inferred type. */
        private propagateInferredGenericTypes;
        /** Gets the concrete type of an element. */
        getTypeOfElement(element: Element): Type | null;
        /** Gets the element of a concrete type. */
        getElementOfType(type: Type): Element | null;
        /** Looks up the program element the specified expression refers to. */
        lookupExpression(
        /** The expression to look up. */
        node: Expression, 
        /** Contextual flow. */
        ctxFlow: Flow, 
        /** Contextual type. */
        ctxType?: Type, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Element | null;
        /** Resolves an expression to its static type. */
        resolveExpression(
        /** The expression to resolve. */
        node: Expression, 
        /** Contextual flow. */
        ctxFlow: Flow, 
        /** Contextual type. */
        ctxType?: Type, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Type | null;
        /** Looks up the program element the specified identifier expression refers to. */
        lookupIdentifierExpression(
        /** The expression to look up. */
        node: IdentifierExpression, 
        /** Flow to search for scoped locals. */
        ctxFlow: Flow, 
        /** Element to search. */
        ctxElement?: Element, // differs for enums and namespaces
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Element | null;
        /** Resolves an identifier to its static type. */
        private resolveIdentifierExpression;
        /** Resolves a lazily compiled global, i.e. a static class field or annotated `@lazy`. */
        private ensureResolvedLazyGlobal;
        /** Looks up the program element the specified property access expression refers to. */
        private lookupPropertyAccessExpression;
        /** Resolves a property access expression to its static type. */
        private resolvePropertyAccessExpression;
        /** Looks up the program element the specified element access expression refers to. */
        private lookupElementAccessExpression;
        /** Resolves an element access expression to its static type. */
        private resolveElementAccessExpression;
        /** Determines the final type of an integer literal given the specified contextual type. */
        determineIntegerLiteralType(
        /** Integer literal value. */
        intValue: I64, 
        /** Contextual type. */
        ctxType: Type): Type;
        /** Looks up the program element the specified assertion expression refers to. */
        private lookupAssertionExpression;
        /** Resolves an assertion expression to its static type. */
        private resolveAssertionExpression;
        /** Looks up the program element the specified unary prefix expression refers to. */
        private lookupUnaryPrefixExpression;
        /** Resolves an unary prefix expression to its static type. */
        private resolveUnaryPrefixExpression;
        /** Looks up the program element the specified unary postfix expression refers to. */
        private lookupUnaryPostfixExpression;
        /** Resolves an unary postfix expression to its static type. */
        private resolveUnaryPostfixExpression;
        /** Looks up the program element the specified binary expression refers to. */
        private lookupBinaryExpression;
        /** Resolves a binary expression to its static type. */
        private resolveBinaryExpression;
        /** Looks up the program element the specified this expression refers to. */
        private lookupThisExpression;
        /** Resolves a this expression to its static type. */
        private resolveThisExpression;
        /** Looks up the program element the specified super expression refers to. */
        private lookupSuperExpression;
        /** Resolves a super expression to its static type. */
        private resolveSuperExpression;
        /** Looks up the program element the specified literal expression refers to. */
        private lookupLiteralExpression;
        /** Resolves a literal expression to its static type. */
        private resolveLiteralExpression;
        /** Looks up the program element the specified call expression refers to. */
        private lookupCallExpression;
        /** Resolves a call expression to its static type. */
        private resolveCallExpression;
        /** Looks up the program element the specified comma expression refers to. */
        private lookupCommaExpression;
        /** Resolves a comma expression to its static type. */
        private resolveCommaExpression;
        /** Looks up the program element the specified instanceof expression refers to. */
        private lookupInstanceOfExpression;
        /** Resolves an instanceof expression to its static type. */
        private resolveInstanceOfExpression;
        /** Looks up the program element the specified ternary expression refers to. */
        private lookupTernaryExpression;
        /** Resolves a ternary expression to its static type. */
        private resolveTernaryExpression;
        /** Looks up the program element the specified new expression refers to. */
        private lookupNewExpression;
        /** Resolves a new expression to its static type. */
        private resolveNewExpression;
        /** Looks up the program element the specified function expression refers to. */
        private lookupFunctionExpression;
        /** Resolves a function expression to its static type. */
        private resolveFunctionExpression;
        /** Resolves a function prototype using the specified concrete type arguments. */
        resolveFunction(
        /** The prototype of the function. */
        prototype: FunctionPrototype, 
        /** Type arguments provided. */
        typeArguments: Type[] | null, 
        /** Contextual types, i.e. `T`. */
        ctxTypes?: Map<string, Type>, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Function | null;
        /** Resolves a function prototypeby first resolving the specified type arguments. */
        resolveFunctionInclTypeArguments(
        /** The prototype of the function. */
        prototype: FunctionPrototype, 
        /** Type arguments provided to be resolved. */
        typeArgumentNodes: TypeNode[] | null, 
        /** Contextual element. */
        ctxElement: Element, 
        /** Contextual types, i.e. `T`. */
        ctxTypes: Map<string, Type>, 
        /** The node to use when reporting intermediate errors. */
        reportNode: Node, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Function | null;
        /** Resolves a class prototype using the specified concrete type arguments. */
        resolveClass(
        /** The prototype of the class. */
        prototype: ClassPrototype, 
        /** Type arguments provided. */
        typeArguments: Type[] | null, 
        /** Contextual types, i.e. `T`. */
        ctxTypes?: Map<string, Type>, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Class | null;
        /** Resolves a class prototype by first resolving the specified type arguments. */
        resolveClassInclTypeArguments(
        /** The prototype of the class. */
        prototype: ClassPrototype, 
        /** Type arguments provided to be resolved. */
        typeArgumentNodes: TypeNode[] | null, 
        /** Contextual element. */
        ctxElement: Element, 
        /** Contextual types, i.e. `T`. */
        ctxTypes: Map<string, Type>, 
        /** The node to use when reporting intermediate errors. */
        reportNode: Node, 
        /** How to proceed with eventual diagnostics. */
        reportMode?: ReportMode): Class | null;
    }
}
declare module "assemblyscript/src/program" {
    /**
     * AssemblyScript's intermediate representation describing a program's elements.
     * @module program
     */ /***/
    import { CommonFlags } from "assemblyscript/src/common";
    import { Options } from "assemblyscript/src/compiler";
    import { DiagnosticMessage, DiagnosticEmitter } from "assemblyscript/src/diagnostics";
    import { Type, Signature } from "assemblyscript/src/types";
    import { Source, Range, DecoratorNode, DecoratorKind, TypeParameterNode, TypeNode, NamedTypeNode, FunctionTypeNode, ArrowKind, Expression, IdentifierExpression, Statement, ClassDeclaration, DeclarationStatement, EnumDeclaration, EnumValueDeclaration, FieldDeclaration, FunctionDeclaration, InterfaceDeclaration, NamespaceDeclaration, TypeDeclaration, VariableDeclaration, VariableLikeDeclarationStatement, Token } from "assemblyscript/src/ast";
    import { Module, FunctionRef } from "assemblyscript/src/module";
    import { Resolver } from "assemblyscript/src/resolver";
    import { Flow } from "assemblyscript/src/flow";
    /** Represents the kind of an operator overload. */
    export enum OperatorKind {
        INVALID = 0,
        INDEXED_GET = 1,
        INDEXED_SET = 2,
        UNCHECKED_INDEXED_GET = 3,
        UNCHECKED_INDEXED_SET = 4,
        ADD = 5,
        SUB = 6,
        MUL = 7,
        DIV = 8,
        REM = 9,
        POW = 10,
        BITWISE_AND = 11,
        BITWISE_OR = 12,
        BITWISE_XOR = 13,
        BITWISE_SHL = 14,
        BITWISE_SHR = 15,
        BITWISE_SHR_U = 16,
        EQ = 17,
        NE = 18,
        GT = 19,
        GE = 20,
        LT = 21,
        LE = 22,
        PLUS = 23,
        MINUS = 24,
        NOT = 25,
        BITWISE_NOT = 26,
        PREFIX_INC = 27,
        PREFIX_DEC = 28,
        POSTFIX_INC = 29,
        POSTFIX_DEC = 30
    }
    export namespace OperatorKind {
        /** Returns the operator kind represented by the specified decorator and string argument. */
        function fromDecorator(decoratorKind: DecoratorKind, arg: string): OperatorKind;
        /** Converts a binary operator token to the respective operator kind. */
        function fromBinaryToken(token: Token): OperatorKind;
        /** Converts a unary prefix operator token to the respective operator kind. */
        function fromUnaryPrefixToken(token: Token): OperatorKind;
        /** Converts a unary postfix operator token to the respective operator kind. */
        function fromUnaryPostfixToken(token: Token): OperatorKind;
    }
    /** Represents an AssemblyScript program. */
    export class Program extends DiagnosticEmitter {
        /** Resolver instance. */
        resolver: Resolver;
        /** Array of sources. */
        sources: Source[];
        /** Diagnostic offset used where successively obtaining the next diagnostic. */
        diagnosticsOffset: number;
        /** Compiler options. */
        options: Options;
        /** Special native code source. */
        nativeSource: Source;
        /** Special native code file. */
        nativeFile: File;
        /** Files by unique internal name. */
        filesByName: Map<string, File>;
        /** Elements by unique internal name in element space. */
        elementsByName: Map<string, Element>;
        /** Elements by declaration. */
        elementsByDeclaration: Map<DeclarationStatement, DeclaredElement>;
        /** Element instances by unique internal name. */
        instancesByName: Map<string, Element>;
        /** Classes wrapping basic types like `i32`. */
        wrapperClasses: Map<Type, Class>;
        /** Managed classes contained in the program, by id. */
        managedClasses: Map<number, Class>;
        /** A set of unique function signatures contained in the program, by id. */
        uniqueSignatures: Signature[];
        /** ArrayBufferView reference. */
        arrayBufferViewInstance: Class;
        /** ArrayBuffer instance reference. */
        arrayBufferInstance: Class;
        /** Array prototype reference. */
        arrayPrototype: ClassPrototype;
        /** Set prototype reference. */
        setPrototype: ClassPrototype;
        /** Map prototype reference. */
        mapPrototype: ClassPrototype;
        /** Fixed array prototype reference. */
        fixedArrayPrototype: ClassPrototype;
        /** Int8Array prototype. */
        i8ArrayPrototype: ClassPrototype;
        /** Int16Array prototype. */
        i16ArrayPrototype: ClassPrototype;
        /** Int32Array prototype. */
        i32ArrayPrototype: ClassPrototype;
        /** Int64Array prototype. */
        i64ArrayPrototype: ClassPrototype;
        /** Uint8Array prototype. */
        u8ArrayPrototype: ClassPrototype;
        /** Uint8ClampedArray prototype. */
        u8ClampedArrayPrototype: ClassPrototype;
        /** Uint16Array prototype. */
        u16ArrayPrototype: ClassPrototype;
        /** Uint32Array prototype. */
        u32ArrayPrototype: ClassPrototype;
        /** Uint64Array prototype. */
        u64ArrayPrototype: ClassPrototype;
        /** Float32Array prototype. */
        f32ArrayPrototype: ClassPrototype;
        /** Float64Array prototype. */
        f64ArrayPrototype: ClassPrototype;
        /** String instance reference. */
        stringInstance: Class;
        /** Abort function reference, if not explicitly disabled. */
        abortInstance: Function | null;
        /** RT `__alloc(size: usize, id: u32): usize` */
        allocInstance: Function;
        /** RT `__realloc(ref: usize, newSize: usize): usize` */
        reallocInstance: Function;
        /** RT `__free(ref: usize): void` */
        freeInstance: Function;
        /** RT `__retain(ref: usize): usize` */
        retainInstance: Function;
        /** RT `__release(ref: usize): void` */
        releaseInstance: Function;
        /** RT `__collect(): void` */
        collectInstance: Function;
        /** RT `__visit(ref: usize, cookie: u32): void` */
        visitInstance: Function;
        /** RT `__typeinfo(id: u32): RTTIFlags` */
        typeinfoInstance: Function;
        /** RT `__instanceof(ref: usize, superId: u32): bool` */
        instanceofInstance: Function;
        /** RT `__allocArray(length: i32, alignLog2: usize, id: u32, data: usize = 0): usize` */
        allocArrayInstance: Function;
        /** Next class id. */
        nextClassId: number;
        /** Next signature id. */
        nextSignatureId: number;
        /** Constructs a new program, optionally inheriting parser diagnostics. */
        constructor(
        /** Shared array of diagnostic messages (emitted so far). */
        diagnostics?: DiagnosticMessage[] | null);
        /** Obtains the source matching the specified internal path. */
        getSource(internalPath: string): string | null;
        /** Writes a common runtime header to the specified buffer. */
        writeRuntimeHeader(buffer: Uint8Array, offset: number, classInstance: Class, payloadSize: number): void;
        /** Gets the size of a runtime header. */
        get runtimeHeaderSize(): number;
        /** Creates a native variable declaration. */
        makeNativeVariableDeclaration(
        /** The simple name of the variable */
        name: string, 
        /** Flags indicating specific traits, e.g. `CONST`. */
        flags?: CommonFlags): VariableDeclaration;
        /** Creates a native type declaration. */
        makeNativeTypeDeclaration(
        /** The simple name of the type. */
        name: string, 
        /** Flags indicating specific traits, e.g. `GENERIC`. */
        flags?: CommonFlags): TypeDeclaration;
        private nativeDummySignature;
        /** Creates a native function declaration. */
        makeNativeFunctionDeclaration(
        /** The simple name of the function. */
        name: string, 
        /** Flags indicating specific traits, e.g. `DECLARE`. */
        flags?: CommonFlags): FunctionDeclaration;
        /** Creates a native namespace declaration. */
        makeNativeNamespaceDeclaration(
        /** The simple name of the namespace. */
        name: string, 
        /** Flags indicating specific traits, e.g. `EXPORT`. */
        flags?: CommonFlags): NamespaceDeclaration;
        /** Creates a native function. */
        makeNativeFunction(
        /** The simple name of the function. */
        name: string, 
        /** Concrete function signature. */
        signature: Signature, 
        /** Parent element, usually a file, class or namespace. */
        parent?: Element, 
        /** Flags indicating specific traits, e.g. `GENERIC`. */
        flags?: CommonFlags, 
        /** Decorator flags representing built-in decorators. */
        decoratorFlags?: DecoratorFlags): Function;
        /** Gets the (possibly merged) program element linked to the specified declaration. */
        getElementByDeclaration(declaration: DeclarationStatement): DeclaredElement | null;
        /** Initializes the program and its elements prior to compilation. */
        initialize(options: Options): void;
        /** Requires that a global library element of the specified kind is present and returns it. */
        private require;
        /** Requires that a non-generic global class is present and returns it. */
        private requireClass;
        /** Obtains a non-generic global function and returns it. Returns `null` if it does not exist. */
        private lookupFunction;
        /** Requires that a global function is present and returns it. */
        private requireFunction;
        /** Marks an element and its children as a module export. */
        private markModuleExport;
        /** Registers a native type with the program. */
        private registerNativeType;
        /** Registers the backing class of a native type. */
        private registerWrapperClass;
        /** Registers a constant integer value within the global scope. */
        private registerConstantInteger;
        /** Registers a constant float value within the global scope. */
        private registerConstantFloat;
        /** Ensures that the given global element exists. Attempts to merge duplicates. */
        ensureGlobal(name: string, element: DeclaredElement): DeclaredElement;
        /** Looks up the element of the specified name in the global scope. */
        lookupGlobal(name: string): Element | null;
        /** Looks up the element of the specified name in the global scope. Errors if not present. */
        requireGlobal(name: string): Element;
        /** Tries to locate a foreign file given its normalized path. */
        private lookupForeignFile;
        /** Tries to locate a foreign element by traversing exports and queued exports. */
        private lookupForeign;
        /** Validates that only supported decorators are present. */
        private checkDecorators;
        /** Initializes a class declaration. */
        private initializeClass;
        /** Initializes a field of a class or interface. */
        private initializeField;
        /** Initializes a method of a class or interface. */
        private initializeMethod;
        /** Checks that operator overloads are generally valid, if present. */
        private checkOperatorOverloads;
        /** Ensures that the property introduced by the specified getter or setter exists.*/
        private ensureProperty;
        /** Initializes a property of a class. */
        private initializeProperty;
        /** Initializes an enum. */
        private initializeEnum;
        /** Initializes an enum value. */
        private initializeEnumValue;
        /** Initializes an `export` statement. */
        private initializeExports;
        /** Initializes a single `export` member. Does not handle `export *`. */
        private initializeExport;
        private initializeExportDefault;
        /** Initializes an `import` statement. */
        private initializeImports;
        /** Initializes a single `import` declaration. Does not handle `import *`. */
        private initializeImport;
        /** Initializes a function. Does not handle methods. */
        private initializeFunction;
        /** Initializes an interface. */
        private initializeInterface;
        /** Initializes a namespace. */
        private initializeNamespace;
        /** Initializes a `type` definition. */
        private initializeTypeDefinition;
        /** Initializes a variable statement. */
        private initializeVariables;
    }
    /** Indicates the specific kind of an {@link Element}. */
    export enum ElementKind {
        /** A {@link Global}. */
        GLOBAL = 0,
        /** A {@link Local}. */
        LOCAL = 1,
        /** An {@link Enum}. */
        ENUM = 2,
        /** An {@link EnumValue}. */
        ENUMVALUE = 3,
        /** A {@link FunctionPrototype}. */
        FUNCTION_PROTOTYPE = 4,
        /** A {@link Function}. */
        FUNCTION = 5,
        /** A {@link FunctionTarget}. */
        FUNCTION_TARGET = 6,
        /** A {@link ClassPrototype}. */
        CLASS_PROTOTYPE = 7,
        /** A {@link Class}. */
        CLASS = 8,
        /** An {@link InterfacePrototype}. */
        INTERFACE_PROTOTYPE = 9,
        /** An {@link Interface}. */
        INTERFACE = 10,
        /** A {@link FieldPrototype}. */
        FIELD_PROTOTYPE = 11,
        /** A {@link Field}. */
        FIELD = 12,
        /** A {@link PropertyPrototype}.  */
        PROPERTY_PROTOTYPE = 13,
        /** A {@link Property}. */
        PROPERTY = 14,
        /** A {@link Namespace}. */
        NAMESPACE = 15,
        /** A {@link File}. */
        FILE = 16,
        /** A {@link TypeDefinition}.  */
        TYPEDEFINITION = 17,
        /** An {@link IndexSignature}. */
        INDEXSIGNATURE = 18
    }
    /** Indicates built-in decorators that are present. */
    export enum DecoratorFlags {
        /** No flags set. */
        NONE = 0,
        /** Is a program global. */
        GLOBAL = 1,
        /** Is a binary operator overload. */
        OPERATOR_BINARY = 2,
        /** Is a unary prefix operator overload. */
        OPERATOR_PREFIX = 4,
        /** Is a unary postfix operator overload. */
        OPERATOR_POSTFIX = 8,
        /** Is an unmanaged class. */
        UNMANAGED = 16,
        /** Is a sealed class. */
        SEALED = 32,
        /** Is always inlined. */
        INLINE = 64,
        /** Is using a different external name. */
        EXTERNAL = 128,
        /** Is a builtin. */
        BUILTIN = 256,
        /** Is compiled lazily. */
        LAZY = 512,
        /** Is considered unsafe code. */
        UNSAFE = 1024
    }
    export namespace DecoratorFlags {
        /** Translates a decorator kind to the respective decorator flag. */
        function fromKind(kind: DecoratorKind): DecoratorFlags;
    }
    /** Base class of all program elements. */
    export abstract class Element {
        /** Specific element kind. */
        kind: ElementKind;
        /** Simple name. */
        name: string;
        /** Internal name referring to this element. */
        internalName: string;
        /** Containing {@link Program}. */
        program: Program;
        /** Parent element. */
        parent: Element;
        /** Common flags indicating specific traits. */
        flags: CommonFlags;
        /** Decorator flags indicating annotated traits. */
        decoratorFlags: DecoratorFlags;
        /** Member elements. */
        members: Map<string, DeclaredElement> | null;
        /** Shadowing type in type space, if any. */
        shadowType: TypeDefinition | null;
        /** Constructs a new program element. */
        protected constructor(
        /** Specific element kind. */
        kind: ElementKind, 
        /** Simple name. */
        name: string, 
        /** Internal name referring to this element. */
        internalName: string, 
        /** Containing {@link Program}. */
        program: Program, 
        /** Parent element. */
        parent: Element | null);
        /** Gets the enclosing file. */
        get file(): File;
        /** Tests if this element has a specific flag or flags. */
        is(flag: CommonFlags): boolean;
        /** Tests if this element has any of the specified flags. */
        isAny(flags: CommonFlags): boolean;
        /** Sets a specific flag or flags. */
        set(flag: CommonFlags): void;
        /** Unsets the specific flag or flags. */
        unset(flag: CommonFlags): void;
        /** Tests if this element has a specific decorator flag or flags. */
        hasDecorator(flag: DecoratorFlags): boolean;
        /** Looks up the element with the specified name within this element. */
        lookupInSelf(name: string): DeclaredElement | null;
        /** Looks up the element with the specified name relative to this element, like in JS. */
        abstract lookup(name: string): Element | null;
        /** Adds an element as a member of this one. Reports and returns `false` if a duplicate. */
        add(name: string, element: DeclaredElement): boolean;
        /** Returns a string representation of this element. */
        toString(): string;
    }
    /** Tests if the specified element kind indicates a declared element. */
    export function isDeclaredElement(kind: ElementKind): boolean;
    /** Base class of elements with an associated declaration statement. */
    export abstract class DeclaredElement extends Element {
        /** Declaration reference. */
        declaration: DeclarationStatement;
        /** Constructs a new declared program element. */
        protected constructor(
        /** Specific element kind. */
        kind: ElementKind, 
        /** Simple name. */
        name: string, 
        /** Internal name referring to this element. */
        internalName: string, 
        /** Containing {@link Program}. */
        program: Program, 
        /** Parent element. */
        parent: Element | null, 
        /** Declaration reference. */
        declaration: DeclarationStatement);
        /** Tests if this element is a library element. */
        get isDeclaredInLibrary(): boolean;
        /** Gets the associated identifier node. */
        get identifierNode(): IdentifierExpression;
        /** Gets the assiciated decorator nodes. */
        get decoratorNodes(): DecoratorNode[] | null;
    }
    /** Checks if the specified element kind indicates a typed element. */
    export function isTypedElement(kind: ElementKind): boolean;
    /** Base class of elements that can be resolved to a concrete type. */
    export abstract class TypedElement extends DeclaredElement {
        /** Resolved type. Set once `is(RESOLVED)`, otherwise void. */
        type: Type;
        constructor(
        /** Specific element kind. */
        kind: ElementKind, 
        /** Simple name. */
        name: string, 
        /** Internal name referring to this element. */
        internalName: string, 
        /** Containing {@link Program}. */
        program: Program, 
        /** Parent element. */
        parent: Element | null, 
        /** Declaration reference. */
        declaration: DeclarationStatement);
        /** Sets the resolved type of this element. */
        setType(type: Type): void;
    }
    /** A file representing the implicit top-level namespace of a source. */
    export class File extends Element {
        /** Source of this file. */
        source: Source;
        /** File exports. */
        exports: Map<string, DeclaredElement> | null;
        /** File re-exports. */
        exportsStar: File[] | null;
        /** Top-level start function of this file. */
        startFunction: Function;
        /** Constructs a new file. */
        constructor(
        /** Program this file belongs to. */
        program: Program, 
        /** Source of this file. */
        source: Source);
        add(name: string, element: DeclaredElement, isImport?: boolean): boolean;
        lookupInSelf(name: string): DeclaredElement | null;
        lookup(name: string): Element | null;
        /** Ensures that an element is an export of this file. */
        ensureExport(name: string, element: DeclaredElement): void;
        /** Ensures that another file is a re-export of this file. */
        ensureExportStar(file: File): void;
        /** Looks up the export of the specified name. */
        lookupExport(name: string): DeclaredElement | null;
        /** Creates an imported namespace from this file. */
        asImportedNamespace(name: string, parent: Element): Namespace;
    }
    /** A type definition. */
    export class TypeDefinition extends TypedElement {
        /** Constructs a new type definition. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file or namespace. */
        parent: Element, 
        /** Declaration reference. */
        declaration: TypeDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        /** Gets the associated type parameter nodes. */
        get typeParameterNodes(): TypeParameterNode[] | null;
        /** Gets the associated type node. */
        get typeNode(): TypeNode;
        lookup(name: string): Element | null;
    }
    /** A namespace that differs from a file in being user-declared with a name. */
    export class Namespace extends DeclaredElement {
        /** Constructs a new namespace. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file or another namespace. */
        parent: Element, 
        /** Declaration reference. */
        declaration: NamespaceDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        lookup(name: string): Element | null;
    }
    /** An enum. */
    export class Enum extends TypedElement {
        /** Constructs a new enum. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file or namespace. */
        parent: Element, 
        /** Declaration reference. */
        declaration: EnumDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        lookup(name: string): Element | null;
    }
    /** Indicates the kind of an inlined constant value. */
    export const enum ConstantValueKind {
        /** No constant value. */
        NONE = 0,
        /** Constant integer value. */
        INTEGER = 1,
        /** Constant float value. */
        FLOAT = 2
    }
    /** Base class of all variable-like program elements. */
    export abstract class VariableLikeElement extends TypedElement {
        /** Constant value kind. */
        constantValueKind: ConstantValueKind;
        /** Constant integer value, if applicable. */
        constantIntegerValue: I64;
        /** Constant float value, if applicable. */
        constantFloatValue: number;
        /** Constructs a new variable-like element. */
        protected constructor(
        /** Specific element kind. */
        kind: ElementKind, 
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file, namespace or class. */
        parent: Element, 
        /** Declaration reference. Creates a native declaration if omitted. */
        declaration?: VariableLikeDeclarationStatement);
        /** Gets the associated type node.s */
        get typeNode(): TypeNode | null;
        /** Gets the associated initializer node. */
        get initializerNode(): Expression | null;
        /** Applies a constant integer value to this element. */
        setConstantIntegerValue(value: I64, type: Type): void;
        /** Applies a constant float value to this element. */
        setConstantFloatValue(value: number, type: Type): void;
        /** @override */
        lookup(name: string): Element | null;
    }
    /** An enum value. */
    export class EnumValue extends VariableLikeElement {
        /** Constructs a new enum value. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent enum. */
        parent: Enum, 
        /** Declaration reference. */
        declaration: EnumValueDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        /** Whether this enum value is immutable. */
        isImmutable: boolean;
        /** Gets the associated value node. */
        get valueNode(): Expression | null;
        lookup(name: string): Element | null;
    }
    /** A global variable. */
    export class Global extends VariableLikeElement {
        /** Constructs a new global variable. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file, namespace or static class. */
        parent: Element, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags: DecoratorFlags, 
        /** Declaration reference. Creates a native declaration if omitted. */
        declaration?: VariableLikeDeclarationStatement);
    }
    /** A function parameter. */
    export class Parameter {
        /** Parameter name. */
        name: string;
        /** Parameter type. */
        type: Type;
        /** Parameter initializer, if present. */
        initializer: Expression | null;
        /** Constructs a new function parameter. */
        constructor(
        /** Parameter name. */
        name: string, 
        /** Parameter type. */
        type: Type, 
        /** Parameter initializer, if present. */
        initializer?: Expression | null);
    }
    /** A local variable. */
    export class Local extends VariableLikeElement {
        /** Zero-based index within the enclosing function. `-1` indicates a virtual local. */
        index: number;
        /** Constructs a new local variable. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Zero-based index within the enclosing function. `-1` indicates a virtual local. */
        index: number, 
        /** Resolved type. */
        type: Type, 
        /** Parent function. */
        parent: Function, 
        /** Declaration reference. */
        declaration?: VariableLikeDeclarationStatement);
    }
    /** A yet unresolved function prototype. */
    export class FunctionPrototype extends DeclaredElement {
        /** Operator kind, if an overload. */
        operatorKind: OperatorKind;
        /** Already resolved instances. */
        instances: Map<string, Function> | null;
        /** Clones of this prototype that are bounds to specific classes. */
        private boundPrototypes;
        /** Constructs a new function prototype. */
        constructor(
        /** Simple name */
        name: string, 
        /** Parent element, usually a file, namespace or class (if a method). */
        parent: Element, 
        /** Declaration reference. */
        declaration: FunctionDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        /** Gets the associated type parameter nodes. */
        get typeParameterNodes(): TypeParameterNode[] | null;
        /** Gets the associated function type node. */
        get functionTypeNode(): FunctionTypeNode;
        /** Gets the associated body node. */
        get bodyNode(): Statement | null;
        /** Gets the arrow function kind. */
        get arrowKind(): ArrowKind;
        /** Tests if this prototype is bound to a class. */
        get isBound(): boolean;
        /** Creates a clone of this prototype that is bound to a concrete class instead. */
        toBound(classInstance: Class): FunctionPrototype;
        /** Gets the resolved instance for the specified instance key, if already resolved. */
        getResolvedInstance(instanceKey: string): Function | null;
        /** Sets the resolved instance for the specified instance key. */
        setResolvedInstance(instanceKey: string, instance: Function): void;
        lookup(name: string): Element | null;
    }
    /** A resolved function. */
    export class Function extends TypedElement {
        /** Function prototype. */
        prototype: FunctionPrototype;
        /** Function signature. */
        signature: Signature;
        /** Map of locals by name. */
        localsByName: Map<string, Local>;
        /** Array of locals by index. */
        localsByIndex: Local[];
        /** List of additional non-parameter locals. */
        additionalLocals: Type[];
        /** Contextual type arguments. */
        contextualTypeArguments: Map<string, Type> | null;
        /** Default control flow. */
        flow: Flow;
        /** Remembered debug locations. */
        debugLocations: Range[];
        /** Function reference, if compiled. */
        ref: FunctionRef;
        /** Function table index, if any. */
        functionTableIndex: number;
        /** Trampoline function for calling with omitted arguments. */
        trampoline: Function | null;
        /** Counting id of inline operations involving this function. */
        nextInlineId: number;
        /** Counting id of anonymous inner functions. */
        nextAnonymousId: number;
        /** Counting id of autorelease variables. */
        nextAutoreleaseId: number;
        /** Constructs a new concrete function. */
        constructor(
        /** Name incl. type parameters, i.e. `foo<i32>`. */
        nameInclTypeParameters: string, 
        /** Respective function prototype. */
        prototype: FunctionPrototype, 
        /** Concrete signature. */
        signature: Signature, // pre-resolved
        /** Contextual type arguments inherited from its parent class, if any. */
        contextualTypeArguments?: Map<string, Type> | null);
        /** Adds a local of the specified type, with an optional name. */
        addLocal(type: Type, name?: string | null, declaration?: VariableDeclaration | null): Local;
        lookup(name: string): Element | null;
        tempI32s: Local[] | null;
        tempI64s: Local[] | null;
        tempF32s: Local[] | null;
        tempF64s: Local[] | null;
        tempV128s: Local[] | null;
        tempAnyrefs: Local[] | null;
        nextBreakId: number;
        breakStack: number[] | null;
        breakLabel: string | null;
        /** Finalizes the function once compiled, releasing no longer needed resources. */
        finalize(module: Module, ref: FunctionRef): void;
    }
    /** A resolved function target, that is a function called indirectly by an index and signature. */
    export class FunctionTarget extends Element {
        /** Underlying signature. */
        signature: Signature;
        /** Function type. */
        type: Type;
        /** Constructs a new function target. */
        constructor(
        /** Concrete signature. */
        signature: Signature, 
        /** Program reference. */
        program: Program, __s?: string);
        lookup(name: string): Element | null;
    }
    /** A yet unresolved instance field prototype. */
    export class FieldPrototype extends DeclaredElement {
        /** Constructs a new field prototype. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent class. */
        parent: ClassPrototype, 
        /** Declaration reference. */
        declaration: FieldDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags);
        /** Gets the associated type node. */
        get typeNode(): TypeNode | null;
        /** Gets the associated initializer node. */
        get initializerNode(): Expression | null;
        /** Gets the associated parameter index. Set if declared as a constructor parameter, otherwise `-1`. */
        get parameterIndex(): number;
        lookup(name: string): Element | null;
    }
    /** A resolved instance field. */
    export class Field extends VariableLikeElement {
        /** Field prototype reference. */
        prototype: FieldPrototype;
        /** Field memory offset, if an instance field. */
        memoryOffset: number;
        /** Constructs a new field. */
        constructor(
        /** Respective field prototype. */
        prototype: FieldPrototype, 
        /** Parent class. */
        parent: Class, 
        /** Concrete type. */
        type: Type);
    }
    /** A property comprised of a getter and a setter function. */
    export class PropertyPrototype extends DeclaredElement {
        /** Getter prototype. */
        getterPrototype: FunctionPrototype | null;
        /** Setter prototype. */
        setterPrototype: FunctionPrototype | null;
        /** Constructs a new property prototype. */
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent class. */
        parent: ClassPrototype, 
        /** Declaration of the getter or setter introducing the property. */
        firstDeclaration: FunctionDeclaration);
        lookup(name: string): Element | null;
    }
    /** A resolved property. */
    export class Property extends VariableLikeElement {
        /** Prototype reference. */
        prototype: PropertyPrototype;
        /** Getter instance. */
        getterInstance: Function | null;
        /** Setter instance. */
        setterInstance: Function | null;
        /** Constructs a new property prototype. */
        constructor(
        /** Respective property prototype. */
        prototype: PropertyPrototype, 
        /** Parent element, usually a static class prototype or class instance. */
        parent: Element);
        lookup(name: string): Element | null;
    }
    /** An resolved index signature. */
    export class IndexSignature extends VariableLikeElement {
        /** Constructs a new index prototype. */
        constructor(
        /** Parent class. */
        parent: Class);
        /** Obtains the getter instance. */
        getGetterInstance(isUnchecked: boolean): Function | null;
        /** Obtains the setter instance. */
        getSetterInstance(isUnchecked: boolean): Function | null;
        lookup(name: string): Element | null;
    }
    /** A yet unresolved class prototype. */
    export class ClassPrototype extends DeclaredElement {
        /** Instance member prototypes. */
        instanceMembers: Map<string, Element> | null;
        /** Base class prototype, if applicable. */
        basePrototype: ClassPrototype | null;
        /** Constructor prototype. */
        constructorPrototype: FunctionPrototype | null;
        /** Operator overload prototypes. */
        overloadPrototypes: Map<OperatorKind, FunctionPrototype>;
        /** Already resolved instances. */
        instances: Map<string, Class> | null;
        constructor(
        /** Simple name. */
        name: string, 
        /** Parent element, usually a file or namespace. */
        parent: Element, 
        /** Declaration reference. */
        declaration: ClassDeclaration, 
        /** Pre-checked flags indicating built-in decorators. */
        decoratorFlags?: DecoratorFlags, _isInterface?: boolean);
        /** Gets the associated type parameter nodes. */
        get typeParameterNodes(): TypeParameterNode[] | null;
        /** Gets the associated extends node. */
        get extendsNode(): NamedTypeNode | null;
        /** Gets the associated implements nodes. */
        get implementsNodes(): NamedTypeNode[] | null;
        /** Tests if this prototype is of a builtin array type (Array/TypedArray). */
        get isBuiltinArray(): boolean;
        /** Tests if this prototype extends the specified. */
        extends(basePtototype: ClassPrototype | null): boolean;
        /** Adds an element as an instance member of this one. Returns the previous element if a duplicate. */
        addInstance(name: string, element: DeclaredElement): boolean;
        /** Gets the resolved instance for the specified instance key, if already resolved. */
        getResolvedInstance(instanceKey: string): Class | null;
        /** Sets the resolved instance for the specified instance key. */
        setResolvedInstance(instanceKey: string, instance: Class): void;
        lookup(name: string): Element | null;
    }
    /** A resolved class. */
    export class Class extends TypedElement {
        /** Class prototype. */
        prototype: ClassPrototype;
        /** Resolved type arguments. */
        typeArguments: Type[] | null;
        /** Base class, if applicable. */
        base: Class | null;
        /** Contextual type arguments for fields and methods. */
        contextualTypeArguments: Map<string, Type> | null;
        /** Current member memory offset. */
        currentMemoryOffset: number;
        /** Constructor instance. */
        constructorInstance: Function | null;
        /** Operator overloads. */
        overloads: Map<OperatorKind, Function> | null;
        /** Index signature, if present. */
        indexSignature: IndexSignature | null;
        /** Unique class id. */
        private _id;
        /** Remembers acyclic state. */
        private _acyclic;
        /** Runtime type information flags. */
        rttiFlags: number;
        /** Wrapped type, if a wrapper for a basic type. */
        wrappedType: Type | null;
        /** Gets the unique runtime id of this class. */
        get id(): number;
        /** Tests if this class is of a builtin array type (Array/TypedArray). */
        get isBuiltinArray(): boolean;
        /** Tests if this class is array-like. */
        get isArrayLike(): boolean;
        /** Constructs a new class. */
        constructor(
        /** Name incl. type parameters, i.e. `Foo<i32>`. */
        nameInclTypeParameters: string, 
        /** The respective class prototype. */
        prototype: ClassPrototype, 
        /** Concrete type arguments, if any. */
        typeArguments?: Type[] | null, 
        /** Base class, if derived. */
        base?: Class | null, _isInterface?: boolean);
        /** Tests if a value of this class type is assignable to a target of the specified class type. */
        isAssignableTo(target: Class): boolean;
        /** Looks up the operator overload of the specified kind. */
        lookupOverload(kind: OperatorKind, unchecked?: boolean): Function | null;
        lookup(name: string): Element | null;
        /** Calculates the memory offset of the specified field. */
        offsetof(fieldName: string): number;
        /** Writes a field value to a buffer and returns the number of bytes written. */
        writeField<T>(name: string, value: T, buffer: Uint8Array, baseOffset: number): number;
        /** Tests if this class extends the specified prototype. */
        extends(prototype: ClassPrototype): boolean;
        /** Gets the concrete type arguments to the specified extendend prototype. */
        getTypeArgumentsTo(extendedPrototype: ClassPrototype): Type[] | null;
        /** Gets the value type of an array. Must be an array. */
        getArrayValueType(): Type;
        /** Tests if this class is inherently acyclic. */
        get isAcyclic(): boolean;
        /** Tests if this class potentially forms a reference cycle to another one. */
        private cyclesTo;
    }
    /** A yet unresolved interface. */
    export class InterfacePrototype extends ClassPrototype {
        /** Constructs a new interface prototype. */
        constructor(name: string, parent: Element, declaration: InterfaceDeclaration, decoratorFlags: DecoratorFlags);
    }
    /** A resolved interface. */
    export class Interface extends Class {
        /** Constructs a new interface. */
        constructor(nameInclTypeParameters: string, prototype: InterfacePrototype, typeArguments?: Type[], base?: Interface | null);
    }
    /** Mangles the internal name of an element with the specified name that is a child of the given parent. */
    export function mangleInternalName(name: string, parent: Element, isInstance: boolean, asGlobal?: boolean): string;
}
declare module "assemblyscript/src/compiler" {
    /**
     * The AssemblyScript compiler.
     * @module compiler
     */ /***/
    import { DiagnosticEmitter } from "assemblyscript/src/diagnostics";
    import { Module, MemorySegment, ExpressionRef, NativeType, FunctionRef, FunctionTypeRef, GlobalRef } from "assemblyscript/src/module";
    import { Feature, Target } from "assemblyscript/src/common";
    import { Program, ClassPrototype, Class, Element, Enum, Field, FunctionPrototype, Function, Global, VariableLikeElement, File } from "assemblyscript/src/program";
    import { Flow } from "assemblyscript/src/flow";
    import { Resolver } from "assemblyscript/src/resolver";
    import { Node, NamedTypeNode, Range, Statement, BlockStatement, BreakStatement, ContinueStatement, DoStatement, EmptyStatement, ExpressionStatement, ForStatement, IfStatement, InstanceOfExpression, InterfaceDeclaration, ReturnStatement, SwitchStatement, ThrowStatement, TryStatement, VariableStatement, VoidStatement, WhileStatement, Expression, AssertionExpression, BinaryExpression, CallExpression, CommaExpression, ElementAccessExpression, FunctionExpression, IdentifierExpression, LiteralExpression, NewExpression, ObjectLiteralExpression, PropertyAccessExpression, TernaryExpression, StringLiteralExpression, UnaryPostfixExpression, UnaryPrefixExpression } from "assemblyscript/src/ast";
    import { Type, Signature } from "assemblyscript/src/types";
    /** Compiler options. */
    export class Options {
        /** WebAssembly target. Defaults to {@link Target.WASM32}. */
        target: Target;
        /** If true, replaces assertions with nops. */
        noAssert: boolean;
        /** If true, imports the memory provided by the embedder. */
        importMemory: boolean;
        /** If greater than zero, declare memory as shared by setting max memory to sharedMemory. */
        sharedMemory: number;
        /** If true, imports the function table provided by the embedder. */
        importTable: boolean;
        /** If true, generates information necessary for source maps. */
        sourceMap: boolean;
        /** If true, generates an explicit start function. */
        explicitStart: boolean;
        /** Static memory start offset. */
        memoryBase: number;
        /** Global aliases, mapping alias names as the key to internal names to be aliased as the value. */
        globalAliases: Map<string, string> | null;
        /** Features to activate by default. These are the finished proposals. */
        features: Feature;
        /** If true, disallows unsafe features in user code. */
        noUnsafe: boolean;
        /** Hinted optimize level. Not applied by the compiler itself. */
        optimizeLevelHint: number;
        /** Hinted shrink level. Not applied by the compiler itself. */
        shrinkLevelHint: number;
        /** Tests if the target is WASM64 or, otherwise, WASM32. */
        get isWasm64(): boolean;
        /** Gets the unsigned size type matching the target. */
        get usizeType(): Type;
        /** Gets the signed size type matching the target. */
        get isizeType(): Type;
        /** Gets the native size type matching the target. */
        get nativeSizeType(): NativeType;
        /** Tests if a specific feature is activated. */
        hasFeature(feature: Feature): boolean;
    }
    /** Various constraints in expression compilation. */
    export const enum Constraints {
        NONE = 0,
        /** Must implicitly convert to the target type. */
        CONV_IMPLICIT = 1,
        /** Must explicitly convert to the target type. */
        CONV_EXPLICIT = 2,
        /** Must wrap small integer values to match the target type. */
        MUST_WRAP = 4,
        /** Indicates that the value will be dropped immediately. */
        WILL_DROP = 8,
        /** Indicates that the value will be retained immediately. */
        WILL_RETAIN = 16,
        /** Indicates that static data is preferred. */
        PREFER_STATIC = 32
    }
    /** Runtime features to be activated by the compiler. */
    export const enum RuntimeFeatures {
        NONE = 0,
        /** Requires heap setup. */
        HEAP = 1,
        /** Requires runtime type information setup. */
        RTTI = 2,
        /** Requires the built-in globals visitor. */
        visitGlobals = 4,
        /** Requires the built-in members visitor. */
        visitMembers = 8
    }
    /** Compiler interface. */
    export class Compiler extends DiagnosticEmitter {
        /** Program reference. */
        program: Program;
        /** Resolver reference. */
        get resolver(): Resolver;
        /** Provided options. */
        options: Options;
        /** Module instance being compiled. */
        module: Module;
        /** Current control flow. */
        currentFlow: Flow;
        /** Current inline functions stack. */
        currentInlineFunctions: Function[];
        /** Current parent element if not a function, i.e. an enum or namespace. */
        currentParent: Element | null;
        /** Current type in compilation. */
        currentType: Type;
        /** Start function statements. */
        currentBody: ExpressionRef[];
        /** Counting memory offset. */
        memoryOffset: I64;
        /** Memory segments being compiled. */
        memorySegments: MemorySegment[];
        /** Map of already compiled static string segments. */
        stringSegments: Map<string, MemorySegment>;
        /** Function table being compiled. */
        functionTable: string[];
        /** Argument count helper global. */
        argcVar: GlobalRef;
        /** Argument count helper setter. */
        argcSet: FunctionRef;
        /** Requires runtime features. */
        runtimeFeatures: RuntimeFeatures;
        /** Expressions known to have skipped an autorelease. Usually function returns. */
        skippedAutoreleases: Set<ExpressionRef>;
        /** Compiles a {@link Program} to a {@link Module} using the specified options. */
        static compile(program: Program, options?: Options | null): Module;
        /** Constructs a new compiler for a {@link Program} using the specified options. */
        constructor(program: Program, options?: Options | null);
        /** Performs compilation of the underlying {@link Program} to a {@link Module}. */
        compile(): Module;
        /** Applies the respective module exports for the specified file. */
        private ensureModuleExports;
        /** Applies the respective module export(s) for the specified element. */
        private ensureModuleExport;
        /** Makes a function to get the value of a field of an exported class. */
        private ensureModuleFieldGetter;
        /** Makes a function to set the value of a field of an exported class. */
        private ensureModuleFieldSetter;
        /** Compiles any element. */
        compileElement(element: Element, compileMembers?: boolean): void;
        /** Compiles an element's members. */
        compileMembers(element: Element): void;
        /** Compiles a file's exports. */
        compileExports(file: File): void;
        /** Compiles the file matching the specified path. */
        compileFileByPath(normalizedPathWithoutExtension: string, reportNode: Node): void;
        /** Compiles the specified file. */
        compileFile(file: File): void;
        compileGlobal(global: Global): boolean;
        compileEnum(element: Enum): boolean;
        /** Resolves the specified type arguments prior to compiling the resulting function instance. */
        compileFunctionUsingTypeArguments(prototype: FunctionPrototype, typeArguments: NamedTypeNode[], contextualTypeArguments?: Map<string, Type>, alternativeReportNode?: Node | null): Function | null;
        /** Either reuses or creates the function type matching the specified signature. */
        ensureFunctionType(parameterTypes: Type[] | null, returnType: Type, thisType?: Type | null): FunctionTypeRef;
        /** Compiles the body of a function within the specified flow. */
        compileFunctionBody(
        /** Function to compile. */
        instance: Function, 
        /** Target array of statements. */
        stmts?: ExpressionRef[] | null): ExpressionRef[];
        /** Compiles a readily resolved function instance. */
        compileFunction(instance: Function): boolean;
        compileClassUsingTypeArguments(prototype: ClassPrototype, typeArguments: NamedTypeNode[], contextualTypeArguments?: Map<string, Type>, alternativeReportNode?: Node | null): void;
        compileClass(instance: Class): boolean;
        compileInterfaceDeclaration(declaration: InterfaceDeclaration, typeArguments: NamedTypeNode[], contextualTypeArguments?: Map<string, Type> | null, alternativeReportNode?: Node | null): void;
        /** Adds a static memory segment with the specified data. */
        addMemorySegment(buffer: Uint8Array, alignment?: number): MemorySegment;
        /** Ensures that the specified string exists in static memory and returns a pointer to it. */
        ensureStaticString(stringValue: string): ExpressionRef;
        ensureStaticArrayBuffer(elementType: Type, values: ExpressionRef[]): MemorySegment;
        ensureStaticArrayHeader(elementType: Type, bufferSegment: MemorySegment): MemorySegment;
        /** Ensures that a table entry exists for the specified function and returns its index. */
        ensureFunctionTableEntry(func: Function): number;
        compileTopLevelStatement(statement: Statement, body: ExpressionRef[]): void;
        compileStatement(statement: Statement, isLastInBody?: boolean): ExpressionRef;
        compileStatements(statements: Statement[], isBody?: boolean, stmts?: ExpressionRef[] | null): ExpressionRef[];
        compileBlockStatement(statement: BlockStatement): ExpressionRef;
        compileBreakStatement(statement: BreakStatement): ExpressionRef;
        compileContinueStatement(statement: ContinueStatement): ExpressionRef;
        compileDoStatement(statement: DoStatement): ExpressionRef;
        compileEmptyStatement(statement: EmptyStatement): ExpressionRef;
        compileExpressionStatement(statement: ExpressionStatement): ExpressionRef;
        compileForStatement(statement: ForStatement): ExpressionRef;
        compileIfStatement(statement: IfStatement): ExpressionRef;
        compileReturnStatement(statement: ReturnStatement, isLastInBody: boolean): ExpressionRef;
        compileSwitchStatement(statement: SwitchStatement): ExpressionRef;
        compileThrowStatement(statement: ThrowStatement): ExpressionRef;
        compileTryStatement(statement: TryStatement): ExpressionRef;
        /** Compiles a variable statement. Returns `0` if an initializer is not necessary. */
        compileVariableStatement(statement: VariableStatement): ExpressionRef;
        compileVoidStatement(statement: VoidStatement): ExpressionRef;
        compileWhileStatement(statement: WhileStatement): ExpressionRef;
        /** Compiles the value of an inlined constant element. */
        compileInlineConstant(element: VariableLikeElement, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileExpression(expression: Expression, contextualType: Type, constraints?: Constraints): ExpressionRef;
        /** Compiles and precomputes an expression, possibly yielding a costant value. */
        precomputeExpression(expression: Expression, contextualType: Type, constraints?: Constraints): ExpressionRef;
        convertExpression(expr: ExpressionRef, 
        /** Original type. */
        fromType: Type, 
        /** New type. */
        toType: Type, 
        /** Whether the conversion is explicit.*/
        explicit: boolean, 
        /** Whether the result should be wrapped, if a small integer. */
        wrap: boolean, reportNode: Node): ExpressionRef;
        compileAssertionExpression(expression: AssertionExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        private f32ModInstance;
        private f64ModInstance;
        private f32PowInstance;
        private f64PowInstance;
        compileBinaryExpression(expression: BinaryExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileUnaryOverload(operatorInstance: Function, value: Expression, valueExpr: ExpressionRef, reportNode: Node): ExpressionRef;
        compileBinaryOverload(operatorInstance: Function, left: Expression, leftExpr: ExpressionRef, right: Expression, reportNode: Node): ExpressionRef;
        compileAssignment(expression: Expression, valueExpression: Expression, contextualType: Type): ExpressionRef;
        /** Makes an assignment expression or block, assigning a value to a target. */
        makeAssignment(
        /** Target element, e.g. a Local. */
        target: Element, 
        /** Value expression that has been compiled in a previous step already. */
        valueExpr: ExpressionRef, 
        /** Expression reference. Has already been compiled to `valueExpr`. */
        valueExpression: Expression, 
        /** `this` expression reference if a field or property set. */
        thisExpression: Expression | null, 
        /** Index expression reference if an indexed set. */
        indexExpression: Expression | null, 
        /** Whether to tee the value. */
        tee: boolean): ExpressionRef;
        /** Makes an assignment to a local, possibly retaining and releasing affected references and keeping track of wrap and null states. */
        private makeLocalAssignment;
        /** Makes an assignment to a global, possibly retaining and releasing affected references. */
        private makeGlobalAssignment;
        /** Makes an assignment to a field, possibly retaining and releasing affected references. */
        makeFieldAssignment(
        /** The field to assign to. */
        field: Field, 
        /** The value to assign. */
        valueExpr: ExpressionRef, 
        /** The value of `this`. */
        thisExpr: ExpressionRef, 
        /** Whether to tee the value. */
        tee: boolean): ExpressionRef;
        /** Compiles a call expression according to the specified context. */
        compileCallExpression(
        /** Call expression to compile. */
        expression: CallExpression, 
        /** Contextual type indicating the return type the caller expects, if any. */
        contextualType: Type, 
        /** Constraints indicating contextual conditions. */
        constraints: Constraints): ExpressionRef;
        private compileCallExpressionBuiltin;
        /**
         * Checks that a call with the given number as arguments can be performed according to the
         * specified signature.
         */
        checkCallSignature(signature: Signature, numArguments: number, hasThis: boolean, reportNode: Node): boolean;
        /** Checks that an unsafe expression is allowed. */
        private checkUnsafe;
        /** Compiles a direct call to a concrete function. */
        compileCallDirect(instance: Function, argumentExpressions: Expression[], reportNode: Node, thisArg?: ExpressionRef, constraints?: Constraints): ExpressionRef;
        makeCallInline(instance: Function, operands: ExpressionRef[] | null, thisArg?: ExpressionRef, immediatelyDropped?: boolean): ExpressionRef;
        /** Gets the trampoline for the specified function. */
        ensureTrampoline(original: Function): Function;
        /** Makes sure that the argument count helper global is present and returns its name. */
        private ensureArgcVar;
        /** Makes sure that the argument count helper setter is present and returns its name. */
        private ensureArgcSet;
        /** Makes retain call, retaining the expression's value. */
        makeRetain(expr: ExpressionRef): ExpressionRef;
        /** Makes a retainRelease call, retaining the new expression's value and releasing the old expression's value, in this order. */
        makeRetainRelease(oldExpr: ExpressionRef, newExpr: ExpressionRef): ExpressionRef;
        /** Makes a skippedRelease call, ignoring the new expression's value and releasing the old expression's value, in this order. */
        makeSkippedRelease(oldExpr: ExpressionRef, newExpr: ExpressionRef): ExpressionRef;
        /** Makes a release call, releasing the expression's value. Changes the current type to void.*/
        makeRelease(expr: ExpressionRef): ExpressionRef;
        /** Makes an automatic release call at the end of the current flow. */
        makeAutorelease(expr: ExpressionRef, flow?: Flow): ExpressionRef;
        /** Attempts to undo a final autorelease, returning the index of the previously retaining variable or -1 if not possible. */
        undoAutorelease(expr: ExpressionRef, flow: Flow): number;
        /**
         * Attemps to move a final autorelease from one flow to a parent.
         * It is crucial that from flow hasn't processed autoreleases yet because otherwise the final
         * retain would have been written already.
         */
        moveAutorelease(expr: ExpressionRef, fromInnerFlow: Flow, toOuterFlow: Flow): ExpressionRef;
        /** Performs any queued autoreleases in the specified flow. */
        performAutoreleases(flow: Flow, stmts: ExpressionRef[], clearFlags?: boolean): void;
        /** Performs any queued autoreleases in the specified flow and returns the value. */
        performAutoreleasesWithValue(flow: Flow, valueExpr: ExpressionRef, valueType: Type, stmts?: ExpressionRef[] | null, clearFlags?: boolean): ExpressionRef;
        /** Finishes any queued top-level autoreleases in the actual function of the specified flow. */
        finishAutoreleases(flow: Flow, stmts: ExpressionRef[]): void;
        /** Creates a direct call to the specified function. */
        makeCallDirect(instance: Function, operands: ExpressionRef[] | null, reportNode: Node, immediatelyDropped?: boolean, 
        /** Skip the usual autorelease and manage this at the callsite instead. */
        skipAutorelease?: boolean): ExpressionRef;
        /** Compiles an indirect call using an index argument and a signature. */
        compileCallIndirect(signature: Signature, indexArg: ExpressionRef, argumentExpressions: Expression[], reportNode: Node, thisArg?: ExpressionRef, immediatelyDropped?: boolean): ExpressionRef;
        /** Creates an indirect call to the function at `indexArg` in the function table. */
        makeCallIndirect(signature: Signature, indexArg: ExpressionRef, operands?: ExpressionRef[] | null, immediatelyDropped?: boolean): ExpressionRef;
        compileCommaExpression(expression: CommaExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileElementAccessExpression(expression: ElementAccessExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileFunctionExpression(expression: FunctionExpression, contextualSignature: Signature | null, constraints: Constraints): ExpressionRef;
        /** Makes sure the enclosing source file of the specified expression has been compiled. */
        private maybeCompileEnclosingSource;
        /**
         * Compiles an identifier in the specified context.
         * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
         *  precomputes them according to context.
         */
        compileIdentifierExpression(expression: IdentifierExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileInstanceOfExpression(expression: InstanceOfExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileLiteralExpression(expression: LiteralExpression, contextualType: Type, constraints: Constraints, implicitlyNegate?: boolean): ExpressionRef;
        compileStringLiteral(expression: StringLiteralExpression): ExpressionRef;
        compileArrayLiteral(elementType: Type, expressions: (Expression | null)[], constraints: Constraints, reportNode: Node): ExpressionRef;
        compileObjectLiteral(expression: ObjectLiteralExpression, contextualType: Type): ExpressionRef;
        compileNewExpression(expression: NewExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        /** Gets the compiled constructor of the specified class or generates one if none is present. */
        ensureConstructor(classInstance: Class, reportNode: Node): Function;
        compileInstantiate(
        /** Class to instantiate. */
        classInstance: Class, 
        /** Constructor arguments. */
        argumentExpressions: Expression[], 
        /** Contextual flags. */
        constraints: Constraints, 
        /** Node to report on. */
        reportNode: Node): ExpressionRef;
        /**
         * Compiles a property access in the specified context.
         * @param retainConstantType Retains the type of inlined constants if `true`, otherwise
         *  precomputes them according to context.
         */
        compilePropertyAccessExpression(expression: PropertyAccessExpression, ctxType: Type, constraints: Constraints): ExpressionRef;
        compileTernaryExpression(expression: TernaryExpression, ctxType: Type, constraints: Constraints): ExpressionRef;
        compileUnaryPostfixExpression(expression: UnaryPostfixExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileUnaryPrefixExpression(expression: UnaryPrefixExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        compileTypeof(expression: UnaryPrefixExpression, contextualType: Type, constraints: Constraints): ExpressionRef;
        /** Makes sure that a 32-bit integer value is wrapped to a valid value of the specified type. */
        ensureSmallIntegerWrap(expr: ExpressionRef, type: Type): ExpressionRef;
        /** Adds the debug location of the specified expression at the specified range to the source map. */
        addDebugLocation(expr: ExpressionRef, range: Range): void;
        /** Creates a comparison whether an expression is 'true' in a broader sense. */
        makeIsTrueish(expr: ExpressionRef, type: Type): ExpressionRef;
        /** Makes an allocation suitable to hold the data of an instance of the given class. */
        makeAllocation(classInstance: Class): ExpressionRef;
        /** Makes the initializers for a class's fields. */
        makeFieldInitialization(classInstance: Class, stmts?: ExpressionRef[]): ExpressionRef[];
        makeInstanceOfClass(expr: ExpressionRef, classInstance: Class): ExpressionRef;
    }
    /** Flattens a series of expressions to a nop, a single statement or a block depending on statement count. */
    export function flatten(module: Module, stmts: ExpressionRef[], type: NativeType): ExpressionRef;
}
declare module "assemblyscript/src/builtins" {
    /**
     * Built-in elements providing WebAssembly core functionality.
     * @module builtins
     */ /***/
    import { Compiler } from "assemblyscript/src/compiler";
    import { Node, Expression, CallExpression } from "assemblyscript/src/ast";
    import { Type } from "assemblyscript/src/types";
    import { ExpressionRef } from "assemblyscript/src/module";
    import { FunctionPrototype } from "assemblyscript/src/program";
    /** Symbols of various compiler built-ins. */
    export namespace BuiltinSymbols {
        const isInteger = "~lib/builtins/isInteger";
        const isFloat = "~lib/builtins/isFloat";
        const isBoolean = "~lib/builtins/isBoolean";
        const isSigned = "~lib/builtins/isSigned";
        const isReference = "~lib/builtins/isReference";
        const isString = "~lib/builtins/isString";
        const isArray = "~lib/builtins/isArray";
        const isArrayLike = "~lib/builtins/isArrayLike";
        const isFunction = "~lib/builtins/isFunction";
        const isNullable = "~lib/builtins/isNullable";
        const isDefined = "~lib/builtins/isDefined";
        const isConstant = "~lib/builtins/isConstant";
        const isManaged = "~lib/builtins/isManaged";
        const isVoid = "~lib/builtins/isVoid";
        const clz = "~lib/builtins/clz";
        const ctz = "~lib/builtins/ctz";
        const popcnt = "~lib/builtins/popcnt";
        const rotl = "~lib/builtins/rotl";
        const rotr = "~lib/builtins/rotr";
        const abs = "~lib/builtins/abs";
        const max = "~lib/builtins/max";
        const min = "~lib/builtins/min";
        const ceil = "~lib/builtins/ceil";
        const floor = "~lib/builtins/floor";
        const copysign = "~lib/builtins/copysign";
        const nearest = "~lib/builtins/nearest";
        const reinterpret = "~lib/builtins/reinterpret";
        const sqrt = "~lib/builtins/sqrt";
        const trunc = "~lib/builtins/trunc";
        const load = "~lib/builtins/load";
        const store = "~lib/builtins/store";
        const atomic_load = "~lib/builtins/atomic.load";
        const atomic_store = "~lib/builtins/atomic.store";
        const atomic_add = "~lib/builtins/atomic.add";
        const atomic_sub = "~lib/builtins/atomic.sub";
        const atomic_and = "~lib/builtins/atomic.and";
        const atomic_or = "~lib/builtins/atomic.or";
        const atomic_xor = "~lib/builtins/atomic.xor";
        const atomic_xchg = "~lib/builtins/atomic.xchg";
        const atomic_cmpxchg = "~lib/builtins/atomic.cmpxchg";
        const atomic_wait = "~lib/builtins/atomic.wait";
        const atomic_notify = "~lib/builtins/atomic.notify";
        const atomic_fence = "~lib/builtins/atomic.fence";
        const sizeof = "~lib/builtins/sizeof";
        const alignof = "~lib/builtins/alignof";
        const offsetof = "~lib/builtins/offsetof";
        const nameof = "~lib/builtins/nameof";
        const lengthof = "~lib/builtins/lengthof";
        const select = "~lib/builtins/select";
        const unreachable = "~lib/builtins/unreachable";
        const changetype = "~lib/builtins/changetype";
        const assert = "~lib/builtins/assert";
        const unchecked = "~lib/builtins/unchecked";
        const call_direct = "~lib/builtins/call_direct";
        const call_indirect = "~lib/builtins/call_indirect";
        const instantiate = "~lib/builtins/instantiate";
        const idof = "~lib/builtins/idof";
        const i8 = "~lib/builtins/i8";
        const i16 = "~lib/builtins/i16";
        const i32 = "~lib/builtins/i32";
        const i64 = "~lib/builtins/i64";
        const isize = "~lib/builtins/isize";
        const u8 = "~lib/builtins/u8";
        const u16 = "~lib/builtins/u16";
        const u32 = "~lib/builtins/u32";
        const u64 = "~lib/builtins/u64";
        const usize = "~lib/builtins/usize";
        const bool = "~lib/builtins/bool";
        const f32 = "~lib/builtins/f32";
        const f64 = "~lib/builtins/f64";
        const v128 = "~lib/builtins/v128";
        const void_ = "~lib/builtins/void";
        const i32_clz = "~lib/builtins/i32.clz";
        const i64_clz = "~lib/builtins/i64.clz";
        const i32_ctz = "~lib/builtins/i32.ctz";
        const i64_ctz = "~lib/builtins/i64.ctz";
        const i32_popcnt = "~lib/builtins/i32.popcnt";
        const i64_popcnt = "~lib/builtins/i64.popcnt";
        const i32_rotl = "~lib/builtins/i32.rotl";
        const i64_rotl = "~lib/builtins/i64.rotl";
        const i32_rotr = "~lib/builtins/i32.rotr";
        const i64_rotr = "~lib/builtins/i64.rotr";
        const f32_abs = "~lib/builtins/f32.abs";
        const f64_abs = "~lib/builtins/f64.abs";
        const f32_max = "~lib/builtins/f32.max";
        const f64_max = "~lib/builtins/f64.max";
        const f32_min = "~lib/builtins/f32.min";
        const f64_min = "~lib/builtins/f64.min";
        const f32_ceil = "~lib/builtins/f32.ceil";
        const f64_ceil = "~lib/builtins/f64.ceil";
        const f32_floor = "~lib/builtins/f32.floor";
        const f64_floor = "~lib/builtins/f64.floor";
        const f32_copysign = "~lib/builtins/f32.copysign";
        const f64_copysign = "~lib/builtins/f64.copysign";
        const f32_nearest = "~lib/builtins/f32.nearest";
        const f64_nearest = "~lib/builtins/f64.nearest";
        const i32_reinterpret_f32 = "~lib/builtins/i32.reinterpret_f32";
        const i64_reinterpret_f64 = "~lib/builtins/i64.reinterpret_f64";
        const f32_reinterpret_i32 = "~lib/builtins/f32.reinterpret_i32";
        const f64_reinterpret_i64 = "~lib/builtins/f64.reinterpret_i64";
        const f32_sqrt = "~lib/builtins/f32.sqrt";
        const f64_sqrt = "~lib/builtins/f64.sqrt";
        const f32_trunc = "~lib/builtins/f32.trunc";
        const f64_trunc = "~lib/builtins/f64.trunc";
        const i32_load8_s = "~lib/builtins/i32.load8_s";
        const i32_load8_u = "~lib/builtins/i32.load8_u";
        const i32_load16_s = "~lib/builtins/i32.load16_s";
        const i32_load16_u = "~lib/builtins/i32.load16_u";
        const i32_load = "~lib/builtins/i32.load";
        const i64_load8_s = "~lib/builtins/i64.load8_s";
        const i64_load8_u = "~lib/builtins/i64.load8_u";
        const i64_load16_s = "~lib/builtins/i64.load16_s";
        const i64_load16_u = "~lib/builtins/i64.load16_u";
        const i64_load32_s = "~lib/builtins/i64.load32_s";
        const i64_load32_u = "~lib/builtins/i64.load32_u";
        const i64_load = "~lib/builtins/i64.load";
        const f32_load = "~lib/builtins/f32.load";
        const f64_load = "~lib/builtins/f64.load";
        const i32_store8 = "~lib/builtins/i32.store8";
        const i32_store16 = "~lib/builtins/i32.store16";
        const i32_store = "~lib/builtins/i32.store";
        const i64_store8 = "~lib/builtins/i64.store8";
        const i64_store16 = "~lib/builtins/i64.store16";
        const i64_store32 = "~lib/builtins/i64.store32";
        const i64_store = "~lib/builtins/i64.store";
        const f32_store = "~lib/builtins/f32.store";
        const f64_store = "~lib/builtins/f64.store";
        const i32_atomic_load8_u = "~lib/builtins/i32.atomic.load8_u";
        const i32_atomic_load16_u = "~lib/builtins/i32.atomic.load16_u";
        const i32_atomic_load = "~lib/builtins/i32.atomic.load";
        const i64_atomic_load8_u = "~lib/builtins/i64.atomic.load8_u";
        const i64_atomic_load16_u = "~lib/builtins/i64.atomic.load16_u";
        const i64_atomic_load32_u = "~lib/builtins/i64.atomic.load32_u";
        const i64_atomic_load = "~lib/builtins/i64.atomic.load";
        const i32_atomic_store8 = "~lib/builtins/i32.atomic.store8";
        const i32_atomic_store16 = "~lib/builtins/i32.atomic.store16";
        const i32_atomic_store = "~lib/builtins/i32.atomic.store";
        const i64_atomic_store8 = "~lib/builtins/i64.atomic.store8";
        const i64_atomic_store16 = "~lib/builtins/i64.atomic.store16";
        const i64_atomic_store32 = "~lib/builtins/i64.atomic.store32";
        const i64_atomic_store = "~lib/builtins/i64.atomic.store";
        const i32_atomic_rmw8_add_u = "~lib/builtins/i32.atomic.rmw8.add_u";
        const i32_atomic_rmw16_add_u = "~lib/builtins/i32.atomic.rmw16.add_u";
        const i32_atomic_rmw_add = "~lib/builtins/i32.atomic.rmw.add";
        const i64_atomic_rmw8_add_u = "~lib/builtins/i64.atomic.rmw8.add_u";
        const i64_atomic_rmw16_add_u = "~lib/builtins/i64.atomic.rmw16.add_u";
        const i64_atomic_rmw32_add_u = "~lib/builtins/i64.atomic.rmw32.add_u";
        const i64_atomic_rmw_add = "~lib/builtins/i64.atomic.rmw.add";
        const i32_atomic_rmw8_sub_u = "~lib/builtins/i32.atomic.rmw8.sub_u";
        const i32_atomic_rmw16_sub_u = "~lib/builtins/i32.atomic.rmw16.sub_u";
        const i32_atomic_rmw_sub = "~lib/builtins/i32.atomic.rmw.sub";
        const i64_atomic_rmw8_sub_u = "~lib/builtins/i64.atomic.rmw8.sub_u";
        const i64_atomic_rmw16_sub_u = "~lib/builtins/i64.atomic.rmw16.sub_u";
        const i64_atomic_rmw32_sub_u = "~lib/builtins/i64.atomic.rmw32.sub_u";
        const i64_atomic_rmw_sub = "~lib/builtins/i64.atomic.rmw.sub";
        const i32_atomic_rmw8_and_u = "~lib/builtins/i32.atomic.rmw8.and_u";
        const i32_atomic_rmw16_and_u = "~lib/builtins/i32.atomic.rmw16.and_u";
        const i32_atomic_rmw_and = "~lib/builtins/i32.atomic.rmw.and";
        const i64_atomic_rmw8_and_u = "~lib/builtins/i64.atomic.rmw8.and_u";
        const i64_atomic_rmw16_and_u = "~lib/builtins/i64.atomic.rmw16.and_u";
        const i64_atomic_rmw32_and_u = "~lib/builtins/i64.atomic.rmw32.and_u";
        const i64_atomic_rmw_and = "~lib/builtins/i64.atomic.rmw.and";
        const i32_atomic_rmw8_or_u = "~lib/builtins/i32.atomic.rmw8.or_u";
        const i32_atomic_rmw16_or_u = "~lib/builtins/i32.atomic.rmw16.or_u";
        const i32_atomic_rmw_or = "~lib/builtins/i32.atomic.rmw.or";
        const i64_atomic_rmw8_or_u = "~lib/builtins/i64.atomic.rmw8.or_u";
        const i64_atomic_rmw16_or_u = "~lib/builtins/i64.atomic.rmw16.or_u";
        const i64_atomic_rmw32_or_u = "~lib/builtins/i64.atomic.rmw32.or_u";
        const i64_atomic_rmw_or = "~lib/builtins/i64.atomic.rmw.or";
        const i32_atomic_rmw8_xor_u = "~lib/builtins/i32.atomic.rmw8.xor_u";
        const i32_atomic_rmw16_xor_u = "~lib/builtins/i32.atomic.rmw16.xor_u";
        const i32_atomic_rmw_xor = "~lib/builtins/i32.atomic.rmw.xor";
        const i64_atomic_rmw8_xor_u = "~lib/builtins/i64.atomic.rmw8.xor_u";
        const i64_atomic_rmw16_xor_u = "~lib/builtins/i64.atomic.rmw16.xor_u";
        const i64_atomic_rmw32_xor_u = "~lib/builtins/i64.atomic.rmw32.xor_u";
        const i64_atomic_rmw_xor = "~lib/builtins/i64.atomic.rmw.xor";
        const i32_atomic_rmw8_xchg_u = "~lib/builtins/i32.atomic.rmw8.xchg_u";
        const i32_atomic_rmw16_xchg_u = "~lib/builtins/i32.atomic.rmw16.xchg_u";
        const i32_atomic_rmw_xchg = "~lib/builtins/i32.atomic.rmw.xchg";
        const i64_atomic_rmw8_xchg_u = "~lib/builtins/i64.atomic.rmw8.xchg_u";
        const i64_atomic_rmw16_xchg_u = "~lib/builtins/i64.atomic.rmw16.xchg_u";
        const i64_atomic_rmw32_xchg_u = "~lib/builtins/i64.atomic.rmw32.xchg_u";
        const i64_atomic_rmw_xchg = "~lib/builtins/i64.atomic.rmw.xchg";
        const i32_atomic_rmw8_cmpxchg_u = "~lib/builtins/i32.atomic.rmw8.cmpxchg_u";
        const i32_atomic_rmw16_cmpxchg_u = "~lib/builtins/i32.atomic.rmw16.cmpxchg_u";
        const i32_atomic_rmw_cmpxchg = "~lib/builtins/i32.atomic.rmw.cmpxchg";
        const i64_atomic_rmw8_cmpxchg_u = "~lib/builtins/i64.atomic.rmw8.cmpxchg_u";
        const i64_atomic_rmw16_cmpxchg_u = "~lib/builtins/i64.atomic.rmw16.cmpxchg_u";
        const i64_atomic_rmw32_cmpxchg_u = "~lib/builtins/i64.atomic.rmw32.cmpxchg_u";
        const i64_atomic_rmw_cmpxchg = "~lib/builtins/i64.atomic.rmw.cmpxchg";
        const i32_wait = "~lib/builtins/i32.wait";
        const i64_wait = "~lib/builtins/i64.wait";
        const v128_splat = "~lib/builtins/v128.splat";
        const v128_extract_lane = "~lib/builtins/v128.extract_lane";
        const v128_replace_lane = "~lib/builtins/v128.replace_lane";
        const v128_shuffle = "~lib/builtins/v128.shuffle";
        const v128_swizzle = "~lib/builtins/v128.swizzle";
        const v128_load_splat = "~lib/builtins/v128.load_splat";
        const v128_load_ext = "~lib/builtins/v128.load_ext";
        const v128_load = "~lib/builtins/v128.load";
        const v128_store = "~lib/builtins/v128.store";
        const v128_add = "~lib/builtins/v128.add";
        const v128_sub = "~lib/builtins/v128.sub";
        const v128_mul = "~lib/builtins/v128.mul";
        const v128_div = "~lib/builtins/v128.div";
        const v128_neg = "~lib/builtins/v128.neg";
        const v128_add_saturate = "~lib/builtins/v128.add_saturate";
        const v128_sub_saturate = "~lib/builtins/v128.sub_saturate";
        const v128_shl = "~lib/builtins/v128.shl";
        const v128_shr = "~lib/builtins/v128.shr";
        const v128_and = "~lib/builtins/v128.and";
        const v128_or = "~lib/builtins/v128.or";
        const v128_xor = "~lib/builtins/v128.xor";
        const v128_andnot = "~lib/builtins/v128.andnot";
        const v128_not = "~lib/builtins/v128.not";
        const v128_bitselect = "~lib/builtins/v128.bitselect";
        const v128_any_true = "~lib/builtins/v128.any_true";
        const v128_all_true = "~lib/builtins/v128.all_true";
        const v128_min = "~lib/builtins/v128.min";
        const v128_max = "~lib/builtins/v128.max";
        const v128_dot = "~lib/builtins/v128.dot";
        const v128_abs = "~lib/builtins/v128.abs";
        const v128_sqrt = "~lib/builtins/v128.sqrt";
        const v128_eq = "~lib/builtins/v128.eq";
        const v128_ne = "~lib/builtins/v128.ne";
        const v128_lt = "~lib/builtins/v128.lt";
        const v128_le = "~lib/builtins/v128.le";
        const v128_gt = "~lib/builtins/v128.gt";
        const v128_ge = "~lib/builtins/v128.ge";
        const v128_convert = "~lib/builtins/v128.convert";
        const v128_trunc_sat = "~lib/builtins/v128.trunc_sat";
        const v128_narrow = "~lib/builtins/v128.narrow";
        const v128_widen_low = "~lib/builtins/v128.widen_low";
        const v128_widen_high = "~lib/builtins/v128.widen_high";
        const v128_qfma = "~lib/builtins/v128.qfma";
        const v128_qfms = "~lib/builtins/v128.qfms";
        const i8x16 = "~lib/builtins/i8x16";
        const i16x8 = "~lib/builtins/i16x8";
        const i32x4 = "~lib/builtins/i32x4";
        const i64x2 = "~lib/builtins/i64x2";
        const f32x4 = "~lib/builtins/f32x4";
        const f64x2 = "~lib/builtins/f64x2";
        const i8x16_splat = "~lib/builtins/i8x16.splat";
        const i8x16_extract_lane_s = "~lib/builtins/i8x16.extract_lane_s";
        const i8x16_extract_lane_u = "~lib/builtins/i8x16.extract_lane_u";
        const i8x16_replace_lane = "~lib/builtins/i8x16.replace_lane";
        const i8x16_add = "~lib/builtins/i8x16.add";
        const i8x16_sub = "~lib/builtins/i8x16.sub";
        const i8x16_mul = "~lib/builtins/i8x16.mul";
        const i8x16_min_s = "~lib/builtins/i8x16.min_s";
        const i8x16_min_u = "~lib/builtins/i8x16.min_u";
        const i8x16_max_s = "~lib/builtins/i8x16.max_s";
        const i8x16_max_u = "~lib/builtins/i8x16.max_u";
        const i8x16_neg = "~lib/builtins/i8x16.neg";
        const i8x16_add_saturate_s = "~lib/builtins/i8x16.add_saturate_s";
        const i8x16_add_saturate_u = "~lib/builtins/i8x16.add_saturate_u";
        const i8x16_sub_saturate_s = "~lib/builtins/i8x16.sub_saturate_s";
        const i8x16_sub_saturate_u = "~lib/builtins/i8x16.sub_saturate_u";
        const i8x16_shl = "~lib/builtins/i8x16.shl";
        const i8x16_shr_s = "~lib/builtins/i8x16.shr_s";
        const i8x16_shr_u = "~lib/builtins/i8x16.shr_u";
        const i8x16_any_true = "~lib/builtins/i8x16.any_true";
        const i8x16_all_true = "~lib/builtins/i8x16.all_true";
        const i8x16_eq = "~lib/builtins/i8x16.eq";
        const i8x16_ne = "~lib/builtins/i8x16.ne";
        const i8x16_lt_s = "~lib/builtins/i8x16.lt_s";
        const i8x16_lt_u = "~lib/builtins/i8x16.lt_u";
        const i8x16_le_s = "~lib/builtins/i8x16.le_s";
        const i8x16_le_u = "~lib/builtins/i8x16.le_u";
        const i8x16_gt_s = "~lib/builtins/i8x16.gt_s";
        const i8x16_gt_u = "~lib/builtins/i8x16.gt_u";
        const i8x16_ge_s = "~lib/builtins/i8x16.ge_s";
        const i8x16_ge_u = "~lib/builtins/i8x16.ge_u";
        const i8x16_narrow_i16x8_s = "~lib/builtins/i8x16.narrow_i16x8_s";
        const i8x16_narrow_i16x8_u = "~lib/builtins/i8x16.narrow_i16x8_u";
        const i16x8_splat = "~lib/builtins/i16x8.splat";
        const i16x8_extract_lane_s = "~lib/builtins/i16x8.extract_lane_s";
        const i16x8_extract_lane_u = "~lib/builtins/i16x8.extract_lane_u";
        const i16x8_replace_lane = "~lib/builtins/i16x8.replace_lane";
        const i16x8_add = "~lib/builtins/i16x8.add";
        const i16x8_sub = "~lib/builtins/i16x8.sub";
        const i16x8_mul = "~lib/builtins/i16x8.mul";
        const i16x8_min_s = "~lib/builtins/i16x8.min_s";
        const i16x8_min_u = "~lib/builtins/i16x8.min_u";
        const i16x8_max_s = "~lib/builtins/i16x8.max_s";
        const i16x8_max_u = "~lib/builtins/i16x8.max_u";
        const i16x8_neg = "~lib/builtins/i16x8.neg";
        const i16x8_add_saturate_s = "~lib/builtins/i16x8.add_saturate_s";
        const i16x8_add_saturate_u = "~lib/builtins/i16x8.add_saturate_u";
        const i16x8_sub_saturate_s = "~lib/builtins/i16x8.sub_saturate_s";
        const i16x8_sub_saturate_u = "~lib/builtins/i16x8.sub_saturate_u";
        const i16x8_shl = "~lib/builtins/i16x8.shl";
        const i16x8_shr_s = "~lib/builtins/i16x8.shr_s";
        const i16x8_shr_u = "~lib/builtins/i16x8.shr_u";
        const i16x8_any_true = "~lib/builtins/i16x8.any_true";
        const i16x8_all_true = "~lib/builtins/i16x8.all_true";
        const i16x8_eq = "~lib/builtins/i16x8.eq";
        const i16x8_ne = "~lib/builtins/i16x8.ne";
        const i16x8_lt_s = "~lib/builtins/i16x8.lt_s";
        const i16x8_lt_u = "~lib/builtins/i16x8.lt_u";
        const i16x8_le_s = "~lib/builtins/i16x8.le_s";
        const i16x8_le_u = "~lib/builtins/i16x8.le_u";
        const i16x8_gt_s = "~lib/builtins/i16x8.gt_s";
        const i16x8_gt_u = "~lib/builtins/i16x8.gt_u";
        const i16x8_ge_s = "~lib/builtins/i16x8.ge_s";
        const i16x8_ge_u = "~lib/builtins/i16x8.ge_u";
        const i16x8_narrow_i32x4_s = "~lib/builtins/i16x8.narrow_i32x4_s";
        const i16x8_narrow_i32x4_u = "~lib/builtins/i16x8.narrow_i32x4_u";
        const i16x8_widen_low_i8x16_s = "~lib/builtins/i16x8.widen_low_i8x16_s";
        const i16x8_widen_low_i8x16_u = "~lib/builtins/i16x8.widen_low_i8x16_u";
        const i16x8_widen_high_i8x16_s = "~lib/builtins/i16x8.widen_high_i8x16_s";
        const i16x8_widen_high_i8x16_u = "~lib/builtins/i16x8.widen_high_i8x16_u";
        const i16x8_load8x8_s = "~lib/builtins/i16x8.load8x8_s";
        const i16x8_load8x8_u = "~lib/builtins/i16x8.load8x8_u";
        const i32x4_splat = "~lib/builtins/i32x4.splat";
        const i32x4_extract_lane = "~lib/builtins/i32x4.extract_lane";
        const i32x4_replace_lane = "~lib/builtins/i32x4.replace_lane";
        const i32x4_add = "~lib/builtins/i32x4.add";
        const i32x4_sub = "~lib/builtins/i32x4.sub";
        const i32x4_mul = "~lib/builtins/i32x4.mul";
        const i32x4_min_s = "~lib/builtins/i32x4.min_s";
        const i32x4_min_u = "~lib/builtins/i32x4.min_u";
        const i32x4_max_s = "~lib/builtins/i32x4.max_s";
        const i32x4_max_u = "~lib/builtins/i32x4.max_u";
        const i32x4_dot_i16x8_s = "~lib/builtins/i32x4.dot_i16x8_s";
        const i32x4_neg = "~lib/builtins/i32x4.neg";
        const i32x4_shl = "~lib/builtins/i32x4.shl";
        const i32x4_shr_s = "~lib/builtins/i32x4.shr_s";
        const i32x4_shr_u = "~lib/builtins/i32x4.shr_u";
        const i32x4_any_true = "~lib/builtins/i32x4.any_true";
        const i32x4_all_true = "~lib/builtins/i32x4.all_true";
        const i32x4_eq = "~lib/builtins/i32x4.eq";
        const i32x4_ne = "~lib/builtins/i32x4.ne";
        const i32x4_lt_s = "~lib/builtins/i32x4.lt_s";
        const i32x4_lt_u = "~lib/builtins/i32x4.lt_u";
        const i32x4_le_s = "~lib/builtins/i32x4.le_s";
        const i32x4_le_u = "~lib/builtins/i32x4.le_u";
        const i32x4_gt_s = "~lib/builtins/i32x4.gt_s";
        const i32x4_gt_u = "~lib/builtins/i32x4.gt_u";
        const i32x4_ge_s = "~lib/builtins/i32x4.ge_s";
        const i32x4_ge_u = "~lib/builtins/i32x4.ge_u";
        const i32x4_trunc_sat_f32x4_s = "~lib/builtins/i32x4.trunc_sat_f32x4_s";
        const i32x4_trunc_sat_f32x4_u = "~lib/builtins/i32x4.trunc_sat_f32x4_u";
        const i32x4_widen_low_i16x8_s = "~lib/builtins/i32x4.widen_low_i16x8_s";
        const i32x4_widen_low_i16x8_u = "~lib/builtins/i32x4.widen_low_i16x8_u";
        const i32x4_widen_high_i16x8_s = "~lib/builtins/i32x4.widen_high_i16x8_s";
        const i32x4_widen_high_i16x8_u = "~lib/builtins/i32x4.widen_high_i16x8_u";
        const i32x4_load16x4_s = "~lib/builtins/i32x4.load16x4_s";
        const i32x4_load16x4_u = "~lib/builtins/i32x4.load16x4_u";
        const i64x2_splat = "~lib/builtins/i64x2.splat";
        const i64x2_extract_lane = "~lib/builtins/i64x2.extract_lane";
        const i64x2_replace_lane = "~lib/builtins/i64x2.replace_lane";
        const i64x2_add = "~lib/builtins/i64x2.add";
        const i64x2_sub = "~lib/builtins/i64x2.sub";
        const i64x2_neg = "~lib/builtins/i64x2.neg";
        const i64x2_shl = "~lib/builtins/i64x2.shl";
        const i64x2_shr_s = "~lib/builtins/i64x2.shr_s";
        const i64x2_shr_u = "~lib/builtins/i64x2.shr_u";
        const i64x2_any_true = "~lib/builtins/i64x2.any_true";
        const i64x2_all_true = "~lib/builtins/i64x2.all_true";
        const i64x2_trunc_sat_f64x2_s = "~lib/builtins/i64x2.trunc_sat_f64x2_s";
        const i64x2_trunc_sat_f64x2_u = "~lib/builtins/i64x2.trunc_sat_f64x2_u";
        const i64x2_load32x2_s = "~lib/builtins/i64x2.load32x2_s";
        const i64x2_load32x2_u = "~lib/builtins/i64x2.load32x2_u";
        const f32x4_splat = "~lib/builtins/f32x4.splat";
        const f32x4_extract_lane = "~lib/builtins/f32x4.extract_lane";
        const f32x4_replace_lane = "~lib/builtins/f32x4.replace_lane";
        const f32x4_add = "~lib/builtins/f32x4.add";
        const f32x4_sub = "~lib/builtins/f32x4.sub";
        const f32x4_mul = "~lib/builtins/f32x4.mul";
        const f32x4_div = "~lib/builtins/f32x4.div";
        const f32x4_neg = "~lib/builtins/f32x4.neg";
        const f32x4_min = "~lib/builtins/f32x4.min";
        const f32x4_max = "~lib/builtins/f32x4.max";
        const f32x4_abs = "~lib/builtins/f32x4.abs";
        const f32x4_sqrt = "~lib/builtins/f32x4.sqrt";
        const f32x4_eq = "~lib/builtins/f32x4.eq";
        const f32x4_ne = "~lib/builtins/f32x4.ne";
        const f32x4_lt = "~lib/builtins/f32x4.lt";
        const f32x4_le = "~lib/builtins/f32x4.le";
        const f32x4_gt = "~lib/builtins/f32x4.gt";
        const f32x4_ge = "~lib/builtins/f32x4.ge";
        const f32x4_convert_i32x4_s = "~lib/builtins/f32x4.convert_i32x4_s";
        const f32x4_convert_i32x4_u = "~lib/builtins/f32x4.convert_i32x4_u";
        const f32x4_qfma = "~lib/builtins/f32x4.qfma";
        const f32x4_qfms = "~lib/builtins/f32x4.qfms";
        const f64x2_splat = "~lib/builtins/f64x2.splat";
        const f64x2_extract_lane = "~lib/builtins/f64x2.extract_lane";
        const f64x2_replace_lane = "~lib/builtins/f64x2.replace_lane";
        const f64x2_add = "~lib/builtins/f64x2.add";
        const f64x2_sub = "~lib/builtins/f64x2.sub";
        const f64x2_mul = "~lib/builtins/f64x2.mul";
        const f64x2_div = "~lib/builtins/f64x2.div";
        const f64x2_neg = "~lib/builtins/f64x2.neg";
        const f64x2_min = "~lib/builtins/f64x2.min";
        const f64x2_max = "~lib/builtins/f64x2.max";
        const f64x2_abs = "~lib/builtins/f64x2.abs";
        const f64x2_sqrt = "~lib/builtins/f64x2.sqrt";
        const f64x2_eq = "~lib/builtins/f64x2.eq";
        const f64x2_ne = "~lib/builtins/f64x2.ne";
        const f64x2_lt = "~lib/builtins/f64x2.lt";
        const f64x2_le = "~lib/builtins/f64x2.le";
        const f64x2_gt = "~lib/builtins/f64x2.gt";
        const f64x2_ge = "~lib/builtins/f64x2.ge";
        const f64x2_convert_i64x2_s = "~lib/builtins/f64x2.convert_i64x2_s";
        const f64x2_convert_i64x2_u = "~lib/builtins/f64x2.convert_i64x2_u";
        const f64x2_qfma = "~lib/builtins/f64x2.qfma";
        const f64x2_qfms = "~lib/builtins/f64x2.qfms";
        const v8x16_shuffle = "~lib/builtins/v8x16.shuffle";
        const v8x16_swizzle = "~lib/builtins/v8x16.swizzle";
        const v8x16_load_splat = "~lib/builtins/v8x16.load_splat";
        const v16x8_load_splat = "~lib/builtins/v16x8.load_splat";
        const v32x4_load_splat = "~lib/builtins/v32x4.load_splat";
        const v64x2_load_splat = "~lib/builtins/v64x2.load_splat";
        const heap_base = "~lib/heap/__heap_base";
        const rtti_base = "~lib/rt/__rtti_base";
        const visit_globals = "~lib/rt/__visit_globals";
        const visit_members = "~lib/rt/__visit_members";
        const isNaN = "~lib/number/isNaN";
        const isFinite = "~lib/number/isFinite";
        const ERROR = "~lib/diagnostics/ERROR";
        const WARNING = "~lib/diagnostics/WARNING";
        const INFO = "~lib/diagnostics/INFO";
        const memory_size = "~lib/memory/memory.size";
        const memory_grow = "~lib/memory/memory.grow";
        const memory_copy = "~lib/memory/memory.copy";
        const memory_fill = "~lib/memory/memory.fill";
        const memory_allocate = "~lib/memory/memory.allocate";
        const memory_free = "~lib/memory/memory.free";
        const memory_reset = "~lib/memory/memory.reset";
        const runtime_instanceof = "~lib/runtime/runtime.instanceof";
        const runtime_flags = "~lib/runtime/runtime.flags";
        const runtime_allocate = "~lib/util/runtime/allocate";
        const runtime_reallocate = "~lib/util/runtime/reallocate";
        const runtime_register = "~lib/util/runtime/register";
        const runtime_discard = "~lib/util/runtime/discard";
        const runtime_makeArray = "~lib/util/runtime/makeArray";
        const Int8Array = "~lib/typedarray/Int8Array";
        const Uint8Array = "~lib/typedarray/Uint8Array";
        const Int16Array = "~lib/typedarray/Int16Array";
        const Uint16Array = "~lib/typedarray/Uint16Array";
        const Int32Array = "~lib/typedarray/Int32Array";
        const Uint32Array = "~lib/typedarray/Uint32Array";
        const Int64Array = "~lib/typedarray/Int64Array";
        const Uint64Array = "~lib/typedarray/Uint64Array";
        const Uint8ClampedArray = "~lib/typedarray/Uint8ClampedArray";
        const Float32Array = "~lib/typedarray/Float32Array";
        const Float64Array = "~lib/typedarray/Float64Array";
        const started = "~lib/started";
        const argc = "~lib/argc";
        const setargc = "~lib/setargc";
        const capabilities = "~lib/capabilities";
    }
    /** Compiles a call to a built-in function. */
    export function compileCall(compiler: Compiler, 
    /** Respective function prototype. */
    prototype: FunctionPrototype, 
    /** Pre-resolved type arguments. */
    typeArguments: Type[] | null, 
    /** Operand expressions. */
    operands: Expression[], 
    /** Contextual type. */
    contextualType: Type, 
    /** Respective call expression. */
    reportNode: CallExpression, 
    /** Indicates that contextual type is ASM type. */
    isAsm?: boolean): ExpressionRef;
    /** Compiles an abort wired to the conditionally imported 'abort' function. */
    export function compileAbort(compiler: Compiler, message: Expression | null, reportNode: Node): ExpressionRef;
    /** Compiles the `visit_globals` function. */
    export function compileVisitGlobals(compiler: Compiler): void;
    /** Compiles the `visit_members` function. */
    export function compileVisitMembers(compiler: Compiler): void;
    /** Compiles runtime type information for use by stdlib. */
    export function compileRTTI(compiler: Compiler): void;
}
declare module "assemblyscript/src/decompiler" {
    /**
     * A decompiler that generates low-level AssemblyScript from WebAssembly binaries.
     * @module decompiler
     */ /***/
    import { Module, FunctionRef, ExpressionRef } from "assemblyscript/src/module";
    export class Decompiler {
        static decompile(module: Module): string;
        text: string[];
        functionId: number;
        constructor();
        /** Decompiles a module to an AST that can then be serialized. */
        decompile(module: Module): void;
        decompileFunction(func: FunctionRef): void;
        decompileExpression(expr: ExpressionRef): void;
        private push;
        finish(): string;
    }
}
declare module "assemblyscript/src/definitions" {
    /**
     * Definition builders for WebIDL and TypeScript.
     * @module definitions
     */ /***/
    import { Program, Element, Global, Enum, Field, Function, Class, Namespace, Interface, File } from "assemblyscript/src/program";
    import { Type } from "assemblyscript/src/types";
    /** Walker base class. */
    export abstract class ExportsWalker {
        /** Program reference. */
        program: Program;
        /** Whether to include private members */
        includePrivate: boolean;
        /** Already seen elements. */
        seen: Map<Element, string>;
        /** Constructs a new Element walker. */
        constructor(program: Program, includePrivate?: boolean);
        /** Walks all elements and calls the respective handlers. */
        walk(): void;
        /** Visits all exported elements of a file. */
        visitFile(file: File): void;
        /** Visits an element.*/
        visitElement(name: string, element: Element): void;
        private visitFunctionInstances;
        private visitClassInstances;
        private visitPropertyInstances;
        abstract visitGlobal(name: string, element: Global): void;
        abstract visitEnum(name: string, element: Enum): void;
        abstract visitFunction(name: string, element: Function): void;
        abstract visitClass(name: string, element: Class): void;
        abstract visitInterface(name: string, element: Interface): void;
        abstract visitField(name: string, element: Field): void;
        abstract visitNamespace(name: string, element: Element): void;
        abstract visitAlias(name: string, element: Element, originalName: string): void;
    }
    /** A WebIDL definitions builder. */
    export class IDLBuilder extends ExportsWalker {
        /** Builds WebIDL definitions for the specified program. */
        static build(program: Program): string;
        private sb;
        private indentLevel;
        /** Constructs a new WebIDL builder. */
        constructor(program: Program, includePrivate?: boolean);
        visitGlobal(name: string, element: Global): void;
        visitEnum(name: string, element: Enum): void;
        visitFunction(name: string, element: Function): void;
        visitClass(name: string, element: Class): void;
        visitInterface(name: string, element: Interface): void;
        visitField(name: string, element: Field): void;
        visitNamespace(name: string, element: Namespace): void;
        visitAlias(name: string, element: Element, originalName: string): void;
        typeToString(type: Type): string;
        build(): string;
    }
    /** A TypeScript definitions builder. */
    export class TSDBuilder extends ExportsWalker {
        /** Builds TypeScript definitions for the specified program. */
        static build(program: Program): string;
        private sb;
        private indentLevel;
        private unknown;
        /** Constructs a new WebIDL builder. */
        constructor(program: Program, includePrivate?: boolean);
        visitGlobal(name: string, element: Global): void;
        visitEnum(name: string, element: Enum): void;
        visitFunction(name: string, element: Function): void;
        visitClass(name: string, element: Class): void;
        visitInterface(name: string, element: Interface): void;
        visitField(name: string, element: Field): void;
        visitNamespace(name: string, element: Element): void;
        visitAlias(name: string, element: Element, originalName: string): void;
        typeToString(type: Type): string;
        build(): string;
    }
}
declare module "assemblyscript/src/parser" {
    /**
     * A TypeScript parser for the AssemblyScript subset.
     * @module parser
     */ /***/
    import { CommonFlags } from "assemblyscript/src/common";
    import { Program } from "assemblyscript/src/program";
    import { Tokenizer, CommentHandler } from "assemblyscript/src/tokenizer";
    import { DiagnosticEmitter } from "assemblyscript/src/diagnostics";
    import { Source, TypeNode, FunctionTypeNode, Expression, ClassExpression, FunctionExpression, Statement, BlockStatement, BreakStatement, ClassDeclaration, ContinueStatement, DeclarationStatement, DecoratorNode, DoStatement, EnumDeclaration, EnumValueDeclaration, ExportImportStatement, ExportMember, ExportStatement, ExpressionStatement, ForStatement, FunctionDeclaration, IfStatement, ImportDeclaration, ImportStatement, IndexSignatureDeclaration, NamespaceDeclaration, ParameterNode, ReturnStatement, SwitchCase, SwitchStatement, ThrowStatement, TryStatement, TypeDeclaration, TypeParameterNode, VariableStatement, VariableDeclaration, VoidStatement, WhileStatement } from "assemblyscript/src/ast";
    /** Parser interface. */
    export class Parser extends DiagnosticEmitter {
        /** Program being created. */
        program: Program;
        /** Source file names to be requested next. */
        backlog: string[];
        /** Source file names already seen, that is processed or backlogged. */
        seenlog: Set<string>;
        /** Source file names already completely processed. */
        donelog: Set<string>;
        /** Optional handler to intercept comments while tokenizing. */
        onComment: CommentHandler | null;
        /** Current file being parsed. */
        currentSource: Source;
        /** Dependency map **/
        dependees: Map<string, Source>;
        /** Constructs a new parser. */
        constructor();
        /** Parses a file and adds its definitions to the program. */
        parseFile(
        /** Source text of the file. */
        text: string, 
        /** Normalized path of the file. */
        path: string, 
        /** Whether this is an entry file. */
        isEntry: boolean): void;
        /** Parses a top-level statement. */
        parseTopLevelStatement(tn: Tokenizer, namespace?: NamespaceDeclaration | null): Statement | null;
        /** Obtains the next file to parse. */
        nextFile(): string | null;
        /** Obtains the dependee of the given imported file. */
        getDependee(dependent: string): string | null;
        /** Finishes parsing and returns the program. */
        finish(): Program;
        /** Parses a type. */
        parseType(tn: Tokenizer, acceptParenthesized?: boolean, suppressErrors?: boolean): TypeNode | null;
        private tryParseSignatureIsSignature;
        /** Parses a function type, as used in type declarations. */
        tryParseFunctionType(tn: Tokenizer): FunctionTypeNode | null;
        parseDecorator(tn: Tokenizer): DecoratorNode | null;
        parseVariable(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): VariableStatement | null;
        parseVariableDeclaration(tn: Tokenizer, parentFlags: CommonFlags, parentDecorators: DecoratorNode[] | null): VariableDeclaration | null;
        parseEnum(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): EnumDeclaration | null;
        parseEnumValue(tn: Tokenizer, parentFlags: CommonFlags): EnumValueDeclaration | null;
        parseReturn(tn: Tokenizer): ReturnStatement | null;
        parseTypeParameters(tn: Tokenizer): TypeParameterNode[] | null;
        parseTypeParameter(tn: Tokenizer): TypeParameterNode | null;
        private parseParametersThis;
        parseParameters(tn: Tokenizer, isConstructor?: boolean): ParameterNode[] | null;
        parseParameter(tn: Tokenizer, isConstructor?: boolean): ParameterNode | null;
        parseFunction(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): FunctionDeclaration | null;
        parseFunctionExpression(tn: Tokenizer): FunctionExpression | null;
        private parseFunctionExpressionCommon;
        parseClassOrInterface(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): ClassDeclaration | null;
        parseClassExpression(tn: Tokenizer): ClassExpression | null;
        parseClassMember(tn: Tokenizer, parent: ClassDeclaration): DeclarationStatement | null;
        parseIndexSignatureDeclaration(tn: Tokenizer, decorators: DecoratorNode[] | null): IndexSignatureDeclaration | null;
        parseNamespace(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): NamespaceDeclaration | null;
        parseExport(tn: Tokenizer, startPos: number, isDeclare: boolean): ExportStatement | null;
        parseExportMember(tn: Tokenizer): ExportMember | null;
        parseExportDefaultAlias(tn: Tokenizer, startPos: number, defaultStart: number, defaultEnd: number): ExportStatement;
        parseImport(tn: Tokenizer): ImportStatement | null;
        parseImportDeclaration(tn: Tokenizer): ImportDeclaration | null;
        parseExportImport(tn: Tokenizer, startPos: number): ExportImportStatement | null;
        parseStatement(tn: Tokenizer, topLevel?: boolean): Statement | null;
        parseBlockStatement(tn: Tokenizer, topLevel: boolean): BlockStatement | null;
        parseBreak(tn: Tokenizer): BreakStatement | null;
        parseContinue(tn: Tokenizer): ContinueStatement | null;
        parseDoStatement(tn: Tokenizer): DoStatement | null;
        parseExpressionStatement(tn: Tokenizer): ExpressionStatement | null;
        parseForStatement(tn: Tokenizer): ForStatement | null;
        parseIfStatement(tn: Tokenizer): IfStatement | null;
        parseSwitchStatement(tn: Tokenizer): SwitchStatement | null;
        parseSwitchCase(tn: Tokenizer): SwitchCase | null;
        parseThrowStatement(tn: Tokenizer): ThrowStatement | null;
        parseTryStatement(tn: Tokenizer): TryStatement | null;
        parseTypeDeclaration(tn: Tokenizer, flags: CommonFlags, decorators: DecoratorNode[] | null, startPos: number): TypeDeclaration | null;
        parseVoidStatement(tn: Tokenizer): VoidStatement | null;
        parseWhileStatement(tn: Tokenizer): WhileStatement | null;
        parseExpressionStart(tn: Tokenizer): Expression | null;
        tryParseTypeArgumentsBeforeArguments(tn: Tokenizer): TypeNode[] | null;
        parseArguments(tn: Tokenizer): Expression[] | null;
        parseExpression(tn: Tokenizer, precedence?: Precedence): Expression | null;
        private joinPropertyCall;
        private maybeParseCallExpression;
        /** Skips over a statement on errors in an attempt to reduce unnecessary diagnostic noise. */
        skipStatement(tn: Tokenizer): void;
        /** Skips over a block on errors in an attempt to reduce unnecessary diagnostic noise. */
        skipBlock(tn: Tokenizer): void;
    }
    /** Operator precedence from least to largest. */
    export const enum Precedence {
        NONE = 0,
        COMMA = 1,
        SPREAD = 2,
        YIELD = 3,
        ASSIGNMENT = 4,
        CONDITIONAL = 5,
        LOGICAL_OR = 6,
        LOGICAL_AND = 7,
        BITWISE_OR = 8,
        BITWISE_XOR = 9,
        BITWISE_AND = 10,
        EQUALITY = 11,
        RELATIONAL = 12,
        SHIFT = 13,
        ADDITIVE = 14,
        MULTIPLICATIVE = 15,
        EXPONENTIATED = 16,
        UNARY_PREFIX = 17,
        UNARY_POSTFIX = 18,
        CALL = 19,
        MEMBERACCESS = 20,
        GROUPING = 21
    }
}
declare module "assemblyscript/src/index" {
    /**
     * Low-level C-like compiler API.
     * @module index
     */ /***/
    import { Target, Feature } from "assemblyscript/src/common";
    import { Options } from "assemblyscript/src/compiler";
    import { DiagnosticMessage, formatDiagnosticMessage } from "assemblyscript/src/diagnostics";
    import { Module } from "assemblyscript/src/module";
    import { Parser } from "assemblyscript/src/parser";
    import { Program } from "assemblyscript/src/program";
    /** Parses a source file. If `parser` has been omitted a new one is created. */
    export function parseFile(
    /** Source text of the file. */
    text: string, 
    /** Normalized path of the file. */
    path: string, 
    /** Whether this is an entry file. */
    isEntry?: boolean, 
    /** Parser reference. */
    parser?: Parser | null): Parser;
    /** Obtains the next required file's path. Returns `null` once complete. */
    export function nextFile(parser: Parser): string | null;
    /** Obtains the path of the dependee of a given imported file. */
    export function getDependee(parser: Parser, file: string): string | null;
    /** Obtains the next diagnostic message. Returns `null` once complete. */
    export function nextDiagnostic(parser: Parser): DiagnosticMessage | null;
    /** Formats a diagnostic message to a string. */
    export { formatDiagnosticMessage as formatDiagnostic };
    /** Tests whether a diagnostic is informatory. */
    export function isInfo(message: DiagnosticMessage): boolean;
    /** Tests whether a diagnostic is a warning. */
    export function isWarning(message: DiagnosticMessage): boolean;
    /** Tests whether a diagnostic is an error. */
    export function isError(message: DiagnosticMessage): boolean;
    /** Creates a new set of compiler options. */
    export function createOptions(): Options;
    /** Sets the `target` option. */
    export function setTarget(options: Options, target: Target): void;
    /** Sets the `noAssert` option. */
    export function setNoAssert(options: Options, noAssert: boolean): void;
    /** Sets the `importMemory` option. */
    export function setImportMemory(options: Options, importMemory: boolean): void;
    /** Sets the `sharedMemory` option. */
    export function setSharedMemory(options: Options, sharedMemory: number): void;
    /** Sets the `importTable` option. */
    export function setImportTable(options: Options, importTable: boolean): void;
    /** Sets the `sourceMap` option. */
    export function setSourceMap(options: Options, sourceMap: boolean): void;
    /** Sets the `memoryBase` option. */
    export function setMemoryBase(options: Options, memoryBase: number): void;
    /** Sets a 'globalAliases' value. */
    export function setGlobalAlias(options: Options, alias: string, name: string): void;
    /** Sets the `explicitStart` option. */
    export function setExplicitStart(options: Options, explicitStart: boolean): void;
    /** Sets the `noUnsafe` option. */
    export function setNoUnsafe(options: Options, noUnsafe: boolean): void;
    /** Sign extension operations. */
    export const FEATURE_SIGN_EXTENSION: Feature;
    /** Mutable global imports and exports. */
    export const FEATURE_MUTABLE_GLOBALS: Feature;
    /** Non-trapping float to int conversion operations. */
    export const FEATURE_NONTRAPPING_F2I: Feature;
    /** Bulk memory operations. */
    export const FEATURE_BULK_MEMORY: Feature;
    /** SIMD types and operations. */
    export const FEATURE_SIMD: Feature;
    /** Threading and atomic operations. */
    export const FEATURE_THREADS: Feature;
    /** Exception handling operations. */
    export const FEATURE_EXCEPTION_HANDLING: Feature;
    /** Tail call operations. */
    export const FEATURE_TAIL_CALLS: Feature;
    /** Reference types. */
    export const FEATURE_REFERENCE_TYPES: Feature;
    /** Enables a specific feature. */
    export function enableFeature(options: Options, feature: Feature): void;
    /** Disables a specific feature. */
    export function disableFeature(options: Options, feature: Feature): void;
    /** Gives the compiler a hint at the optimize levels that will be used later on. */
    export function setOptimizeLevelHints(options: Options, optimizeLevel: number, shrinkLevel: number): void;
    /** Finishes parsing. */
    export function finishParsing(parser: Parser): Program;
    /** Obtains the source of the given file. */
    export function getSource(program: Program, internalPath: string): string | null;
    /** Compiles the sources computed by the parser to a module. */
    export function compileProgram(program: Program, options?: Options | null): Module;
    /** Decompiles a module to its (low level) source. */
    export function decompileModule(module: Module): string;
    /** Builds WebIDL definitions for the specified program. */
    export function buildIDL(program: Program): string;
    /** Builds TypeScript definitions for the specified program. */
    export function buildTSD(program: Program): string;
    /** Builds a JSON file of a program's runtime type information. */
    export function buildRTTI(program: Program): string;
    /** Prefix indicating a library file. */
    export { LIBRARY_PREFIX } from "assemblyscript/src/common";
    export * from "assemblyscript/src/ast";
    export * from "assemblyscript/src/common";
    export * from "assemblyscript/src/compiler";
    export * from "assemblyscript/src/decompiler";
    export * from "assemblyscript/src/definitions";
    export * from "assemblyscript/src/diagnosticMessages.generated";
    export * from "assemblyscript/src/diagnostics";
    export * from "assemblyscript/src/flow";
    export * from "assemblyscript/src/module";
    export * from "assemblyscript/src/parser";
    export * from "assemblyscript/src/program";
    export * from "assemblyscript/src/resolver";
    export * from "assemblyscript/src/tokenizer";
    export * from "assemblyscript/src/types";
    export * from "assemblyscript/src/util/index";
}
declare module "assemblyscript/src/extra/ast" {
    /**
     * Abstract Syntax Tree extras.
     *
     * Not needed in a standalone compiler but useful for testing the parser.
     *
     * @module extra/ast
     */ /***/
    import { Node, Source, TypeNode, NamedTypeNode, FunctionTypeNode, TypeName, TypeParameterNode, IdentifierExpression, LiteralExpression, FloatLiteralExpression, IntegerLiteralExpression, StringLiteralExpression, RegexpLiteralExpression, ArrayLiteralExpression, AssertionExpression, BinaryExpression, CallExpression, CommaExpression, ElementAccessExpression, FunctionExpression, NewExpression, ParenthesizedExpression, PropertyAccessExpression, TernaryExpression, UnaryPostfixExpression, UnaryExpression, UnaryPrefixExpression, ClassExpression, ObjectLiteralExpression, Statement, BlockStatement, BreakStatement, ContinueStatement, DoStatement, EmptyStatement, ExportImportStatement, ExportStatement, ExportDefaultStatement, ExpressionStatement, ForStatement, IfStatement, ImportStatement, InstanceOfExpression, ReturnStatement, SwitchStatement, ThrowStatement, TryStatement, VariableStatement, WhileStatement, ClassDeclaration, EnumDeclaration, EnumValueDeclaration, FieldDeclaration, FunctionDeclaration, ImportDeclaration, IndexSignatureDeclaration, InterfaceDeclaration, MethodDeclaration, NamespaceDeclaration, TypeDeclaration, VariableDeclaration, DecoratorNode, ParameterNode, ExportMember, SwitchCase, DeclarationStatement } from "assemblyscript/src/ast";
    /** An AST builder. */
    export class ASTBuilder {
        /** Rebuilds the textual source from the specified AST, as far as possible. */
        static build(node: Node): string;
        private sb;
        private indentLevel;
        visitNode(node: Node): void;
        visitSource(source: Source): void;
        visitTypeNode(node: TypeNode): void;
        visitTypeName(node: TypeName): void;
        visitNamedTypeNode(node: NamedTypeNode): void;
        visitFunctionTypeNode(node: FunctionTypeNode): void;
        visitTypeParameter(node: TypeParameterNode): void;
        visitIdentifierExpression(node: IdentifierExpression): void;
        visitArrayLiteralExpression(node: ArrayLiteralExpression): void;
        visitObjectLiteralExpression(node: ObjectLiteralExpression): void;
        visitAssertionExpression(node: AssertionExpression): void;
        visitBinaryExpression(node: BinaryExpression): void;
        visitCallExpression(node: CallExpression): void;
        visitClassExpression(node: ClassExpression): void;
        visitCommaExpression(node: CommaExpression): void;
        visitElementAccessExpression(node: ElementAccessExpression): void;
        visitFunctionExpression(node: FunctionExpression): void;
        visitLiteralExpression(node: LiteralExpression): void;
        visitFloatLiteralExpression(node: FloatLiteralExpression): void;
        visitInstanceOfExpression(node: InstanceOfExpression): void;
        visitIntegerLiteralExpression(node: IntegerLiteralExpression): void;
        visitStringLiteral(str: string, singleQuoted?: boolean): void;
        visitStringLiteralExpression(node: StringLiteralExpression): void;
        visitRegexpLiteralExpression(node: RegexpLiteralExpression): void;
        visitNewExpression(node: NewExpression): void;
        visitParenthesizedExpression(node: ParenthesizedExpression): void;
        visitPropertyAccessExpression(node: PropertyAccessExpression): void;
        visitTernaryExpression(node: TernaryExpression): void;
        visitUnaryExpression(node: UnaryExpression): void;
        visitUnaryPostfixExpression(node: UnaryPostfixExpression): void;
        visitUnaryPrefixExpression(node: UnaryPrefixExpression): void;
        visitNodeAndTerminate(statement: Statement): void;
        visitBlockStatement(node: BlockStatement): void;
        visitBreakStatement(node: BreakStatement): void;
        visitContinueStatement(node: ContinueStatement): void;
        visitClassDeclaration(node: ClassDeclaration, isDefault?: boolean): void;
        visitDoStatement(node: DoStatement): void;
        visitEmptyStatement(node: EmptyStatement): void;
        visitEnumDeclaration(node: EnumDeclaration, isDefault?: boolean): void;
        visitEnumValueDeclaration(node: EnumValueDeclaration): void;
        visitExportImportStatement(node: ExportImportStatement): void;
        visitExportMember(node: ExportMember): void;
        visitExportStatement(node: ExportStatement): void;
        visitExportDefaultStatement(node: ExportDefaultStatement): void;
        visitExpressionStatement(node: ExpressionStatement): void;
        visitFieldDeclaration(node: FieldDeclaration): void;
        visitForStatement(node: ForStatement): void;
        visitFunctionDeclaration(node: FunctionDeclaration, isDefault?: boolean): void;
        visitFunctionCommon(node: FunctionDeclaration): void;
        visitIfStatement(node: IfStatement): void;
        visitImportDeclaration(node: ImportDeclaration): void;
        visitImportStatement(node: ImportStatement): void;
        visitIndexSignatureDeclaration(node: IndexSignatureDeclaration): void;
        visitInterfaceDeclaration(node: InterfaceDeclaration, isDefault?: boolean): void;
        visitMethodDeclaration(node: MethodDeclaration): void;
        visitNamespaceDeclaration(node: NamespaceDeclaration, isDefault?: boolean): void;
        visitReturnStatement(node: ReturnStatement): void;
        visitSwitchCase(node: SwitchCase): void;
        visitSwitchStatement(node: SwitchStatement): void;
        visitThrowStatement(node: ThrowStatement): void;
        visitTryStatement(node: TryStatement): void;
        visitTypeDeclaration(node: TypeDeclaration): void;
        visitVariableDeclaration(node: VariableDeclaration): void;
        visitVariableStatement(node: VariableStatement): void;
        visitWhileStatement(node: WhileStatement): void;
        serializeDecorator(node: DecoratorNode): void;
        serializeParameter(node: ParameterNode): void;
        serializeExternalModifiers(node: DeclarationStatement): void;
        serializeAccessModifiers(node: DeclarationStatement): void;
        finish(): string;
    }
}
/** @module glue/js */ /***/
declare namespace binaryen {
    class Module {
        constructor();
        emitStackIR(optimize?: boolean): string;
        emitAsmjs(): string;
    }
    function wrapModule(ptr: number): Module;
}
/** @module glue/js */ /***/
declare function f32_as_i32(value: number): number;
declare function i32_as_f32(value: number): number;
declare function f64_as_i64(value: number): I64;
declare function i64_as_f64(value: I64): number;
/** @module glue/js */ /***/
declare type I64 = {
    __Long__: true;
}; // opaque
declare const i64_zero: I64;
declare const i64_one: I64;
declare function i64_new(lo: number, hi?: number): I64;
declare function i64_low(value: I64): number;
declare function i64_high(value: I64): number;
declare function i64_add(left: I64, right: I64): I64;
declare function i64_sub(left: I64, right: I64): I64;
declare function i64_mul(left: I64, right: I64): I64;
declare function i64_div(left: I64, right: I64): I64;
declare function i64_div_u(left: I64, right: I64): I64;
declare function i64_rem(left: I64, right: I64): I64;
declare function i64_rem_u(left: I64, right: I64): I64;
declare function i64_and(left: I64, right: I64): I64;
declare function i64_or(left: I64, right: I64): I64;
declare function i64_xor(left: I64, right: I64): I64;
declare function i64_shl(left: I64, right: I64): I64;
declare function i64_shr(left: I64, right: I64): I64;
declare function i64_shr_u(left: I64, right: I64): I64;
declare function i64_not(value: I64): I64;
declare function i64_eq(left: I64, right: I64): boolean;
declare function i64_ne(left: I64, right: I64): boolean;
declare function i64_align(value: I64, alignment: number): I64;
declare function i64_is_i8(value: I64): boolean;
declare function i64_is_i16(value: I64): boolean;
declare function i64_is_i32(value: I64): boolean;
declare function i64_is_u8(value: I64): boolean;
declare function i64_is_u16(value: I64): boolean;
declare function i64_is_u32(value: I64): boolean;
declare function i64_is_bool(value: I64): boolean;
declare function i64_is_f32(value: I64): boolean;
declare function i64_is_f64(value: I64): boolean;
declare function i64_to_f32(value: I64): number;
declare function i64_to_f64(value: I64): number;
declare function i64_to_string(value: I64, unsigned?: boolean): string;
declare module "assemblyscript/std/assembly/shared/feature" {
    /** Indicates specific features to activate. */
    export const enum Feature {
        /** No additional features. */
        NONE = 0,
        /** Sign extension operations. */
        SIGN_EXTENSION = 1,
        /** Mutable global imports and exports. */
        MUTABLE_GLOBALS = 2,
        /** Non-trapping float to integer operations. */
        NONTRAPPING_F2I = 4,
        /** Bulk memory operations. */
        BULK_MEMORY = 8,
        /** SIMD types and operations. */
        SIMD = 16,
        /** Threading and atomic operations. */
        THREADS = 32,
        /** Exception handling operations. */
        EXCEPTION_HANDLING = 64,
        /** Tail call operations. */
        TAIL_CALLS = 128,
        /** Reference types. */
        REFERENCE_TYPES = 256
    }
    /** Gets the name of the specified feature one would specify on the command line. */
    export function featureToString(feature: Feature): string;
}
declare module "assemblyscript/std/assembly/shared/target" {
    /** Compilation target. */
    export enum Target {
        /** WebAssembly with 32-bit pointers. */
        WASM32 = 0,
        /** WebAssembly with 64-bit pointers. Experimental and not supported by any runtime yet. */
        WASM64 = 1,
        /** Portable. */
        JS = 2
    }
}
declare module "assemblyscript/std/assembly/shared/typeinfo" {
    /** Runtime type information data structure. */
    export class Typeinfo {
        /** Flags describing the shape of this class type. */
        flags: TypeinfoFlags;
        /** Base class id or `0` if none. */
        base: number;
    }
    /** Runtime type information flags. */
    export const enum TypeinfoFlags {
        /** No specific flags. */
        NONE = 0,
        /** Type is an `ArrayBufferView`. */
        ARRAYBUFFERVIEW = 1,
        /** Type is an `Array`. */
        ARRAY = 2,
        /** Type is a `Set`. */
        SET = 4,
        /** Type is a `Map`. */
        MAP = 8,
        /** Type is inherently acyclic. */
        ACYCLIC = 16,
        /** Value alignment of 1 byte. */
        VALUE_ALIGN_0 = 32,
        /** Value alignment of 2 bytes. */
        VALUE_ALIGN_1 = 64,
        /** Value alignment of 4 bytes. */
        VALUE_ALIGN_2 = 128,
        /** Value alignment of 8 bytes. */
        VALUE_ALIGN_3 = 256,
        /** Value alignment of 16 bytes. */
        VALUE_ALIGN_4 = 512,
        /** Value is a signed type. */
        VALUE_SIGNED = 1024,
        /** Value is a float type. */
        VALUE_FLOAT = 2048,
        /** Value type is nullable. */
        VALUE_NULLABLE = 4096,
        /** Value type is managed. */
        VALUE_MANAGED = 8192,
        /** Key alignment of 1 byte. */
        KEY_ALIGN_0 = 16384,
        /** Key alignment of 2 bytes. */
        KEY_ALIGN_1 = 32768,
        /** Key alignment of 4 bytes. */
        KEY_ALIGN_2 = 65536,
        /** Key alignment of 8 bytes. */
        KEY_ALIGN_3 = 131072,
        /** Key alignment of 16 bytes. */
        KEY_ALIGN_4 = 262144,
        /** Key is a signed type. */
        KEY_SIGNED = 524288,
        /** Key is a float type. */
        KEY_FLOAT = 1048576,
        /** Key type is nullable. */
        KEY_NULLABLE = 2097152,
        /** Key type is managed. */
        KEY_MANAGED = 4194304
    }
}
