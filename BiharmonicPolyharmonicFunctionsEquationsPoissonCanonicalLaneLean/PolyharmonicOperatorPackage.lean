import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PolyharmonicOperatorPackage where
  domain : Type u
  topology : TopologicalSpace domain
  laplacianPower : ℕ
  operatorSymbol : Type v
  smoothCoefficients : Prop
  ellipticCondition : Prop

structure PolyharmonicOperatorEvidence (H : PolyharmonicOperatorPackage) where
  smoothCoefficientsClosed : H.smoothCoefficients
  ellipticConditionClosed : H.ellipticCondition

def PolyharmonicOperatorClosed (H : PolyharmonicOperatorPackage) : Prop :=
  H.smoothCoefficients ∧ H.ellipticCondition

theorem polyharmonic_operator_closed_from_evidence
    (H : PolyharmonicOperatorPackage) (E : PolyharmonicOperatorEvidence H) :
    PolyharmonicOperatorClosed H := by
  exact And.intro E.smoothCoefficientsClosed E.ellipticConditionClosed

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse