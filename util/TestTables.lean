/-
Copyright © 2024-2025 François G. Dorais. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
module
import UnicodeBasic
import UnicodeData

open Unicode

/-- Character for a code point; surrogates are skipped by `main` -/
def Unicode.UnicodeData.char (d : UnicodeData) : Char := Char.ofNat d.code.toNat

def testAlphabetic (d : UnicodeData) : Bool :=
  let v :=
    if d.gc ∈ [.Lu, .Ll, .Lt, .Lm, .Lo, .Nl] then true
    else PropList.isOtherAlphabetic d.code
  v == isAlphabetic d.char

def testBidiClass (d : UnicodeData) : Bool :=
  d.bidi == getBidiClass d.char

def testBidiMirrored (d : UnicodeData) : Bool :=
  d.bidiMirrored == isBidiMirrored d.char

def testCanonicalCombiningClass (d : UnicodeData) : Bool :=
  d.cc == getCanonicalCombiningClass d.char

partial def testCanonicalDecompositionMapping (d : UnicodeData) : Bool :=
  let l := match d.decomp with
    | some ⟨none, l⟩ => mapping (l.map Char.val)
    | _ => [d.code]
  getCanonicalDecomposition d.char == String.ofList (l.map fun c => Char.ofNat c.toNat)
where
  mapping : List UInt32 → List UInt32
  | [] => unreachable!
  | c :: cs =>
    let d := getUnicodeData! c
    match d.decomp with
    | some ⟨none, l⟩ => mapping <| l.map Char.val ++ cs
    | _ => c :: cs

def testCased (d : UnicodeData) : Bool :=
  let v :=
    match d.gc with
    | .Lu | .Ll | .Lt => true
    | _ =>
      PropList.isOtherLowercase d.code
        || PropList.isOtherUppercase d.code
  v == isCased d.char

def testCaseFolding (d : UnicodeData) : Bool :=
  let s := (CaseFolding.getSimple? d.code).getD d.code
  let f := match CaseFolding.getFull d.code with
    | #[] => [d.code]
    | f => f.toList
  let f := String.ofList (f.map fun c => Char.ofNat c.toNat)
  let w := String.ofList (withCaseFolding d.char List.cons) == f
  let c := d.char.toString
  getCaseFoldingChar d.char == Char.ofNat s.toNat
    && getCaseFolding d.char == f
    && w
    && test f (c ++ "!") == some (c, "!")
    && test c (f ++ "!") == some (f, "!")
    && (f.length < 2 || test (f.take 1).copy (c ++ "!") == none)
where
  test (pat s : String) : Option (String × String) :=
    matchPrefixCaseInsensitive? pat.toSlice s.toSlice |>.map fun (p, t) => (p.copy, t.copy)

def testCaseMapping (d : UnicodeData) : Bool :=
  let full (m? : Option (Array UInt32)) (c : Char) : List Char :=
    match m? with
    | some m => m.toList.map fun c => Char.ofNat c.toNat
    | none => [c]
  let l := full (SpecialCasing.getLower? d.code) (d.lowercase.getD d.char)
  let t := full (SpecialCasing.getTitle? d.code) (d.titlecase.getD d.char)
  let u := full (SpecialCasing.getUpper? d.code) (d.uppercase.getD d.char)
  getUpperChar d.char == d.uppercase.getD d.char
    && getLowerChar d.char == d.lowercase.getD d.char
      && getTitleChar d.char == d.titlecase.getD d.char
        && withLowercasing d.char List.cons == l
          && withTitlecasing d.char List.cons == t
            && withUppercasing d.char List.cons == u
              && getLower d.char == String.ofList l
                && getTitle d.char == String.ofList t
                  && getUpper d.char == String.ofList u

def testDecompositionMapping (d : UnicodeData) : Bool :=
  d.decomp == getDecompositionMapping? d.char

def testDefaultIgnorableCodePoint (d : UnicodeData) : Bool :=
  let v :=
    d.gc == .Cf
      || PropList.isOtherDefaultIgnorableCodePoint d.code
        || PropList.isVariationSelector d.code
  let v := v
    && !(0xFFF9 ≤ d.code && d.code ≤ 0xFFFB)
      && !(0x13430 ≤ d.code && d.code ≤ 0x1343F)
        && !PropList.isWhiteSpace d.code
          && !PropList.isPrependedConcatenationMark d.code
  v == isDefaultIgnorableCodePoint d.char

def testGeneralCategory (d : UnicodeData) : Bool :=
  d.gc == getGC d.char

def testLowercase (d : UnicodeData) : Bool :=
  let v :=
    match d.gc with
    | .Ll => true
    | _ => PropList.isOtherLowercase d.code
  v == isLowercase d.char

def testMath (d : UnicodeData) : Bool :=
  let v :=
    match d.gc with
    | .Sm => true
    | _ => PropList.isOtherMath d.code
  v == isMath d.char

def testName (d : UnicodeData) : Bool :=
  d.name == getName d.char

def testNoncharacterCodePoint (d : UnicodeData) : Bool :=
  PropList.isNoncharacterCodePoint d.code == isNoncharacterCodePoint d.char

def testNumericValue (d : UnicodeData) : Bool :=
  let c := d.char
  -- `isNumeric` also covers Han ideographs whose numeric values are only
  -- listed in the Unihan database, which is not available here
  let numeric := isNumeric c == d.numeric.isSome
    || (isNumeric c && (getScript c).toAbbrev == "Hani")
  match d.numeric with
  | some (.decimal v) =>
    let first := Char.ofNat (d.code.toNat - v.val)
    numeric && isDigit c && isDecimal c && getDigit? c == some v
      && getDecimalRange? c == some (first, Char.ofNat (first.toNat + 9))
  | some (.digit v) =>
    numeric && isDigit c && !isDecimal c && getDigit? c == some v
      && getDecimalRange? c == none
  | _ =>
    numeric && !isDigit c && !isDecimal c && getDigit? c == none
      && getDecimalRange? c == none

def testUppercase (d : UnicodeData) : Bool :=
  let v :=
    match d.gc with
    | .Lu => true
    | _ => PropList.isOtherUppercase d.code
  v == isUppercase d.char

def testWhiteSpace (d : UnicodeData) : Bool :=
  PropList.isWhiteSpace d.code == isWhiteSpace d.char

def testScript (d : UnicodeData) : Bool :=
  Scripts.get d.code == getScript d.char

def testScriptExtensions (d : UnicodeData) : Bool :=
  let scx := ScriptExtensions.get d.code
  let v := getScriptSet d.char
  v.toArray.all scx.contains && scx.all v.contains

def tests : Array (String × (UnicodeData → Bool)) := #[
  ("Alphabetic", testAlphabetic),
  ("Bidi_Class", testBidiClass),
  ("Bidi_Mirrored", testBidiMirrored),
  ("Canonical_Combining_Class", testCanonicalCombiningClass),
  ("Canonical_Decomposition_Mapping", testCanonicalDecompositionMapping),
  ("Case_Folding", testCaseFolding),
  ("Case_Mapping", testCaseMapping),
  ("Cased", testCased),
  ("Decomposition_Mapping", testDecompositionMapping),
  ("Default_Ignorable_Code_Point", testDefaultIgnorableCodePoint),
  ("Lowercase", testLowercase),
  ("Math", testMath),
  ("Name", testName),
  ("Noncharacter_Code_Point", testNoncharacterCodePoint),
  ("Uppercase", testUppercase),
  ("Numeric_Value", testNumericValue),
  ("Script", testScript),
  ("Script_Extensions", testScriptExtensions),
  ("General_Category", testGeneralCategory),
  ("White_Space", testWhiteSpace)]

/-- The kernel definition of the property lookup agrees with the C lookup on every code point -/
def testPropTable : Bool :=
  Nat.all 0x110000 fun c _ => (PropTable.lookup c).toUInt64 == CLib.lookupProp c.toUInt32

/-- The rows of `prop.c`, read from its `{UINT32_C(_),UINT32_C(_),UINT64_C(_)},` lines -/
def readPropC : IO (List PropTable.Row) := do
  let lines ← IO.FS.lines ("../UnicodeCLib/prop.c" : System.FilePath)
  let mut rows := #[]
  for line in lines do
    if line.startsWith "{UINT32_C(" then
      let nums := (line.splitOn "(").filterMap fun s => (s.takeWhile Char.isDigit).toNat?
      if let [c₀, c₁, d] := nums then rows := rows.push (c₀, c₁, d)
  return rows.toList

/-! The kernel evaluates general category and property lookups, without `native_decide`. -/

example : getGC 'a' = .Ll := by decide
example : getGC 'é' = .Ll := rfl
example : GeneralCategory.isLetter 'é' = true := by decide
example : GeneralCategory.isLetter 'Ā' = true ∧ getGC 'Ā' = .Lu ∧ getGC 'ā' = .Ll := by decide
example : GeneralCategory.isLetter '惑' = true := by decide
example : GeneralCategory.isMark '\u0301' = true := by decide
example : GeneralCategory.isNumber '٣' = true := by decide
example : GeneralCategory.isPunctuation '、' = true := by decide
example : getGC '«' = .Pi ∧ getGC '»' = .Pf := by decide
example : getGC '\uFFFF' = .Cn ∧ getGC (Char.ofNat 0x10FFFF) = .Cn := by decide
example : isAlphabetic 'ⓐ' = true ∧ isLowercase 'ⓐ' = true := by decide
example : isMath '∑' = true := by decide
example : isCaseIgnorable '\u0301' = true ∧ isWhiteSpace '\u00A0' = true := by decide
example : isHexDigit '５' = true ∧ isBidiControl '\u200E' = true := by decide
example : isNoncharacterCodePoint '\uFFFF' = true := by decide

public def main (args : List String) : IO UInt32 := do
  let args := if args.isEmpty then (tests.map Prod.fst).push "PropTable" else args.toArray
  let stream : UnicodeDataStream := {}
  let mut err : UInt32 := 0
  for d in stream do
    -- surrogate code points are not characters
    if d.gc == .Cs then continue
    for t in tests do
      if t.1 ∈ args && !t.2 d then
        err := 1
        IO.println s!"Error: {t.1} {toHexStringRaw d.code}"
  if "PropTable" ∈ args && !testPropTable then
    err := 1
    IO.println "Error: PropTable"
  if "PropTable" ∈ args then
    if (← readPropC) != PropTable.table then
      err := 1
      IO.println "Error: PropTable rows differ from prop.c"
  return err
