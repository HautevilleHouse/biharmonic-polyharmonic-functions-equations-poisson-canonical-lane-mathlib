import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PoissonEquationPackage {B : BiharmonicOperatorPackage} where
  sourceTerm : Type v
  boundaryCondition : Prop
  weakSolutionExists : Prop
  regularity : Prop
  uniqueness : Prop

structure PoissonSolutionEvidence {B : BiharmonicOperatorPackage} (P : PoissonEquationPackage B) where
  weakSolutionExistsClosed : P.weakSolutionExists
  regularityClosed : P.regularity
  uniquenessClosed : P.uniqueness

def PoissonSolutionClosed {B : BiharmonicOperatorPackage} (P : PoissonEquationPackage B) : Prop :=
  P.weakSolutionExists ∧ P.regularity ∧ P.uniqueness

theorem poisson_solution_closed_from_evidence {B : BiharmonicOperatorPackage} (P : PoissonEquationPackage B) (E : PoissonSolutionEvidence P) :
    PoissonSolutionClosed P := by
  exact And.intro E.weakSolutionExistsClosed (And.intro E.regularityClosed E.uniquenessClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse