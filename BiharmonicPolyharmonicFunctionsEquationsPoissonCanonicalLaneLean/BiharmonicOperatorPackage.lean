import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure BiharmonicOperatorPackage where
  domain : Type u
  dimension : Nat
  biharmonicOperator : Type v
  smoothCoefficients : Prop
  ellipticityCondition : Prop
  formalAdjointExists : Prop

structure BiharmonicOperatorEvidence (B : BiharmonicOperatorPackage) where
  smoothCoefficientsClosed : B.smoothCoefficients
  ellipticityConditionClosed : B.ellipticityCondition
  formalAdjointExistsClosed : B.formalAdjointExists

def BiharmonicOperatorClosed (B : BiharmonicOperatorPackage) : Prop :=
  B.smoothCoefficients ∧ B.ellipticityCondition ∧ B.formalAdjointExists

theorem biharmonic_operator_closed_from_evidence (B : BiharmonicOperatorPackage) (E : BiharmonicOperatorEvidence B) :
    BiharmonicOperatorClosed B := by
  exact And.intro E.smoothCoefficientsClosed (And.intro E.ellipticityConditionClosed E.formalAdjointExistsClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse