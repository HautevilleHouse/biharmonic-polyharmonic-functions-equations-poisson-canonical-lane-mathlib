import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PolyharmonicEquationPackage where
  order : Nat
  equationType : Prop
  linearity : Prop
  constantCoefficient : Prop
  domainSmoothness : Prop

structure PolyharmonicEquationEvidence (P : PolyharmonicEquationPackage) where
  equationTypeClosed : P.equationType
  linearityClosed : P.linearity
  constantCoefficientClosed : P.constantCoefficient
  domainSmoothnessClosed : P.domainSmoothness

def PolyharmonicEquationClosed (P : PolyharmonicEquationPackage) : Prop :=
  P.equationType ∧ P.linearity ∧ P.constantCoefficient ∧ P.domainSmoothness

theorem polyharmonic_equation_closed_from_evidence (P : PolyharmonicEquationPackage) (E : PolyharmonicEquationEvidence P) : PolyharmonicEquationClosed P := by
  exact And.intro E.equationTypeClosed (And.intro E.linearityClosed (And.intro E.constantCoefficientClosed E.domainSmoothnessClosed))

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse