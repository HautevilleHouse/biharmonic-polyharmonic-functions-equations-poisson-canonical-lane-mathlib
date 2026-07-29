import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PolyharmonicExtensionPackage (P : BiharmonicPoissonPackage) where
  polyharmonicOrder : ℕ
  iteratedLaplacian : Type
  higherRegularity : Prop
  polyharmonicEquation : Prop
  polyharmonicGreenFunction : Prop

structure PolyharmonicExtensionEvidence {P : BiharmonicPoissonPackage}
    (E : PolyharmonicExtensionPackage P) where
  polyharmonicEquationClosed : E.polyharmonicEquation
  polyharmonicGreenFunctionClosed : E.polyharmonicGreenFunction

def PolyharmonicExtensionClosed {P : BiharmonicPoissonPackage}
    (E : PolyharmonicExtensionPackage P) : Prop :=
  E.polyharmonicEquation ∧ E.polyharmonicGreenFunction

theorem polyharmonic_extension_closed_from_evidence {P : BiharmonicPoissonPackage}
    (E : PolyharmonicExtensionPackage P) (Ev : PolyharmonicExtensionEvidence E) :
    PolyharmonicExtensionClosed E := by
  exact And.intro Ev.polyharmonicEquationClosed Ev.polyharmonicGreenFunctionClosed

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse