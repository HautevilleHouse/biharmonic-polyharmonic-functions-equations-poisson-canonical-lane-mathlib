import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure BiharmonicPoissonPackage where
  domainDimension : ℕ
  biharmonicOperator : Type
  rightHandSide : Type
  solutionSpace : Type
  poissonEquation : Prop
  boundaryConditions : Prop
  ellipticRegularity : Prop

structure BiharmonicPoissonEvidence (P : BiharmonicPoissonPackage) where
  poissonEquationClosed : P.poissonEquation
  boundaryConditionsClosed : P.boundaryConditions
  ellipticRegularityClosed : P.ellipticRegularity

def BiharmonicPoissonClosed (P : BiharmonicPoissonPackage) : Prop :=
  P.poissonEquation ∧ P.boundaryConditions ∧ P.ellipticRegularity

theorem biharmonic_poisson_closed_from_evidence (P : BiharmonicPoissonPackage)
    (E : BiharmonicPoissonEvidence P) : BiharmonicPoissonClosed P := by
  exact And.intro E.poissonEquationClosed
    (And.intro E.boundaryConditionsClosed E.ellipticRegularityClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse