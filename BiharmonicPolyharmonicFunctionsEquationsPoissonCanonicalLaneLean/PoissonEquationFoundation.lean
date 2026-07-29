import BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean.PolyharmonicEquationPackage

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure PoissonEquationFoundation {B : BiharmonicEquationPackage}
    {P : PolyharmonicEquationPackage B} where
  sourceIntegrable : Prop
  weakSolutionExists : Prop
  regularityLifted : Prop
  uniquenessViaMaximumPrinciple : Prop
  poissonFormulaClosed : Prop

structure PoissonEquationEvidence {B : BiharmonicEquationPackage}
    {P : PolyharmonicEquationPackage B} (F : PoissonEquationFoundation P) where
  sourceIntegrableClosed : F.sourceIntegrable
  weakSolutionExistsClosed : F.weakSolutionExists
  regularityLiftedClosed : F.regularityLifted
  uniquenessViaMaximumPrincipleClosed : F.uniquenessViaMaximumPrinciple
  poissonFormulaClosedClosed : F.poissonFormulaClosed

def PoissonEquationClosed {B : BiharmonicEquationPackage}
    {P : PolyharmonicEquationPackage B} (F : PoissonEquationFoundation P) : Prop :=
  F.sourceIntegrable ∧
  F.weakSolutionExists ∧
  F.regularityLifted ∧
  F.uniquenessViaMaximumPrinciple ∧
  F.poissonFormulaClosed

theorem poisson_equation_closed_from_evidence
    {B : BiharmonicEquationPackage} {P : PolyharmonicEquationPackage B}
    (F : PoissonEquationFoundation P) (E : PoissonEquationEvidence F) :
    PoissonEquationClosed F := by
  exact And.intro E.sourceIntegrableClosed
    (And.intro E.weakSolutionExistsClosed
      (And.intro E.regularityLiftedClosed
        (And.intro E.uniquenessViaMaximumPrincipleClosed
          E.poissonFormulaClosedClosed)))

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse