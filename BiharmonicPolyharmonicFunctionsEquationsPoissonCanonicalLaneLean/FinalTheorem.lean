import canonicalLaneMathlib.AdmissibleClass
import BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean.BridgeLemmas
import BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

def ConstrainedBiharmonicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_biharmonic_endgame (A : AdmissibleClass) :
    ConstrainedBiharmonicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse