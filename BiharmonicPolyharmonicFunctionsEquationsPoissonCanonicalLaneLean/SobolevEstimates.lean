import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure SobolevEstimatesPackage {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} {F : FundamentalSolutionPackage E} where
  sobolevNormEstimate : Prop
  regularityGain : Prop
  compactnessEmbedding : Prop

structure SobolevEstimatesEvidence {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} {F : FundamentalSolutionPackage E}
    (S : SobolevEstimatesPackage F) where
  sobolevNormEstimateClosed : S.sobolevNormEstimate
  compactnessEmbeddingClosed : S.compactnessEmbedding

def SobolevEstimatesClosed {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} {F : FundamentalSolutionPackage E}
    (S : SobolevEstimatesPackage F) : Prop :=
  S.sobolevNormEstimate ∧ S.compactnessEmbedding

theorem sobolev_estimates_closed_from_evidence {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} {F : FundamentalSolutionPackage E}
    (S : SobolevEstimatesPackage F) (Ev : SobolevEstimatesEvidence S) :
    SobolevEstimatesClosed S := by
  exact And.intro Ev.sobolevNormEstimateClosed Ev.compactnessEmbeddingClosed

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse