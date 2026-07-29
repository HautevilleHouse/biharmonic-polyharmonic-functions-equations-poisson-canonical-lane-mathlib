import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BiharmonicSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BiharmonicAdmittedObject where
  space : BiharmonicSpace
  smoothFunctionDefined : Prop
  biharmonicEquationHolds : Prop
  boundaryConditionMet : Prop
  conclusion : biharmonicEquationHolds ∧ boundaryConditionMet

def BiharmonicWitnessClosed (O : BiharmonicAdmittedObject) : Prop :=
  O.biharmonicEquationHolds ∧ O.boundaryConditionMet

end BiharmonicPolyharmonicFunctionsEquationsPoissonCanonicalLaneLean
end HautevilleHouse