module
import UnicodeData

open Unicode

def clibDir : System.FilePath := ".."/"UnicodeCLib"

def leanDir : System.FilePath := ".."/"UnicodeBasic"

def Unicode.GC.BP : GC := (0x80000000 : UInt32)
def Unicode.GC.LC0 : GC := GC.LC
def Unicode.GC.LC1 : GC := GC.LC ||| GC.BP
def Unicode.GC.PG0 : GC := GC.PG
def Unicode.GC.PG1 : GC := GC.PG ||| GC.BP
def Unicode.GC.PQ0 : GC := GC.PQ
def Unicode.GC.PQ1 : GC := GC.PQ ||| GC.BP

def propTable : Array (UInt32 × UInt32 × UInt64) := Id.run do
  let mut t : Array (UInt32 × UInt32 × UInt64) := #[(0, 0, GC.Cc.toUInt64)]
  for data in UnicodeData.data.get[1:] do
    let c := data.code
    let gc := data.gc
    let mut op : UInt64 := 0
    if PropList.isOtherUppercase c then
      op := op ||| 0x100000000
    if PropList.isOtherLowercase c then
      op := op ||| 0x200000000
    if PropList.isOtherAlphabetic c then
      op := op ||| 0x400000000
    if PropList.isOtherMath c then
      op := op ||| 0x800000000
    let d := op ||| gc.toUInt64
    let (c₀, c₁, d₀) := t.back!
    if data.name.takeEnd 7 == ", Last>" then
      t := t.pop.push (c₀, c, d)
      continue
    else if c = c₁ + 1 then
      if d = d₀ then
        t := t.pop.push (c₀, c, d)
        continue
      else if op = d₀ &&& 0xFFFFFFFF00000000 then
        let gc₀ : GC := d₀.toUInt32
        if gc == .Lu then
          if c &&& 1 == 0 then
            if gc₀ == .LC0 || (c₀ == c₁ && gc₀ == .Ll) then
              t := t.pop.push (c₀, c, op ||| GC.LC0.toUInt64)
              continue
          else
            if gc₀ == .LC1 || (c₀ == c₁ && gc₀ == .Ll) then
              t := t.pop.push (c₀, c, op ||| GC.LC1.toUInt64)
              continue
        else if gc == .Ll then
          if c &&& 1 == 0 then
            if gc₀ == .LC1 || (c₀ == c₁ && gc₀ == .Lu) then
              t := t.pop.push (c₀, c, op ||| GC.LC1.toUInt64)
              continue
          else
            if gc₀ == .LC0 || (c₀ == c₁ && gc₀ == .Lu) then
              t := t.pop.push (c₀, c, op ||| GC.LC0.toUInt64)
              continue
        else if gc == .Ps then
          if c &&& 1 == 0 then
            if gc₀ == .PG0 || (c₀ == c₁ && gc₀ == .Pe) then
              t := t.pop.push (c₀, c, op ||| GC.PG0.toUInt64)
              continue
          else
            if gc₀ == .PG1 || (c₀ == c₁ && gc₀ == .Pe) then
              t := t.pop.push (c₀, c, op ||| GC.PG1.toUInt64)
              continue
        else if gc == .Pe then
          if c &&& 1 == 0 then
            if gc₀ == .PG1 || (c₀ == c₁ && gc₀ == .Ps) then
              t := t.pop.push (c₀, c, op ||| GC.PG1.toUInt64)
              continue
          else
            if gc₀ == .PG0 || (c₀ == c₁ && gc₀ == .Ps) then
              t := t.pop.push (c₀, c, op ||| GC.PG0.toUInt64)
              continue
        else if gc == .Pi then
          if c &&& 1 == 0 then
            if gc₀ == .PQ0 || (c₀ == c₁ && gc₀ == .Pf) then
              t := t.pop.push (c₀, c, op ||| GC.PQ0.toUInt64)
              continue
          else
            if gc₀ == .PQ1 || (c₀ == c₁ && gc₀ == .Pf) then
              t := t.pop.push (c₀, c, op ||| GC.PQ1.toUInt64)
              continue
        else if gc == .Pf then
          if c &&& 1 == 0 then
            if gc₀ == .PQ1 || (c₀ == c₁ && gc₀ == .Pi) then
              t := t.pop.push (c₀, c, op ||| GC.PQ1.toUInt64)
              continue
          else
            if gc₀ == .PQ0 || (c₀ == c₁ && gc₀ == .Pi) then
              t := t.pop.push (c₀, c, op ||| GC.PQ0.toUInt64)
              continue
    t := t.push (c, c, d)
  return t

def makePropC : IO Unit :=
  IO.FS.withFile (clibDir / "prop.c") .write fun file => do
    file.putStrLn s!"/* THIS IS A GENERATED FILE - DO NOT EDIT */
#include \"basic.h\"

#define TABLE_SIZE {propTable.size}"
    file.putStrLn "
static const unicode_data_t table[TABLE_SIZE];

uint64_t unicode_prop_lookup(uint32_t c) {
  unicode_data_t v;
  if (c >= table[0].cmin) {
    unsigned int lo = 0;
    unsigned int hi = TABLE_SIZE;
    unsigned int i = (lo + hi)/2;
    while (i != lo) {
      if (c < table[i].cmin) hi = i;
      else lo = i;
      i = (lo + hi)/2;
    }
    v = table[i];
    if (c <= v.cmax) {
      uint32_t gc = v.data & UNICODE_GC;
      uint32_t pb = (v.data >> 31) & 1;
      uint64_t op = v.data & UINT64_C(0xffffffff00000000);
      if (gc == UNICODE_GC_LC) {
        if ((c & 1) == pb) return op | UNICODE_GC_Lu;
        else return op | UNICODE_GC_Ll;
      }
      if (gc == UNICODE_GC_PG) {
        if ((c & 1) == pb) return op | UNICODE_GC_Ps;
        else return op | UNICODE_GC_Pe;
      }
      if (gc == UNICODE_GC_PQ) {
        if ((c & 1) == pb) return op | UNICODE_GC_Pi;
        else return op | UNICODE_GC_Pf;
      }
      return op | gc;
    }
  }
  return UNICODE_GC_Cn;
}

static const unicode_data_t table[] = {"
    for (c₀, c₁, d) in propTable do
      file.putStrLn s!"\{UINT32_C({c₀}),UINT32_C({c₁}),UINT64_C({d})},"
    file.putStrLn "};"

/-- Rows of the property table in one definition of the Lean table -/
def propChunk : Nat := 48

def makePropLean : IO Unit :=
  IO.FS.withFile (leanDir / "PropTable.lean") .write fun file => do
    file.putStrLn "/- THIS IS A GENERATED FILE - DO NOT EDIT -/
module

/-!
  The table of `UnicodeCLib/prop.c` for the kernel, which cannot evaluate a C function
  (internal use only). The rows are those of `prop.c`, one per line and in the same order.
-/

namespace Unicode.PropTable

/-- Table row: first code point, last code point, data -/
public abbrev Row := Nat × Nat × Nat

/-- Value of a code point at a row whose last code point is not below it, as in `prop.c` -/
@[expose]
public def decode (c : Nat) (r : Row) : Nat :=
  if r.1 ≤ c then
    let gc := r.2.2 &&& 0x3fffffff
    let pb := (r.2.2 >>> 31) &&& 1
    let op := r.2.2 &&& 0xffffffff00000000
    if gc = 0x00000007 then
      if c &&& 1 = pb then op ||| 0x00000001 else op ||| 0x00000002
    else if gc = 0x00006000 then
      if c &&& 1 = pb then op ||| 0x00002000 else op ||| 0x00004000
    else if gc = 0x00018000 then
      if c &&& 1 = pb then op ||| 0x00008000 else op ||| 0x00010000
    else op ||| gc
  else 0x20000000

/-- Value of a code point at the first row whose last code point is not below it -/
@[expose]
public def scan : List Row → Nat → Nat
  | [], _ => 0x20000000
  | r :: rs, c => if c ≤ r.2.1 then decode c r else scan rs c

/-- Value of a code point in the first chunk whose bound is not below it -/
@[expose]
public def scanChunks : List (Nat × List Row) → Nat → Nat
  | [], _ => 0x20000000
  | ch :: chs, c => if c ≤ ch.1 then scan ch.2 c else scanChunks chs c

/-- Rows of all chunks, in order -/
@[expose]
public def flatten : List (Nat × List Row) → List Row
  | [] => []
  | ch :: chs => ch.2 ++ flatten chs

/-- Whether the bound of each chunk is the greatest last code point of its rows -/
@[expose]
public def bounded : List (Nat × List Row) → Bool
  | [] => true
  | ch :: chs => ch.2.all (·.2.1 ≤ ch.1) && ch.2.any (ch.1 ≤ ·.2.1) && bounded chs

theorem scan_append_of_le {rs : List Row} (rest : List Row) {c b : Nat}
    (h : rs.any (b ≤ ·.2.1) = true) (hc : c ≤ b) : scan (rs ++ rest) c = scan rs c := by
  induction rs with
  | nil => simp at h
  | cons r rs ih =>
    simp only [List.cons_append, scan]
    split
    · rfl
    · next hr =>
      simp only [List.any_cons, Bool.or_eq_true, decide_eq_true_eq] at h
      exact ih (h.resolve_left (by omega))

theorem scan_append_of_lt {rs : List Row} (rest : List Row) {c b : Nat}
    (h : rs.all (·.2.1 ≤ b) = true) (hc : b < c) : scan (rs ++ rest) c = scan rest c := by
  induction rs with
  | nil => rfl
  | cons r rs ih =>
    simp only [List.all_cons, Bool.and_eq_true, decide_eq_true_eq] at h
    simp only [List.cons_append, scan]
    split
    · omega
    · exact ih h.2

/-- Searching by chunks finds the value that searching all rows in order finds -/
public theorem scanChunks_eq_scan {chs : List (Nat × List Row)} (h : bounded chs = true) (c : Nat) :
    scanChunks chs c = scan (flatten chs) c := by
  induction chs with
  | nil => rfl
  | cons ch chs ih =>
    simp only [bounded, Bool.and_eq_true] at h
    simp only [scanChunks, flatten]
    split
    · next hc => exact (scan_append_of_le _ h.1.2 hc).symm
    · next hc => rw [scan_append_of_lt _ h.1.1 (by omega)]; exact ih h.2
"
    let n := propTable.size
    let chunks := (n + propChunk - 1) / propChunk
    for i in [0:chunks] do
      file.putStrLn s!"@[expose]\npublic def rows{i} : List Row := ["
      for (c₀, c₁, d) in propTable[i * propChunk : min n ((i + 1) * propChunk)] do
        file.putStrLn s!"({c₀},{c₁},{d}),"
      file.putStrLn "]\n"
    file.putStrLn "/-- The rows in chunks, each with the last code point of its last row -/
@[expose]
public def chunks : List (Nat × List Row) := ["
    for i in [0:chunks] do
      let (_, c₁, _) := propTable[min n ((i + 1) * propChunk) - 1]!
      file.putStrLn s!"({c₁}, rows{i}),"
    file.putStrLn "]

/-- The rows of `prop.c` -/
@[expose]
public def table : List Row := flatten chunks

/-- General category and `Other_*` property bits of a code point -/
@[expose]
public def lookup (c : Nat) : Nat := scanChunks chunks c

/-- The lookup is a search of the rows of `prop.c` in order: the value of a code point is that of
the first row whose last code point is not below it -/
public theorem lookup_eq_scan (c : Nat) : lookup c = scan table c :=
  scanChunks_eq_scan (by decide +kernel) c

end Unicode.PropTable"

def caseTable : Array (UInt32 × UInt32 × UInt64) := Id.run do
  let mut t := #[]
  for data in UnicodeData.data.get do
    match data with
    | ⟨_, _, _, _, _, _, _, _, none, none, none⟩ => continue
    | ⟨c, _, _, _, _, _, _, _, um, lm, tm⟩ =>
      let uc := match um with | some uc => uc.val | _ => c
      let lc := match lm with | some lc => lc.val | _ => c
      let tc := match tm with | some tc => tc.val | _ => uc
      let v : UInt64 := uc.toUInt64 ||| ((lc.toUInt64 ||| tc.toUInt64 <<< (21 : UInt64))) <<< (21 : UInt64)
      match t.back? with
      | some (c₀,c₁,v₀) =>
        if (c == c₁ + 1) && (v == v₀) then
          t := t.pop.push (c₀, c, v)
        else
          t := t.push (c, c, v)
      | _ =>
          t := t.push (c, c, v)
  return t

def makeCaseC : IO Unit :=
  IO.FS.withFile (clibDir / "case.c") .write fun file => do
    file.putStrLn s!"/* THIS IS A GENERATED FILE - DO NOT EDIT */
#include \"basic.h\"

#define TABLE_SIZE {caseTable.size}"
    file.putStrLn "
static const unicode_data_t table[TABLE_SIZE];

uint64_t unicode_case_lookup(uint32_t c) {
  unicode_data_t v;
  if (c >= table[0].cmin) {
    unsigned int lo = 0;
    unsigned int hi = TABLE_SIZE;
    unsigned int i = (lo + hi)/2;
    while (i != lo) {
      if (c < table[i].cmin) hi = i;
      else lo = i;
      i = (lo + hi)/2;
    }
    if (c <= table[i].cmax) return table[i].data;
  }
  return 0;
}

static const unicode_data_t table[] = {"
    for (c₀, c₁, d) in caseTable do
      file.putStrLn s!"\{UINT32_C({c₀}),UINT32_C({c₁}),UINT64_C({d})},"
    file.putStrLn "};"

def scriptTable : Array (UInt32 × UInt32 × UInt64) :=
  let t := Scripts.data.get.toArray.flatMap fun (sc, t) =>
    let sc := Script.ofAbbrev! <| PropertyValueAliases.getShortName! "sc" sc
    t.map fun (c₀, c₁) => (c₀, c₁, sc.code.toUInt64)
  t.qsort fun (a, _) (b, _) => a < b

def makeScriptC : IO Unit :=
  IO.FS.withFile (clibDir / "script.c") .write fun file => do
    file.putStrLn s!"/* THIS IS A GENERATED FILE - DO NOT EDIT */
#include \"basic.h\"

#define TABLE_SIZE {scriptTable.size}
#define SCRIPT_UNKNOWN UINT32_C({Script.ofAbbrev! "Zzzz" |>.code})"
    file.putStrLn "
static const unicode_data_t table[TABLE_SIZE];

uint32_t unicode_script_lookup(uint32_t c) {
  unicode_data_t v;
  if (c >= table[0].cmin) {
    unsigned int lo = 0;
    unsigned int hi = TABLE_SIZE;
    unsigned int i = (lo + hi)/2;
    while (i != lo) {
      if (c < table[i].cmin) hi = i;
      else lo = i;
      i = (lo + hi)/2;
    }
    if (c <= table[i].cmax) return (uint32_t)table[i].data;
  }
  return SCRIPT_UNKNOWN;
}

static const unicode_data_t table[] = {"
    for (c₀, c₁, d) in scriptTable do
      file.putStrLn s!"\{UINT32_C({c₀}),UINT32_C({c₁}),UINT64_C({d})},"
    file.putStrLn "};"

public def main : IO UInt32 := do
  makeCaseC
  makePropC
  makePropLean
  makeScriptC
  return 0
