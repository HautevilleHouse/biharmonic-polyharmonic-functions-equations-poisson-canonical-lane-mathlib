import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure BiharmonicEquationPackage (H : PolyharmonicOperatorPackage) where
  sourceTerm : H.domain → ℝ
  boundaryData : Prop
  weakSolutionExists : Prop
  regularity : Prop

structure BiharmonicEquationEvidence {H : PolyharmonicOperatorPackage} 
    (B : BiharmonicEquationPackage H) where
  boundaryDataClosed : B.boundaryData
  weakSolutionExistsClosed : B.weakSolutionExists
  regularityClosed : B.regularity

def BiharmonicEquationClosed {H : PolyharmonicOperatorPackage} 
    (B : BiharmonicEquationPackage H) : Prop :=
  B.boundaryData ∧ B.weakSolutionExists ∧ B.regularity

theorem biharmonic_equation_closed_from_evidence
    {H : PolyharmonicOperatorPackage} (B : BiharmonicEquationPackage H)
    (E : BiharmonicEquationEvidence B) : BiharmonicEquationClosed B := by
  exact And.intro E.boundaryDataClosed
    (And.intro E.weakSolutionExistsClosed E.regularityClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse