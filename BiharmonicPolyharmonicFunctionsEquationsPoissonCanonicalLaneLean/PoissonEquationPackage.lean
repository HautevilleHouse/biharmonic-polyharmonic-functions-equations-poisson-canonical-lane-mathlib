import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PoissonEquationPackage (H : PolyharmonicOperatorPackage) where
  sourceTerm : H.domain → ℝ
  fundamentalSolution : Type u
  poissonIntegral : Type v
  solutionRepresentation : Prop
  kernelRegularity : Prop

structure PoissonEquationEvidence {H : PolyharmonicOperatorPackage} 
    (P : PoissonEquationPackage H) where
  fundamentalSolutionClosed : P.fundamentalSolution
  solutionRepresentationClosed : P.solutionRepresentation
  kernelRegularityClosed : P.kernelRegularity

def PoissonEquationClosed {H : PolyharmonicOperatorPackage} 
    (P : PoissonEquationPackage H) : Prop :=
  P.fundamentalSolution ∧ P.solutionRepresentation ∧ P.kernelRegularity

theorem poisson_equation_closed_from_evidence
    {H : PolyharmonicOperatorPackage} (P : PoissonEquationPackage H)
    (E : PoissonEquationEvidence P) : PoissonEquationClosed P := by
  exact And.intro E.fundamentalSolutionClosed
    (And.intro E.solutionRepresentationClosed E.kernelRegularityClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse