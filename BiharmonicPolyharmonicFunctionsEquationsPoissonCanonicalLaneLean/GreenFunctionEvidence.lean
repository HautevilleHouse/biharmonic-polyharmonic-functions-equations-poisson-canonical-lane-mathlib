import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure GreenFunctionPackage
    {H : PolyharmonicOperatorPackage} 
    (B : BiharmonicEquationPackage H) 
    (P : PoissonEquationPackage H) where
  greenKernel : Type u
  reciprocity : Prop
  boundaryValueZero : Prop
  representationFormula : Prop

structure GreenFunctionEvidence
    {H : PolyharmonicOperatorPackage} 
    {B : BiharmonicEquationPackage H}
    {P : PoissonEquationPackage H}
    (G : GreenFunctionPackage B P) where
  reciprocityClosed : G.reciprocity
  boundaryValueZeroClosed : G.boundaryValueZero
  representationFormulaClosed : G.representationFormula

def GreenFunctionClosed
    {H : PolyharmonicOperatorPackage} 
    {B : BiharmonicEquationPackage H}
    {P : PoissonEquationPackage H}
    (G : GreenFunctionPackage B P) : Prop :=
  G.reciprocity ∧ G.boundaryValueZero ∧ G.representationFormula

theorem green_function_closed_from_evidence
    {H : PolyharmonicOperatorPackage} 
    {B : BiharmonicEquationPackage H}
    {P : PoissonEquationPackage H}
    (G : GreenFunctionPackage B P) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.reciprocityClosed
    (And.intro E.boundaryValueZeroClosed E.representationFormulaClosed)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse