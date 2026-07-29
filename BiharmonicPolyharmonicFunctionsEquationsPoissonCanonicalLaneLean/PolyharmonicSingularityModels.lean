import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PolyharmonicSingularityPackage {B : BiharmonicOperatorPackage} {P : PoissonEquationPackage B} where
  fundamentalSolution : Type v
  singularityDegree : Nat
  integralRepresentation : Prop
  potentialEstimates : Prop

structure PolyharmonicSingularityEvidence {B : BiharmonicOperatorPackage} {P : PoissonEquationPackage B} (S : PolyharmonicSingularityPackage B P) where
  fundamentalSolutionClosed : S.fundamentalSolution
  integralRepresentationClosed : S.integralRepresentation
  potentialEstimatesClosed : S.potentialEstimates

def PolyharmonicSingularityClosed {B : BiharmonicOperatorPackage} {P : PoissonEquationPackage B} (S : PolyharmonicSingularityPackage B P) : Prop :=
  S.fundamentalSolution ∧ S.integralRepresentation ∧ S.potentialEstimates

theorem polyharmonic_singularity_closed_from_evidence {B : BiharmonicOperatorPackage} {P : PoissonEquationPackage B} (S : PolyharmonicSingularityPackage B P) (E : PolyharmonicSingularityEvidence S) :
    PolyharmonicSingularityClosed S := by
  exact And.intro E.fundamentalSolutionClosed (And.intro E.integralRepresentationClosed E.potentialEstimatesClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse