import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure SourceDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

def sourceDependencies : List SourceDependency := [
  { file := "scripts/biharmonic_extract.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
  { file := "scripts/polyharmonic_solve.py", kind := "from_import", module := "scipy.sparse", name := "linalg", alias := "", level := 0 }
]

def sourceDependencyCount : Nat := 2

theorem source_dependency_count_checked : sourceDependencies.length = 2 := by rfl

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse