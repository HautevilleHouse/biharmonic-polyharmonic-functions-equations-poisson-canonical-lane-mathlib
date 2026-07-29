import BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

structure BiharmonicAdmittedObject where
  domain : Type
  topology : TopologicalSpace domain
  biharmonicOperator : (domain → ℝ) → (domain → ℝ)
  poissonSource : domain → ℝ
  solution : domain → ℝ
  solutionSatisfiesBiharmonicPoisson : (biharmonicOperator solution) = poissonSource
  solutionSmoothEnough : Prop
  conclusion : solutionSatisfiesBiharmonicPoisson ∧ solutionSmoothEnough

structure AdmissibleClass where
  object : BiharmonicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BiharmonicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse