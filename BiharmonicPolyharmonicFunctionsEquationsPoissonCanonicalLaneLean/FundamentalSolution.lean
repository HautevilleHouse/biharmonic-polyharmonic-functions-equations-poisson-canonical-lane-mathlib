import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure FundamentalSolutionPackage {P : BiharmonicPoissonPackage}
    (E : PolyharmonicExtensionPackage P) where
  fundamentalSolutionExists : Prop
  singularityStructure : Prop
  greenIdentities : Prop

structure FundamentalSolutionEvidence {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} (F : FundamentalSolutionPackage E) where
  fundamentalSolutionExistsClosed : F.fundamentalSolutionExists
  greenIdentitiesClosed : F.greenIdentities

def FundamentalSolutionClosed {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} (F : FundamentalSolutionPackage E) : Prop :=
  F.fundamentalSolutionExists ∧ F.greenIdentities

theorem fundamental_solution_closed_from_evidence {P : BiharmonicPoissonPackage}
    {E : PolyharmonicExtensionPackage P} (F : FundamentalSolutionPackage E)
    (Ev : FundamentalSolutionEvidence F) : FundamentalSolutionClosed F := by
  exact And.intro Ev.fundamentalSolutionExistsClosed Ev.greenIdentitiesClosed

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse