import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure FundamentalSolutionPackage where
  order : Nat
  dimension : Nat
  explicitFormula : Prop
  singularityBehavior : Prop
  decayAtInfinity : Prop

structure FundamentalSolutionEvidence (F : FundamentalSolutionPackage) where
  explicitFormulaClosed : F.explicitFormula
  singularityBehaviorClosed : F.singularityBehavior
  decayAtInfinityClosed : F.decayAtInfinity

def FundamentalSolutionClosed (F : FundamentalSolutionPackage) : Prop :=
  F.explicitFormula ∧ F.singularityBehavior ∧ F.decayAtInfinity

theorem fundamental_solution_closed_from_evidence (F : FundamentalSolutionPackage) (E : FundamentalSolutionEvidence F) : FundamentalSolutionClosed F := by
  exact And.intro E.explicitFormulaClosed (And.intro E.singularityBehaviorClosed E.decayAtInfinityClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse