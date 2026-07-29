import ComputationalChemistryQmMmCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ComputationalChemistryQmMmCanonicalLaneLean

structure AdmissibleClass where
  lane : QmMmAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryQmMmCanonicalLaneLean
end HautevilleHouse