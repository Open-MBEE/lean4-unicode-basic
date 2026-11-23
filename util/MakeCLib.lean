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
def propChunk : Nat := 64

/-- Comparison tree over rows `lo` to `hi` of the property table, as Lean source -/
partial def propTree (lo hi : Nat) (ind : String) : String :=
  if hi ≤ lo + 1 then
    let (_, c₁, d) := propTable[lo]!
    s!"leaf c {c₁} {d}"
  else
    let mid := (lo + hi) / 2
    s!"if c < {propTable[mid]!.1} then\n{ind}  {propTree lo mid (ind ++ "  ")}\n{ind}else\n{ind}  {propTree mid hi (ind ++ "  ")}"

/-- Comparison tree over chunks `lo` to `hi` of the property table, as Lean source -/
partial def propChunkTree (lo hi : Nat) (ind : String) : String :=
  if hi ≤ lo + 1 then
    s!"chunk{lo} c"
  else
    let mid := (lo + hi) / 2
    s!"if c < {propTable[mid * propChunk]!.1} then\n{ind}  {propChunkTree lo mid (ind ++ "  ")}\n{ind}else\n{ind}  {propChunkTree mid hi (ind ++ "  ")}"

def makePropLean : IO Unit :=
  IO.FS.withFile (leanDir / "PropTable.lean") .write fun file => do
    file.putStrLn "/- THIS IS A GENERATED FILE - DO NOT EDIT -/
module

/-!
  The table of `UnicodeCLib/prop.c` as comparisons that the kernel can evaluate. The compiled
  lookup is the C function `unicode_prop_lookup`; this is its definition (internal use only).
-/

namespace Unicode.PropTable

/-- Value of a code point in a table row with the given last code point and data -/
@[expose]
public def leaf (c cmax data : Nat) : Nat :=
  if c ≤ cmax then
    let gc := data &&& 0x3fffffff
    let pb := (data >>> 31) &&& 1
    let op := data &&& 0xffffffff00000000
    if gc = 0x00000007 then
      if c &&& 1 = pb then op ||| 0x00000001 else op ||| 0x00000002
    else if gc = 0x00006000 then
      if c &&& 1 = pb then op ||| 0x00002000 else op ||| 0x00004000
    else if gc = 0x00018000 then
      if c &&& 1 = pb then op ||| 0x00008000 else op ||| 0x00010000
    else op ||| gc
  else 0x20000000
"
    let n := propTable.size
    let chunks := (n + propChunk - 1) / propChunk
    for i in [0:chunks] do
      file.putStrLn s!"@[expose]
public def chunk{i} (c : Nat) : Nat :=
  {propTree (i * propChunk) (min n ((i + 1) * propChunk)) "  "}
"
    file.putStrLn s!"/-- General category and `Other_*` property bits of a code point -/
@[expose]
public def lookup (c : Nat) : Nat :=
  {propChunkTree 0 chunks "  "}

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
