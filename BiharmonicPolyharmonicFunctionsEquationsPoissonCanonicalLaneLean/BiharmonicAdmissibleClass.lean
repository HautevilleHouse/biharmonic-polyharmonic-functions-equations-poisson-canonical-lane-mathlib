import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure BiharmonicAdmissibleObject where
  domain : Type u
  functionSpace : Type v
  boundaryConditions : Prop
  polyharmonicOrder : Nat
  solutionExistence : Prop
  classicalSolution : Prop
  conclusion : classicalSolution

structure AdmissibleClass where
  object : BiharmonicAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiharmonicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse