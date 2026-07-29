import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile := [
  { path := "scripts/biharmonic_extract.py", sha256 := "deadbeef", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
  { path := "scripts/polyharmonic_solve.py", sha256 := "cafebabe", functionCount := 3, classCount := 1, assignmentCount := 2, parseOk := true }
]

def sourceFileCount : Nat := 2

theorem source_file_count_checked : sourceFiles.length = 2 := by rfl

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse